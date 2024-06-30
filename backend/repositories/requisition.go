package repositories

import (
	"context"
	"errors"

	"personalfinance/generated/jet_gen/postgres/public/model"
	. "personalfinance/generated/jet_gen/postgres/public/table"
	"personalfinance/gocardless"

	. "github.com/go-jet/jet/v2/postgres"
	"github.com/google/uuid"
)

func (r *Repository) UpsertRequisition(ctx context.Context, m model.Requisition) error {
	sql, args := Requisition.
		INSERT(Requisition.AllColumns).
		MODEL(m).
		ON_CONFLICT(Requisition.ID).
		DO_NOTHING().
		Sql()

	_, err := r.conn().Exec(ctx, sql, args...)
	if err != nil {
		return err
	}
	return nil
}

func (r *Repository) UpdateRequisitionStatus(ctx context.Context, requisitionID uuid.UUID, status gocardless.RequisitionStatus) error {
	sql, args := Requisition.
		UPDATE(Requisition.Status).
		SET(status).
		WHERE(Requisition.ID.EQ(UUID(requisitionID))).
		Sql()

	_, err := r.conn().Exec(ctx, sql, args...)
	if err != nil {
		return err
	}
	return nil
}

func (r *Repository) GetRequisitionByReference(ctx context.Context, reference uuid.UUID) (resp uuid.UUID, err error) {
	sql, args := SELECT(Requisition.ID).
		FROM(Requisition).
		WHERE(Requisition.Reference.EQ(UUID(reference))).
		Sql()

	rows, _ := r.conn().Query(ctx, sql, args...)

	for rows.Next() {
		err = rows.Scan(&resp)
		return resp, err
	}
	return uuid.Nil, errors.New("record not found")
}

func (r *Repository) GetRequisitions(ctx context.Context, userID string) (resp []uuid.UUID, err error) {
	sql, args := SELECT(Requisition.ID).
		FROM(Requisition).
		WHERE(Requisition.UserID.EQ(String(userID))).
		Sql()

	rows, _ := r.conn().Query(ctx, sql, args...)

	for rows.Next() {
		var requisitionID uuid.UUID
		err = rows.Scan(&requisitionID)
		if err != nil {
			return resp, err
		}
		resp = append(resp, requisitionID)
	}
	return resp, nil
}
