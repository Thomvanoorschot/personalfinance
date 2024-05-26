package repositories

import (
	"context"

	"personalfinance/generated/jet_gen/postgres/public/model"
	. "personalfinance/generated/jet_gen/postgres/public/table"
)

func (r *Repository) UpsertBankingAccount(ctx context.Context, m model.Account) error {
	sql, args := User.
		INSERT(Account.MutableColumns).
		MODEL(m).
		ON_CONFLICT(Account.ID).
		DO_NOTHING().
		Sql()

	_, err := r.conn().Exec(ctx, sql, args...)
	if err != nil {
		return err
	}
	return nil
}
