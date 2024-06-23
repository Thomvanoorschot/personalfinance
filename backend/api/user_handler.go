package api

import (
	"context"

	"personalfinance/generated/proto"

	"connectrpc.com/connect"
)

type UserService interface {
	Register(context.Context, *proto.RegisterRequest) error
}

type UserHandler struct {
	service UserService
}

func NewUserHandler(service UserService) *UserHandler {
	return &UserHandler{service: service}
}

func (h *UserHandler) Register(
	ctx context.Context,
	req *connect.Request[proto.RegisterRequest],
) (*connect.Response[proto.RegisterResponse], error) {
	err := h.service.Register(ctx, req.Msg)
	if err != nil {
		return nil, err
	}
	resp := connect.NewResponse(&proto.RegisterResponse{})
	return resp, nil
}
