package banking

import (
	"context"
	"errors"
	"strconv"
	"sync"
	"time"

	"personalfinance/generated/jet_gen/postgres/public/model"
	"personalfinance/generated/proto"
	"personalfinance/gocardless"

	"github.com/google/uuid"
)

const (
	userID          = "c1900cc8-0265-4060-9b24-4e14f62048fb"
	tempRedirectURL = "personalfinance://personalfinance/transactions"
)

type Repository interface {
	BankingTx(ctx context.Context, fn func(Repository) error) (err error)

	UpsertRequisition(ctx context.Context, m model.Requisition) error
	GetAccounts(ctx context.Context, userID uuid.UUID) (resp []BankAccount, err error)
	GetRequisitions(ctx context.Context, userID uuid.UUID) (resp []uuid.UUID, err error)
	GetRequisitionByReference(ctx context.Context, reference uuid.UUID) (resp uuid.UUID, err error)
	UpdateRequisitionStatus(ctx context.Context, requisitionID uuid.UUID, status gocardless.RequisitionStatus) error
	UpsertBankingAccount(ctx context.Context, m model.Account) error
	UpsertTransactions(ctx context.Context, m []model.Transaction) error
	SetTransactionCategory(ctx context.Context, transactionID uuid.UUID, categoryID uuid.UUID) error
	RemoveTransactionCategory(ctx context.Context, transactionID uuid.UUID) error
	GetTransactions(ctx context.Context, userID uuid.UUID, limit, offset int64) (resp []model.Transaction, err error)
	GetInstitutionsByCountryCode(ctx context.Context, countryCode string) (resp []model.Institution, err error)
	GetInstitutionByID(ctx context.Context, institutionID string) (resp model.Institution, err error)
	UpsertInstitutions(ctx context.Context, m []model.Institution) error
}

type Service struct {
	repo Repository
	gcls gocardless.Client

	institutionCacheMx sync.RWMutex
	cachedInstitutions map[string]*proto.GetBanksResponse
}

func NewService(repo Repository, gcls gocardless.Client) *Service {
	return &Service{repo: repo, gcls: gcls, cachedInstitutions: make(map[string]*proto.GetBanksResponse)}
}

func (s *Service) GetBanks(ctx context.Context, req *proto.GetBanksRequest) (*proto.GetBanksResponse, error) {
	s.institutionCacheMx.RLock()
	cachedResponse, ok := s.cachedInstitutions[req.CountryCode]
	if ok {
		s.institutionCacheMx.RUnlock()
		return cachedResponse, nil
	}
	s.institutionCacheMx.RUnlock()

	institutions, err := s.gcls.GetInstitutions(req.CountryCode)
	if err != nil {
		return nil, err
	}

	s.institutionCacheMx.Lock()
	defer s.institutionCacheMx.Unlock()

	resp := &proto.GetBanksResponse{}
	var toBeStoredInstitutions []model.Institution
	for _, institution := range institutions {
		resp.Banks = append(resp.Banks, &proto.BankResponse{
			Id:      institution.Id,
			Name:    institution.Name,
			IconURL: institution.Logo,
		})
		toBeStoredInstitutions = append(toBeStoredInstitutions, model.Institution{
			ID:          institution.Id,
			Name:        institution.Name,
			IconURL:     institution.Logo,
			CountryCode: req.CountryCode,
		})
	}
	err = s.repo.UpsertInstitutions(ctx, toBeStoredInstitutions)
	if err != nil {
		return nil, err
	}
	s.cachedInstitutions[req.CountryCode] = resp
	return resp, nil
}

func (s *Service) CreateRequisition(ctx context.Context, req *proto.CreateRequisitionRequest) (*proto.CreateRequisitionResponse, error) {
	requisition, err := s.gcls.CreateRequisitionsLink(req.InstitutionId)
	if err != nil {
		return nil, err
	}
	err = s.repo.UpsertRequisition(ctx, model.Requisition{
		ID:        uuid.MustParse(requisition.Id),
		UserID:    uuid.MustParse(userID),
		Reference: uuid.MustParse(requisition.Reference),
	})
	if err != nil {
		return nil, err
	}
	resp := &proto.CreateRequisitionResponse{
		Url: requisition.Link,
	}
	return resp, nil
}
func (s *Service) HandleRequisition(ctx context.Context, req *proto.HandleRequisitionRequest) (string, error) {
	requisitionID, err := s.repo.GetRequisitionByReference(ctx, uuid.MustParse(req.RequisitionReference))
	if err != nil {
		return "", err
	}
	requisition, err := s.gcls.GetRequisition(requisitionID)
	if err != nil {
		return "", err
	}
	if requisition.Status != gocardless.RequisitionStatusLinked {
		return "", errors.New("requisition wasn't correctly linked to bank account")
	}

	var accounts []model.Account
	var transactions []model.Transaction
	for _, accountID := range requisition.Accounts {
		account, err := s.gcls.GetAccount(accountID)
		if err != nil {
			return "", err
		}
		accounts = append(accounts, model.Account{
			ID:            account.Id,
			UserID:        uuid.MustParse(userID),
			Iban:          account.Iban,
			InstitutionID: requisition.InstitutionId,
		})

		txs, err := s.gcls.GetTransactions(accountID)
		if err != nil {
			return "", err
		}
		for _, bookedTx := range txs.Transactions.Booked {
			bookingDate, _ := time.Parse(gocardless.DateFormat, bookedTx.BookingDate)
			valueDate, _ := time.Parse(gocardless.DateFormat, bookedTx.ValueDate)
			valueDateTime, _ := time.Parse(gocardless.DateTimeFormat, bookedTx.ValueDateTime)
			txAmount, err := strconv.ParseFloat(bookedTx.TransactionAmount.Amount, 64)
			if err != nil {
				return "", err
			}
			balanceAmount, err := strconv.ParseFloat(bookedTx.BalanceAfterTransaction.BalanceAmount.Amount, 64)
			if err != nil {
				return "", err
			}
			var externalID = bookedTx.TransactionId
			if bookedTx.TransactionId == "" {
				externalID = bookedTx.InternalTransactionId
			}
			remittanceInformation := gocardless.FormatRemittanceData(bookedTx.RemittanceInformationUnstructuredArray)
			transactions = append(transactions, model.Transaction{
				AccountID:                      accountID,
				ExternalID:                     externalID,
				UserID:                         uuid.MustParse(userID),
				BookingDate:                    &bookingDate,
				ValueDate:                      valueDate,
				ValueDateTime:                  &valueDateTime,
				TransactionAmount:              txAmount,
				Currency:                       bookedTx.TransactionAmount.Currency,
				CreditorName:                   &bookedTx.CreditorName,
				CreditorIban:                   &bookedTx.CreditorAccount.Iban,
				RemittanceInformation:          &remittanceInformation,
				ProprietaryBankTransactionCode: &bookedTx.ProprietaryBankTransactionCode,
				BalanceCurrency:                &bookedTx.BalanceAfterTransaction.BalanceAmount.Currency,
				BalanceType:                    &bookedTx.BalanceAfterTransaction.BalanceType,
				BalanceAfterTransaction:        &balanceAmount,
				InternalTransactionID:          &bookedTx.InternalTransactionId,
				DebtorName:                     &bookedTx.DebtorName,
				DebtorIban:                     &bookedTx.DebtorAccount.Iban,
			})
		}
	}
	err = s.repo.BankingTx(ctx, func(repo Repository) error {
		txErr := repo.UpdateRequisitionStatus(ctx, requisitionID, requisition.Status)
		if txErr != nil {
			return txErr
		}
		for _, account := range accounts {
			txErr = repo.UpsertBankingAccount(ctx, account)
			if txErr != nil {
				return txErr
			}
		}
		txErr = repo.UpsertTransactions(ctx, transactions)
		return txErr
	})
	if err != nil {
		return "", err
	}
	return tempRedirectURL, nil
}
func (s *Service) GetTransactions(ctx context.Context, req *proto.GetTransactionsRequest) (*proto.GetTransactionsResponse, error) {
	txs, err := s.repo.GetTransactions(ctx, uuid.MustParse(userID), req.Limit, req.Offset)
	if err != nil {
		return nil, err
	}
	var txsResponse []*proto.TransactionResponse
	for _, tx := range txs {
		txsResponse = append(txsResponse, ConvertToTransactionResponse(tx))
	}
	resp := &proto.GetTransactionsResponse{
		Transactions: txsResponse,
	}
	return resp, nil
}
func (s *Service) GetBankAccounts(ctx context.Context, req *proto.GetBankAccountsRequest) (*proto.GetBankAccountsResponse, error) {
	accounts, err := s.repo.GetAccounts(ctx, uuid.MustParse(userID))
	if err != nil {
		return nil, err
	}
	var accountsResponse []*proto.BankAccountResponse
	for _, account := range accounts {
		accountsResponse = append(accountsResponse, account.ConvertToResponse())
	}
	resp := &proto.GetBankAccountsResponse{
		Accounts: accountsResponse,
	}
	return resp, nil
}
