package repositories

import (
	"context"
	"errors"

	"personalfinance/generated/jet_gen/postgres/public/model"
	. "personalfinance/generated/jet_gen/postgres/public/table"
	"personalfinance/gocardless"
	"personalfinance/services/banking"

	. "github.com/go-jet/jet/v2/postgres"
	"github.com/google/uuid"
	"github.com/jackc/pgx/v5"
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

func (r *Repository) GetRequisitionWithMaxTransactionHistoryDays(ctx context.Context, reference uuid.UUID) (resp banking.RequisitionWithMaxTransactionHistoryDays, err error) {
	sql, args := SELECT(Requisition.ID, Institution.MaxTransactionHistoryDays).
		FROM(Requisition.
			INNER_JOIN(Institution, Institution.ID.EQ(Requisition.InstitutionID)),
		).
		WHERE(Requisition.Reference.EQ(UUID(reference))).
		Sql()

	rows, err := r.conn().Query(ctx, sql, args...)
	if err != nil {
		return resp, err
	}
	for rows.Next() {
		err = rows.Scan(
			&resp.RequisitionID,
			&resp.MaxTransactionHistoryDays,
		)
		return resp, err
	}
	return resp, errors.New("record not found")
}

func (r *Repository) GetRequisitionByInstitutionIDForUser(ctx context.Context, institutionID string, userID uuid.UUID) (resp model.Requisition, err error) {
	sql, args := SELECT(
		Requisition.ID,
		Requisition.UserID,
		Requisition.Reference,
		Requisition.Status,
		Requisition.EndUserAgreementID,
		Requisition.InstitutionID,
		Requisition.Link,
	).
		FROM(Requisition).
		WHERE(Requisition.InstitutionID.EQ(String(institutionID)).
			AND(Requisition.UserID.EQ(UUID(userID))),
		).
		Sql()

	rows, err := r.conn().Query(ctx, sql, args...)
	if errors.Is(err, pgx.ErrNoRows) {
		return resp, nil
	}
	for rows.Next() {
		err = rows.Scan(
			&resp.ID,
			&resp.UserID,
			&resp.Reference,
			&resp.Status,
			&resp.EndUserAgreementID,
			&resp.InstitutionID,
			&resp.Link,
		)
		return resp, err
	}
	return resp, nil
}

func (r *Repository) GetRequisitions(ctx context.Context, userID uuid.UUID) (resp []uuid.UUID, err error) {
	sql, args := SELECT(Requisition.ID).
		FROM(Requisition).
		WHERE(Requisition.UserID.EQ(UUID(userID))).
		Sql()

	rows, err := r.conn().Query(ctx, sql, args...)
	if err != nil {
		return resp, err
	}
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
