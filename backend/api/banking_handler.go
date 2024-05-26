package api

import (
	"context"

	"personalfinance/generated/proto"

	"connectrpc.com/connect"
)

type Service interface {
	GetBanks(context.Context, *proto.GetBanksRequest) (*proto.GetBanksResponse, error)
	CreateRequisition(ctx context.Context, req *proto.CreateRequisitionRequest) (*proto.CreateRequisitionResponse, error)
}

type BankingHandler struct {
	service Service
}

func NewBankingHandler(service Service) *BankingHandler {
	return &BankingHandler{service: service}
}

func (h *BankingHandler) GetBanks(
	ctx context.Context,
	req *connect.Request[proto.GetBanksRequest],
) (*connect.Response[proto.GetBanksResponse], error) {
	banks, err := h.service.GetBanks(ctx, req.Msg)
	if err != nil {
		return nil, err
	}
	resp := connect.NewResponse(banks)
	return resp, nil
}

func (h *BankingHandler) CreateRequisition(
	ctx context.Context,
	req *connect.Request[proto.CreateRequisitionRequest],
) (*connect.Response[proto.CreateRequisitionResponse], error) {
	banks, err := h.service.CreateRequisition(ctx, req.Msg)
	if err != nil {
		return nil, err
	}
	resp := connect.NewResponse(banks)
	return resp, nil
}
