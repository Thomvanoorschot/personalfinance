package repositories

import (
	"context"
	"errors"

	"personalfinance/generated/jet_gen/postgres/public/model"
	. "personalfinance/generated/jet_gen/postgres/public/table"
	"personalfinance/services/budgeting"

	. "github.com/go-jet/jet/v2/postgres"
	"github.com/google/uuid"
)

func (r *Repository) UpsertTransactionCategory(ctx context.Context, m model.TransactionCategory) error {
	sql, args := TransactionCategory.
		INSERT(TransactionCategory.AllColumns).
		MODEL(m).
		ON_CONFLICT(TransactionCategory.Slug).
		DO_NOTHING().
		Sql()

	_, err := r.conn().Exec(ctx, sql, args...)
	if err != nil {
		return err
	}
	return nil
}
func (r *Repository) SetTransactionCategories(ctx context.Context, transactionIDs []uuid.UUID, categoryID uuid.UUID) error {
	transactionIDsExpr := make([]Expression, len(transactionIDs))

	for i := range transactionIDs {
		transactionIDsExpr[i] = UUID(transactionIDs[i])
	}

	sql, args := Transaction.
		UPDATE(Transaction.TransactionCategoryID).
		SET(categoryID).
		WHERE(Transaction.ID.IN(transactionIDsExpr...)).
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

func (r *Repository) GetAllTransactionCategories(ctx context.Context) (resp budgeting.TransactionCategories, err error) {
	sql, args := SELECT(
		TransactionCategory.ID,
		transactionCategoryLabelCol(ctx),
	).
		FROM(TransactionCategory).
		Sql()

	rows, err := r.conn().Query(ctx, sql, args...)
	if err != nil {
		return resp, err
	}
	for rows.Next() {
		transactionCategory := budgeting.TransactionCategory{}
		err = rows.Scan(
			&transactionCategory.ID,
			&transactionCategory.Label,
		)
		if err != nil {
			return resp, err
		}
		resp = append(resp, transactionCategory)
	}
	return resp, nil
}

func (r *Repository) GetRepaymentsCategory(ctx context.Context) (resp uuid.UUID, err error) {
	sql, args := SELECT(
		TransactionCategory.ID,
	).
		FROM(TransactionCategory).
		WHERE(TransactionCategory.Slug.EQ(String("repayments"))).
		Sql()

	rows, err := r.conn().Query(ctx, sql, args...)
	if err != nil {
		return resp, err
	}
	for rows.Next() {
		err = rows.Scan(
			&resp,
		)
		return resp, err
	}
	return resp, errors.New("repayments category not found")
}

func transactionCategoryLabelCol(ctx context.Context) ColumnString {
	languageVal := ctx.Value("language")
	language, ok := languageVal.(string)
	if !ok {
		language = ""
	}
	switch language {
	case "en":
		return TransactionCategory.LabelEn
	case "nl":
		return TransactionCategory.LabelNl
	default:
		return TransactionCategory.LabelNl
	}
}
