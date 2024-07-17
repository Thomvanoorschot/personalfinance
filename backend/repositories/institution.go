package repositories

import (
	"context"

	"personalfinance/generated/jet_gen/postgres/public/model"
	. "personalfinance/generated/jet_gen/postgres/public/table"

	. "github.com/go-jet/jet/v2/postgres"
)

func (r *Repository) UpsertInstitutions(ctx context.Context, m []model.Institution) error {
	sql, args := Institution.
		INSERT(Institution.AllColumns).
		MODELS(m).
		ON_CONFLICT(Institution.ID).
		DO_NOTHING().
		Sql()

	_, err := r.conn().Exec(ctx, sql, args...)
	if err != nil {
		return err
	}
	return nil
}
func (r *Repository) GetInstitutionByID(ctx context.Context, institutionID string) (resp model.Institution, err error) {
	sql, args := SELECT(
		Institution.ID,
		Institution.Name,
		Institution.IconURL,
		Institution.CountryCode,
		Institution.MaxTransactionHistoryDays,
	).
		FROM(Institution).
		WHERE(Institution.ID.EQ(String(institutionID))).
		Sql()

	rows, err := r.conn().Query(ctx, sql, args...)
	if err != nil {
		return resp, err
	}
	for rows.Next() {
		err = rows.Scan(
			&resp.ID,
			&resp.Name,
			&resp.IconURL,
			&resp.CountryCode,
			&resp.MaxTransactionHistoryDays,
		)
		return resp, err
	}
	return resp, nil
}
func (r *Repository) GetInstitutionsByCountryCode(ctx context.Context, countryCode string) (resp []model.Institution, err error) {
	sql, args := SELECT(
		Institution.ID,
		Institution.Name,
		Institution.IconURL,
		Institution.CountryCode,
	).
		FROM(Institution).
		WHERE(Institution.CountryCode.EQ(String(countryCode))).
		Sql()

	rows, err := r.conn().Query(ctx, sql, args...)
	if err != nil {
		return resp, err
	}
	for rows.Next() {
		institutionRow := model.Institution{}
		err = rows.Scan(
			&institutionRow.ID,
			&institutionRow.Name,
			&institutionRow.IconURL,
			&institutionRow.CountryCode,
		)
		if err != nil {
			return resp, err
		}
		resp = append(resp, institutionRow)
	}
	return resp, nil
}
