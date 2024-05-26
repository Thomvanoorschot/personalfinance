package banking

import (
	"context"
	"sync"

	"personalfinance/generated/jet_gen/postgres/public/model"
	"personalfinance/generated/proto"
	"personalfinance/gocardless"

	"github.com/google/uuid"
)

type Repository interface {
	UpsertRequisition(ctx context.Context, m model.Requisition) error
}

type Service struct {
	repo Repository
	gcls gocardless.Client

	institutionCacheMx sync.RWMutex
	cachedInstitutions map[string]*proto.GetBanksResponse
}

func NewService(repo Repository, gcls gocardless.Client) *Service {
	return &Service{repo: repo, gcls: gcls, cachedInstitutions: make(map[string]*proto.GetBanksResponse)}
}

func (s *Service) GetBanks(ctx context.Context, req *proto.GetBanksRequest) (*proto.GetBanksResponse, error) {
	s.institutionCacheMx.RLock()
	cachedResponse, ok := s.cachedInstitutions[req.CountryCode]
	if ok {
		s.institutionCacheMx.RUnlock()
		return cachedResponse, nil
	}
	s.institutionCacheMx.RUnlock()

	institutions, err := s.gcls.GetInstitutions(req.CountryCode)
	if err != nil {
		return nil, err
	}

	s.institutionCacheMx.Lock()
	defer s.institutionCacheMx.Unlock()

	resp := &proto.GetBanksResponse{}
	for _, institution := range institutions {
		resp.Banks = append(resp.Banks, &proto.BankResponse{
			Id:      institution.Id,
			Name:    institution.Name,
			IconURL: institution.Logo,
		})
	}
	s.cachedInstitutions[req.CountryCode] = resp
	return resp, nil
}

func (s *Service) CreateRequisition(ctx context.Context, req *proto.CreateRequisitionRequest) (*proto.CreateRequisitionResponse, error) {
	requisition, err := s.gcls.CreateRequisitionsLink(req.InstitutionId)
	if err != nil {
		return nil, err
	}
	err = s.repo.UpsertRequisition(ctx, model.Requisition{
		ID:     uuid.MustParse(requisition.Id),
		UserID: uuid.MustParse("8e1f26e2-777c-4e34-825e-510e6a00ddc9"),
	})
	if err != nil {
		return nil, err
	}
	resp := &proto.CreateRequisitionResponse{
		Url: requisition.Link,
	}
	return resp, nil
}
