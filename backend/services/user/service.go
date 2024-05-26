package user

import (
	"context"

	"personalfinance/generated/jet_gen/postgres/public/model"
)

type Repository interface {
	UpsertUser(ctx context.Context, m model.User) error
}

type Service struct {
	repo Repository
}

func NewService(repo Repository) *Service {
	return &Service{repo: repo}
}

func (s *Service) Register(ctx context.Context) error {
	err := s.repo.UpsertUser(ctx, model.User{Email: "thomvanoorschot@hotmail.com"})
	if err != nil {
		return err
	}
	return nil
}
