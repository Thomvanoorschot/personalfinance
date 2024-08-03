package banking

import (
	"context"
	"errors"
	"fmt"
	"strconv"
	"strings"
	"sync"
	"time"

	"personalfinance/generated/jet_gen/postgres/public/model"
	"personalfinance/generated/proto"
	"personalfinance/gocardless"
	"personalfinance/utils/timeutils"

	"github.com/google/uuid"
)

const (
	userID          = "c1900cc8-0265-4060-9b24-4e14f62048fb"
	tempRedirectURL = "personalfinance://personalfinance/transactions"
)

type Repository interface {
	BankingTx(ctx context.Context, fn func(Repository) error) (err error)

	UpsertRequisition(ctx context.Context, m model.Requisition) error
	GetAccounts(ctx context.Context, userID uuid.UUID) (resp BankAccounts, err error)
	GetRequisitions(ctx context.Context, userID uuid.UUID) (resp []uuid.UUID, err error)
	GetRequisitionWithMaxTransactionHistoryDays(ctx context.Context, reference uuid.UUID) (resp RequisitionWithMaxTransactionHistoryDays, err error)
	UpdateRequisitionStatus(ctx context.Context, requisitionID uuid.UUID, status gocardless.RequisitionStatus) error
	UpsertBankingAccount(ctx context.Context, m model.Account) error
	UpsertTransactions(ctx context.Context, m []model.Transaction) error
	SetTransactionCategories(ctx context.Context, transactionIDs []uuid.UUID, categoryID uuid.UUID) error
	RemoveTransactionCategory(ctx context.Context, transactionID uuid.UUID) error
	GetInstitutionsByCountryCode(ctx context.Context, countryCode string) (resp []model.Institution, err error)
	GetInstitutionByID(ctx context.Context, institutionID string) (resp model.Institution, err error)
	UpsertInstitutions(ctx context.Context, m []model.Institution) error
	GetRequisitionByInstitutionIDForUser(ctx context.Context, institutionID string, userID uuid.UUID) (resp model.Requisition, err error)
	GetBalancesPerDay(ctx context.Context, userID uuid.UUID, start, end time.Time) (resp BalancesPerDay, err error)
	GetMostRecentTransaction(ctx context.Context, userID uuid.UUID, date time.Time) (resp BalancePerDay, err error)
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
		transactionTotalDays, err := strconv.ParseInt(institution.TransactionTotalDays, 10, 16)
		if err != nil {
			return nil, err
		}
		toBeStoredInstitutions = append(toBeStoredInstitutions, model.Institution{
			ID:                        institution.Id,
			Name:                      institution.Name,
			IconURL:                   institution.Logo,
			CountryCode:               req.CountryCode,
			MaxTransactionHistoryDays: int16(transactionTotalDays),
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
	previousRequisition, err := s.repo.GetRequisitionByInstitutionIDForUser(ctx, req.InstitutionId, uuid.MustParse(userID))
	if err != nil {
		return nil, err
	}

	if previousRequisition.ID != uuid.Nil &&
		previousRequisition.Status != nil &&
		gocardless.RequisitionStatus(*previousRequisition.Status) == gocardless.RequisitionStatusCreated {
		return &proto.CreateRequisitionResponse{
			Url: previousRequisition.Link,
		}, nil
	}

	institution, err := s.repo.GetInstitutionByID(ctx, req.InstitutionId)
	if err != nil {
		return nil, err
	}

	eua, err := s.gcls.CreateEndUserAgreement(req.InstitutionId, institution.MaxTransactionHistoryDays)
	if err != nil {
		return nil, err
	}
	requisition, err := s.gcls.CreateRequisitionsLink(req.InstitutionId, eua.Id)
	if err != nil {
		return nil, err
	}
	statusCreated := string(gocardless.RequisitionStatusCreated)
	err = s.repo.UpsertRequisition(ctx, model.Requisition{
		ID:                 uuid.MustParse(requisition.Id),
		UserID:             uuid.MustParse(userID),
		Reference:          uuid.MustParse(requisition.Reference),
		InstitutionID:      req.InstitutionId,
		Link:               requisition.Link,
		Status:             &statusCreated,
		EndUserAgreementID: eua.Id,
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
	requisitionWithMaxTxDays, err := s.repo.GetRequisitionWithMaxTransactionHistoryDays(ctx, uuid.MustParse(req.RequisitionReference))
	if err != nil {
		return "", err
	}
	requisition, err := s.gcls.GetRequisition(requisitionWithMaxTxDays.RequisitionID)
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
			OwnerName:     account.OwnerName,
		})

		txs, err := s.gcls.GetTransactions(accountID, requisitionWithMaxTxDays.MaxTransactionHistoryDays)
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
			externalID := bookedTx.TransactionId
			if bookedTx.TransactionId == "" {
				externalID = bookedTx.InternalTransactionId
			}
			remittanceInformation := gocardless.FormatRemittanceData(bookedTx.RemittanceInformationUnstructuredArray)

			if bookedTx.CreditorAccount.Iban == "" && bookedTx.DebtorAccount.Iban == "" && len(bookedTx.RemittanceInformationUnstructuredArray) > 1 {
				if strings.Contains(bookedTx.RemittanceInformationUnstructuredArray[0], "Apple Pay") {
					bookedTx.CreditorName = bookedTx.RemittanceInformationUnstructuredArray[1]
				} else if strings.Contains(bookedTx.RemittanceInformationUnstructuredArray[0], "ABN AMRO") {
					bookedTx.CreditorName = bookedTx.RemittanceInformationUnstructuredArray[0]
				} else {
					if txAmount < 0 {
						bookedTx.CreditorName = bookedTx.RemittanceInformationUnstructuredArray[0]
					} else {
						bookedTx.DebtorName = bookedTx.RemittanceInformationUnstructuredArray[0]
					}
				}
			}

			var creditorName *string
			if bookedTx.CreditorName != "" {
				creditorName = &bookedTx.CreditorName
			}
			var creditorIBAN *string
			if bookedTx.CreditorAccount.Iban != "" {
				creditorIBAN = &bookedTx.CreditorAccount.Iban
			}
			var debtorName *string
			if bookedTx.DebtorName != "" {
				debtorName = &bookedTx.DebtorName
			}
			var debtorIBAN *string
			if bookedTx.DebtorAccount.Iban != "" {
				debtorIBAN = &bookedTx.DebtorAccount.Iban
			}

			transactions = append(transactions, model.Transaction{
				AccountID:                      accountID,
				ExternalID:                     externalID,
				UserID:                         uuid.MustParse(userID),
				BookingDate:                    &bookingDate,
				ValueDate:                      valueDate,
				ValueDateTime:                  &valueDateTime,
				TransactionAmount:              txAmount,
				Currency:                       bookedTx.TransactionAmount.Currency,
				CreditorName:                   creditorName,
				CreditorIban:                   creditorIBAN,
				DebtorName:                     debtorName,
				DebtorIban:                     debtorIBAN,
				RemittanceInformation:          &remittanceInformation,
				ProprietaryBankTransactionCode: &bookedTx.ProprietaryBankTransactionCode,
				BalanceCurrency:                &bookedTx.BalanceAfterTransaction.BalanceAmount.Currency,
				BalanceType:                    &bookedTx.BalanceAfterTransaction.BalanceType,
				BalanceAfterTransaction:        &balanceAmount,
				InternalTransactionID:          &bookedTx.InternalTransactionId,
			})
		}
	}
	err = s.repo.BankingTx(ctx, func(repo Repository) error {
		txErr := repo.UpdateRequisitionStatus(ctx, requisitionWithMaxTxDays.RequisitionID, requisition.Status)
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

func (s *Service) GetBankAccounts(ctx context.Context, _ *proto.GetBankAccountsRequest) (*proto.GetBankAccountsResponse, error) {
	accounts, err := s.repo.GetAccounts(ctx, uuid.MustParse(userID))
	if err != nil {
		return nil, err
	}
	return accounts.ConvertToResponse(), nil
}

func (s *Service) GetBalancesPerDay(ctx context.Context, req *proto.GetBalancesPerDayRequest) (response *proto.GetBalancesPerDayResponse, err error) {
	startTime := timeutils.StripTime(req.Start.AsTime())
	endTime := timeutils.StripTime(req.End.AsTime())
	if startTime.After(endTime) {
		fmt.Println("Start date must be before end date")
		return
	}
	var txBalancesPerDayCursor int
	txBalancesPerDay, err := s.repo.GetBalancesPerDay(ctx, uuid.MustParse(userID), startTime, endTime)
	if err != nil {
		return nil, err
	}
	if len(txBalancesPerDay) == 0 {
		mostRecentBalance, err := s.repo.GetMostRecentTransaction(ctx, uuid.MustParse(userID), startTime)
		if err != nil {
			return nil, err
		}
		return &proto.GetBalancesPerDayResponse{
			Balances: []*proto.BalancePerDay{
				mostRecentBalance.ConvertToResponse(),
			},
		}, nil
	}
	amountOfDays := timeutils.AmountOfDays(startTime, endTime)
	fullBalancesPerDay := make(BalancesPerDay, amountOfDays)

	for amountOfDaysCursor := range amountOfDays {
		nextDay := startTime.AddDate(0, 0, amountOfDaysCursor)
		for len(txBalancesPerDay) > txBalancesPerDayCursor+1 &&
			(nextDay.Equal(txBalancesPerDay[txBalancesPerDayCursor+1].Date) || nextDay.After(txBalancesPerDay[txBalancesPerDayCursor+1].Date)) {
			txBalancesPerDayCursor++
		}
		if fullBalancesPerDay[amountOfDaysCursor].Date.IsZero() {
			fullBalancesPerDay[amountOfDaysCursor] = BalancePerDay{
				Date:    startTime.AddDate(0, 0, amountOfDaysCursor),
				Balance: txBalancesPerDay[txBalancesPerDayCursor].Balance,
			}
			// TODO Does nothing
			// TODO Checkout 1719273600
		} else if fullBalancesPerDay[amountOfDaysCursor].Balance < txBalancesPerDay[txBalancesPerDayCursor].Balance {
			fullBalancesPerDay[amountOfDaysCursor] = BalancePerDay{
				Date:    startTime.AddDate(0, 0, amountOfDaysCursor),
				Balance: txBalancesPerDay[txBalancesPerDayCursor].Balance,
			}
		}
	}

	return fullBalancesPerDay.ConvertToResponse(), nil
}
