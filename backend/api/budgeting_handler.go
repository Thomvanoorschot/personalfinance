package api

import (
	"context"

	"personalfinance/generated/proto"
)

type BudgetingService interface {
	GetTransactions(ctx context.Context, req *proto.GetTransactionsRequest) (*proto.GetTransactionsResponse, error)
	GetUncategorizedTransaction(ctx context.Context, req *proto.GetUncategorizedTransactionRequest) (*proto.GetUncategorizedTransactionResponse, error)
	CategorizeTransactionAndContinue(ctx context.Context, req *proto.CategorizeTransactionAndContinueRequest) (*proto.GetUncategorizedTransactionResponse, error)
	GetTransactionCategories(context.Context, *proto.GetTransactionCategoriesRequest) (*proto.GetTransactionCategoriesResponse, error)
}

type BudgetingHandler struct {
	service BudgetingService
	proto.UnimplementedBudgetingServiceServer
}

func NewBudgetingHandler(service BudgetingService) *BudgetingHandler {
	return &BudgetingHandler{service: service}
}

func (h *BudgetingHandler) GetTransactions(
	ctx context.Context,
	req *proto.GetTransactionsRequest,
) (*proto.GetTransactionsResponse, error) {
	resp, err := h.service.GetTransactions(ctx, req)
	if err != nil {
		return nil, err
	}
	return resp, nil
}

func (h *BudgetingHandler) GetUncategorizedTransaction(ctx context.Context, req *proto.GetUncategorizedTransactionRequest) (*proto.GetUncategorizedTransactionResponse, error) {
	resp, err := h.service.GetUncategorizedTransaction(ctx, req)
	if err != nil {
		return nil, err
	}
	return resp, nil
}

func (h *BudgetingHandler) CategorizeTransactionAndContinue(ctx context.Context, req *proto.CategorizeTransactionAndContinueRequest) (*proto.GetUncategorizedTransactionResponse, error) {
	resp, err := h.service.CategorizeTransactionAndContinue(ctx, req)
	if err != nil {
		return nil, err
	}
	return resp, nil
}

func (h *BudgetingHandler) GetTransactionCategories(ctx context.Context, req *proto.GetTransactionCategoriesRequest) (*proto.GetTransactionCategoriesResponse, error) {
	resp, err := h.service.GetTransactionCategories(ctx, req)
	if err != nil {
		return nil, err
	}
	return resp, nil
}
