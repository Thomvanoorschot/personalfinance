package repositories

import (
	"context"

	"personalfinance/generated/jet_gen/postgres/public/model"
	. "personalfinance/generated/jet_gen/postgres/public/table"

	. "github.com/go-jet/jet/v2/postgres"
)

func (r *Repository) UpsertUser(ctx context.Context, m model.User) error {
	sql, args := User.
		INSERT(User.MutableColumns).
		MODEL(m).
		ON_CONFLICT(User.ID).
		DO_UPDATE(
			SET(
				User.Email.SET(User.EXCLUDED.Email),
			),
		).
		Sql()

	_, err := r.conn().Exec(ctx, sql, args...)
	if err != nil {
		return err
	}
	return nil
}
