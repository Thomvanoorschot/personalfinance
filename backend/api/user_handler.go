package api

import (
	"context"

	"personalfinance/generated/proto"
)

type UserService interface {
	RegisterUnverifiedUser(context.Context, *proto.RegisterUnverifiedUserRequest) (*proto.RegisterUnverifiedUserResponse, error)
	LinkUser(context.Context, *proto.LinkUserRequest) error
}

type UserHandler struct {
	service UserService
	proto.UnimplementedUserServiceServer
}

func NewUserHandler(service UserService) *UserHandler {
	return &UserHandler{service: service}
}

func (h *UserHandler) RegisterUnverifiedUser(
	ctx context.Context,
	req *proto.RegisterUnverifiedUserRequest,
) (*proto.RegisterUnverifiedUserResponse, error) {
	resp, err := h.service.RegisterUnverifiedUser(ctx, req)
	if err != nil {
		return nil, err
	}
	return resp, nil
}
func (h *UserHandler) LinkUser(
	ctx context.Context,
	req *proto.LinkUserRequest,
) (*proto.LinkUserResponse, error) {
	err := h.service.LinkUser(ctx, req)
	if err != nil {
		return nil, err
	}
	return &proto.LinkUserResponse{}, nil
}
