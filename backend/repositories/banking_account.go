package repositories

import (
	"context"

	"personalfinance/generated/jet_gen/postgres/public/model"
	. "personalfinance/generated/jet_gen/postgres/public/table"
	"personalfinance/services/banking"

	. "github.com/go-jet/jet/v2/postgres"
	"github.com/google/uuid"
)

func (r *Repository) UpsertBankingAccount(ctx context.Context, m model.Account) error {
	sql, args := Account.
		INSERT(Account.AllColumns).
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
func (r *Repository) GetAccounts(ctx context.Context, userID uuid.UUID) (resp banking.BankAccounts, err error) {
	sql, args := SELECT(Account.ID, Account.Iban, Institution.Name, Institution.IconURL).
		FROM(Account.INNER_JOIN(Institution, Institution.ID.EQ(Account.InstitutionID))).
		WHERE(Account.UserID.EQ(UUID(userID))).
		Sql()

	rows, err := r.conn().Query(ctx, sql, args...)
	if err != nil {
		return resp, err
	}
	for rows.Next() {
		var bankAccount banking.BankAccount
		err = rows.Scan(
			&bankAccount.ID,
			&bankAccount.IBAN,
			&bankAccount.BankName,
			&bankAccount.IconURL,
		)
		if err != nil {
			return resp, err
		}
		resp = append(resp, bankAccount)
	}
	return resp, nil
}
func (r *Repository) GetAllAccounts(ctx context.Context) (resp banking.BankAccounts, err error) {
	sql, args := SELECT(Account.ID, Account.Iban, Institution.Name, Institution.IconURL).
		FROM(Account.INNER_JOIN(Institution, Institution.ID.EQ(Account.InstitutionID))).
		Sql()

	rows, err := r.conn().Query(ctx, sql, args...)
	if err != nil {
		return resp, err
	}
	for rows.Next() {
		var bankAccount banking.BankAccount
		err = rows.Scan(
			&bankAccount.ID,
			&bankAccount.IBAN,
			&bankAccount.BankName,
			&bankAccount.IconURL,
		)
		if err != nil {
			return resp, err
		}
		resp = append(resp, bankAccount)
	}
	return resp, nil
}
