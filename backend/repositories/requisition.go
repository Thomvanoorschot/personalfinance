package repositories

import (
	"context"

	"personalfinance/generated/jet_gen/postgres/public/model"
	. "personalfinance/generated/jet_gen/postgres/public/table"
)

func (r *Repository) UpsertRequisition(ctx context.Context, m model.Requisition) error {
	sql, args := Requisition.
		INSERT(Requisition.MutableColumns).
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
