package api

import (
	"context"

	"personalfinance/generated/proto"
)

type UserService interface {
	Register(context.Context, *proto.RegisterRequest) error
}

type UserHandler struct {
	service UserService
	proto.UnimplementedUserServiceServer
}

func NewUserHandler(service UserService) *UserHandler {
	return &UserHandler{service: service}
}

func (h *UserHandler) Register(
	ctx context.Context,
	req *proto.RegisterRequest,
) (*proto.RegisterResponse, error) {
	err := h.service.Register(ctx, req)
	if err != nil {
		return nil, err
	}
	return nil, nil
}
