package repositories

import (
	"context"

	"personalfinance/generated/jet_gen/postgres/public/model"
	. "personalfinance/generated/jet_gen/postgres/public/table"

	. "github.com/go-jet/jet/v2/postgres"
	"github.com/google/uuid"
)

func (r *Repository) UpsertTransactionCategory(ctx context.Context, m model.TransactionCategory) error {
	sql, args := TransactionCategory.
		INSERT(TransactionCategory.AllColumns).
		MODEL(m).
		ON_CONFLICT(TransactionCategory.Label).
		DO_NOTHING().
		Sql()

	_, err := r.conn().Exec(ctx, sql, args...)
	if err != nil {
		return err
	}
	return nil
}
func (r *Repository) SetTransactionCategory(ctx context.Context, transactionID uuid.UUID, categoryID uuid.UUID) error {
	sql, args := Transaction.
		UPDATE(Transaction.TransactionCategoryID).
		SET(categoryID).
		WHERE(Transaction.ID.EQ(UUID(transactionID))).
		Sql()

	_, err := r.conn().Exec(ctx, sql, args...)
	if err != nil {
		return err
	}
	return nil
}
func (r *Repository) RemoveTransactionCategory(ctx context.Context, transactionID uuid.UUID) error {
	sql, args := Transaction.
		UPDATE(Transaction.TransactionCategoryID).
		SET(NULL).
		WHERE(Transaction.ID.EQ(UUID(transactionID))).
		Sql()

	_, err := r.conn().Exec(ctx, sql, args...)
	if err != nil {
		return err
	}
	return nil
}
