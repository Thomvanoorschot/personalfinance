package repositories

import (
	"context"

	"personalfinance/generated/jet_gen/postgres/public/model"
	. "personalfinance/generated/jet_gen/postgres/public/table"

	. "github.com/go-jet/jet/v2/postgres"
	"github.com/google/uuid"
)

func (r *Repository) CreateUnverifiedUser(ctx context.Context, m model.User) (uuid.UUID, error) {
	sql, args := User.
		INSERT(User.MutableColumns).
		MODEL(m).
		RETURNING(User.ID).
		Sql()

	rows, err := r.conn().Query(ctx, sql, args...)
	if err != nil {
		return uuid.Nil, err
	}
	var ID uuid.UUID
	for rows.Next() {
		err := rows.Scan(&ID)
		return ID, err
	}
	return uuid.Nil, err
}

func (r *Repository) UpsertUser(ctx context.Context, m model.User) error {
	sql, args := User.
		INSERT(User.MutableColumns).
		MODEL(m).
		ON_CONFLICT(User.UnverifiedUniqueID).
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
