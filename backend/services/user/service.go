package user

import (
	"context"

	"personalfinance/generated/jet_gen/postgres/public/model"
	"personalfinance/generated/proto"

	"github.com/google/uuid"
)

type Repository interface {
	CreateUnverifiedUser(ctx context.Context, m model.User) (uuid.UUID, error)
	UpsertUser(ctx context.Context, m model.User) error
}

type Service struct {
	repo Repository
}

func NewService(repo Repository) *Service {
	return &Service{repo: repo}
}

func (s *Service) RegisterUnverifiedUser(ctx context.Context, req *proto.RegisterUnverifiedUserRequest) (*proto.RegisterUnverifiedUserResponse, error) {
	userID, err := s.repo.CreateUnverifiedUser(ctx, model.User{UnverifiedUniqueID: req.UniqueDeviceId})
	if err != nil {
		return nil, err
	}
	return &proto.RegisterUnverifiedUserResponse{UserId: userID.String()}, nil
}
func (s *Service) LinkUser(ctx context.Context, req *proto.LinkUserRequest) error {
	err := s.repo.UpsertUser(ctx, model.User{})
	if err != nil {
		return err
	}
	return nil
}
