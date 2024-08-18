package budgeting

import (
	"context"
	"strings"
	"sync"
	"time"

	"personalfinance/generated/proto"

	"github.com/google/uuid"
)

const (
	userID = "c1900cc8-0265-4060-9b24-4e14f62048fb"
)

type Repository interface {
	BudgetingTx(ctx context.Context, fn func(Repository) error) (err error)

	GetTransactions(ctx context.Context, userID uuid.UUID, limit, offset int64) (resp Transactions, totalCount int64, err error)
	GetUncategorizedTransaction(ctx context.Context, userID uuid.UUID) (resp UncategorizedTransaction, err error)
	GetAllTransactionCategoryGroups(ctx context.Context) (resp TransactionCategoryGroups, err error)
	SetTransactionCategories(ctx context.Context, transactionIDs []uuid.UUID, categoryID uuid.UUID) error
	GetClassifiedTransactions(ctx context.Context, userID uuid.UUID, start, end time.Time) (resp CategorizedTransactionResults, err error)
	GetTransactionByID(ctx context.Context, userID uuid.UUID, transactionID uuid.UUID) (resp Transaction, err error)
	GetInAndOutgoingTransactionAmountsPerPeriod(ctx context.Context, userID uuid.UUID, period string, limit, offset int64) (resp InAndOutgoingTransactionAmountsPerPeriods, err error)
	AssociateTransaction(ctx context.Context, userID, transactionID, associatedTransactionID uuid.UUID) error
	GetMinusTransactionsAroundDate(ctx context.Context, userID uuid.UUID, date time.Time, nearestFutureLimit, nearestPastLimit int64) (BareTransactions, error)
	GetRepaymentsCategory(ctx context.Context) (resp uuid.UUID, err error)
}

type Service struct {
	repo Repository

	repaymentsCategoryMx sync.RWMutex
	repaymentsID         uuid.UUID
}

func NewService(repo Repository) *Service {
	return &Service{repo: repo}
}

func (s *Service) GetTransactionByID(ctx context.Context, req *proto.GetTransactionByIdRequest) (*proto.TransactionResponse, error) {
	tx, err := s.repo.GetTransactionByID(ctx, uuid.MustParse(userID), uuid.MustParse(req.TransactionId))
	if err != nil {
		return nil, err
	}

	return tx.ConvertToResponse(), nil
}

func (s *Service) GetTransactions(ctx context.Context, req *proto.GetTransactionsRequest) (*proto.GetTransactionsResponse, error) {
	txs, totalCount, err := s.repo.GetTransactions(ctx, uuid.MustParse(userID), req.Limit, req.Offset)
	if err != nil {
		return nil, err
	}

	return txs.ConvertToResponse(totalCount), nil
}

func (s *Service) GetUncategorizedTransaction(ctx context.Context, req *proto.GetUncategorizedTransactionRequest) (*proto.GetUncategorizedTransactionResponse, error) {
	tx, err := s.repo.GetUncategorizedTransaction(ctx, uuid.MustParse(userID))
	if err != nil {
		return nil, err
	}

	PreProcessTransaction(&tx)

	return tx.ConvertToResponse(), nil
}

func (s *Service) CategorizeTransactionAndContinue(ctx context.Context, req *proto.CategorizeTransactionAndContinueRequest) (*proto.GetUncategorizedTransactionResponse, error) {
	transactionIDs := make([]uuid.UUID, len(req.TransactionIds))
	for i := range req.TransactionIds {
		transactionIDs[i] = uuid.MustParse(req.TransactionIds[i])
	}

	err := s.repo.BudgetingTx(ctx, func(repo Repository) error {
		categoryID, _ := uuid.Parse(req.CategoryId)
		if categoryID == uuid.Nil {
			if s.repaymentsID == uuid.Nil {
				repaymentsCategory, txErr := repo.GetRepaymentsCategory(ctx)
				if txErr != nil {
					return txErr
				}
				s.repaymentsCategoryMx.Lock()
				defer s.repaymentsCategoryMx.Unlock()
				s.repaymentsID = repaymentsCategory
			}
			categoryID = s.repaymentsID
		}
		txErr := repo.SetTransactionCategories(ctx, transactionIDs, categoryID)
		if txErr != nil {
			return txErr
		}

		associatedId, _ := uuid.Parse(req.AssociatedTransactionId)
		if associatedId != uuid.Nil {
			return repo.AssociateTransaction(ctx, uuid.MustParse(userID), uuid.MustParse(req.PrimaryTransactionId), associatedId)
		}
		return nil
	})
	if err != nil {
		return nil, err
	}

	return s.GetUncategorizedTransaction(ctx, &proto.GetUncategorizedTransactionRequest{})
}

func (s *Service) GetTransactionCategoryGroups(ctx context.Context, _ *proto.GetTransactionCategoryGroupsRequest) (*proto.GetTransactionCategoryGroupsResponse, error) {
	transactionCategories, err := s.repo.GetAllTransactionCategoryGroups(ctx)
	if err != nil {
		return nil, err
	}
	return transactionCategories.ConvertToResponse(), nil
}

func (s *Service) GetCategorizedTransactionResults(ctx context.Context, req *proto.GetCategorizedTransactionResultsRequest) (*proto.GetCategorizedTransactionResultsResponse, error) {
	classifiedTransactions, err := s.repo.GetClassifiedTransactions(ctx, uuid.MustParse(userID), req.Start.AsTime(), req.End.AsTime())
	if err != nil {
		return nil, err
	}
	return classifiedTransactions.ConvertToResponse(), nil
}

func (s *Service) GetInAndOutgoingTransactionAmountsPerPeriod(ctx context.Context, req *proto.GetInAndOutgoingTransactionAmountsPerPeriodRequest) (*proto.GetInAndOutgoingTransactionAmountsPerPeriodResponse, error) {
	inAndOutgoingTransactionAmountsPerPeriod, err := s.repo.GetInAndOutgoingTransactionAmountsPerPeriod(ctx, uuid.MustParse(userID), req.Period.String(), req.Limit, req.Offset)
	if err != nil {
		return nil, err
	}
	return inAndOutgoingTransactionAmountsPerPeriod.ConvertToResponse(), nil
}

func (s *Service) AssociateTransaction(ctx context.Context, req *proto.AssociateTransactionRequest) (*proto.AssociateTransactionResponse, error) {
	err := s.repo.AssociateTransaction(ctx, uuid.MustParse(userID), uuid.MustParse(req.TransactionId), uuid.MustParse(req.AssociatedTransactionId))
	if err != nil {
		return nil, err
	}
	return &proto.AssociateTransactionResponse{}, nil
}

func (s *Service) GetMinusTransactionsAroundDate(ctx context.Context, req *proto.GetMinusTransactionsAroundDateRequest) (*proto.GetMinusTransactionsAroundDateResponse, error) {
	txs, err := s.repo.GetMinusTransactionsAroundDate(ctx, uuid.MustParse(userID), req.Date.AsTime(), req.NearestFutureLimit, req.NearestPastLimit)
	if err != nil {
		return nil, err
	}
	return txs.ConvertToResponse(), nil
}

func PreProcessTransaction(tx *UncategorizedTransaction) {
	hasCreditorName := tx.CreditorName != nil
	hasDebtorName := tx.DebtorName != nil
	if hasCreditorName && strings.Contains(*tx.CreditorName, "PayPal") {
		HandlePayPalTx(tx)
		return
	}
	if hasDebtorName && strings.Contains(*tx.DebtorName, "TIKKIE") {
		HandleTikkie(tx)
		return
	}
}

func HandlePayPalTx(tx *UncategorizedTransaction) {
	var newList MatchingUncategorizedTransactions
	for _, matchingTx := range tx.MatchingTransactions {
		if tx.TransactionAmount == matchingTx.TransactionAmount {
			newList = append(newList, matchingTx)
		}
	}
	tx.MatchingTransactions = newList
}

func HandleTikkie(tx *UncategorizedTransaction) {
	tx.MatchingTransactions = []MatchingUncategorizedTransaction{}
}
