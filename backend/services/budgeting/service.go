package budgeting

import (
	"context"
	"strings"

	"personalfinance/generated/proto"

	"github.com/google/uuid"
)

const (
	userID = "c1900cc8-0265-4060-9b24-4e14f62048fb"
)

type Repository interface {
	GetTransactions(ctx context.Context, userID uuid.UUID, limit, offset int64) (resp Transactions, totalCount int64, err error)
	GetUncategorizedTransaction(ctx context.Context, userID uuid.UUID) (resp UncategorizedTransaction, err error)
	GetAllTransactionCategoryGroups(ctx context.Context) (resp TransactionCategoryGroups, err error)
	SetTransactionCategories(ctx context.Context, transactionIDs []uuid.UUID, categoryID uuid.UUID) error
}

type Service struct {
	repo Repository
}

func NewService(repo Repository) *Service {
	return &Service{repo: repo}
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

	err := s.repo.SetTransactionCategories(ctx, transactionIDs, uuid.MustParse(req.CategoryId))
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

func PreProcessTransaction(tx *UncategorizedTransaction) {
	hasCreditorName := tx.CreditorName != nil
	if hasCreditorName && strings.Contains(*tx.CreditorName, "PayPal") {
		HandlePayPalTx(tx)
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
