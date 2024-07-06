package api

import (
	"context"
	"fmt"

	"personalfinance/generated/proto"

	"google.golang.org/grpc"
	"google.golang.org/grpc/metadata"
)

type BankingService interface {
	GetBanks(context.Context, *proto.GetBanksRequest) (*proto.GetBanksResponse, error)
	CreateRequisition(ctx context.Context, req *proto.CreateRequisitionRequest) (*proto.CreateRequisitionResponse, error)
	HandleRequisition(ctx context.Context, req *proto.HandleRequisitionRequest) (string, error)
	GetTransactions(ctx context.Context, req *proto.GetTransactionsRequest) (*proto.GetTransactionsResponse, error)
}

type BankingHandler struct {
	service BankingService
	proto.UnimplementedBankingServiceServer
}

func NewBankingHandler(service BankingService) *BankingHandler {
	return &BankingHandler{service: service}
}

func (h *BankingHandler) GetBanks(
	ctx context.Context,
	req *proto.GetBanksRequest,
) (*proto.GetBanksResponse, error) {
	resp, err := h.service.GetBanks(ctx, req)
	if err != nil {
		return nil, err
	}
	return resp, nil
}

func (h *BankingHandler) CreateRequisition(
	ctx context.Context,
	req *proto.CreateRequisitionRequest,
) (*proto.CreateRequisitionResponse, error) {
	resp, err := h.service.CreateRequisition(ctx, req)
	if err != nil {
		return nil, err
	}
	return resp, nil
}
func (h *BankingHandler) GetTransactions(
	ctx context.Context,
	req *proto.GetTransactionsRequest,
) (*proto.GetTransactionsResponse, error) {
	resp, err := h.service.GetTransactions(ctx, req)
	fmt.Printf("%d %d\n", req.Limit, req.Offset)
	if err != nil {
		return nil, err
	}
	return resp, nil
}

func (h *BankingHandler) HandleRequisition(
	ctx context.Context,
	req *proto.HandleRequisitionRequest,
) (*proto.HandleRequisitionResponse, error) {
	redirectURL, err := h.service.HandleRequisition(ctx, req)
	if err != nil {
		return nil, err
	}
	header := metadata.Pairs("Location", redirectURL)
	err = grpc.SendHeader(ctx, header)
	if err != nil {
		return nil, err
	}
	return &proto.HandleRequisitionResponse{}, nil
}
