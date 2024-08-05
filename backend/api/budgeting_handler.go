package api

import (
	"context"

	"personalfinance/generated/proto"
)

type BudgetingService interface {
	GetTransactionByID(ctx context.Context, req *proto.GetTransactionByIdRequest) (*proto.TransactionResponse, error)
	GetTransactions(ctx context.Context, req *proto.GetTransactionsRequest) (*proto.GetTransactionsResponse, error)
	GetUncategorizedTransaction(ctx context.Context, req *proto.GetUncategorizedTransactionRequest) (*proto.GetUncategorizedTransactionResponse, error)
	CategorizeTransactionAndContinue(ctx context.Context, req *proto.CategorizeTransactionAndContinueRequest) (*proto.GetUncategorizedTransactionResponse, error)
	GetTransactionCategoryGroups(context.Context, *proto.GetTransactionCategoryGroupsRequest) (*proto.GetTransactionCategoryGroupsResponse, error)
	GetCategorizedTransactionResults(context.Context, *proto.GetCategorizedTransactionResultsRequest) (*proto.GetCategorizedTransactionResultsResponse, error)
	GetInAndOutgoingTransactionAmountsPerPeriod(context.Context, *proto.GetInAndOutgoingTransactionAmountsPerPeriodRequest) (*proto.GetInAndOutgoingTransactionAmountsPerPeriodResponse, error)
}

type BudgetingHandler struct {
	service BudgetingService
	proto.UnimplementedBudgetingServiceServer
}

func NewBudgetingHandler(service BudgetingService) *BudgetingHandler {
	return &BudgetingHandler{service: service}
}

func (h *BudgetingHandler) GetTransactionById(
	ctx context.Context,
	req *proto.GetTransactionByIdRequest,
) (*proto.TransactionResponse, error) {
	resp, err := h.service.GetTransactionByID(ctx, req)
	if err != nil {
		return nil, err
	}
	return resp, nil
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

func (h *BudgetingHandler) GetTransactionCategoryGroups(ctx context.Context, req *proto.GetTransactionCategoryGroupsRequest) (*proto.GetTransactionCategoryGroupsResponse, error) {
	resp, err := h.service.GetTransactionCategoryGroups(ctx, req)
	if err != nil {
		return nil, err
	}
	return resp, nil
}

func (h *BudgetingHandler) GetCategorizedTransactionResults(ctx context.Context, req *proto.GetCategorizedTransactionResultsRequest) (*proto.GetCategorizedTransactionResultsResponse, error) {
	resp, err := h.service.GetCategorizedTransactionResults(ctx, req)
	if err != nil {
		return nil, err
	}
	return resp, nil
}
func (h *BudgetingHandler) GetInAndOutgoingTransactionAmountsPerPeriod(ctx context.Context, req *proto.GetInAndOutgoingTransactionAmountsPerPeriodRequest) (*proto.GetInAndOutgoingTransactionAmountsPerPeriodResponse, error) {
	resp, err := h.service.GetInAndOutgoingTransactionAmountsPerPeriod(ctx, req)
	if err != nil {
		return nil, err
	}
	return resp, nil
}
