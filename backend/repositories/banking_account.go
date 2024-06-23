package repositories

import (
	"context"

	"personalfinance/generated/jet_gen/postgres/public/model"
	. "personalfinance/generated/jet_gen/postgres/public/table"
	"personalfinance/services/banking"

	. "github.com/go-jet/jet/v2/postgres"
)

func (r *Repository) UpsertBankingAccount(ctx context.Context, m model.Account) error {
	sql, args := Account.
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
func (r *Repository) GetAccounts(ctx context.Context, userID string) (resp []banking.BankAccount, err error) {
	sql, args := SELECT(Account.ID).
		FROM(Account).
		WHERE(Account.UserID.EQ(String(userID))).
		Sql()

	rows, _ := r.conn().Query(ctx, sql, args...)

	for rows.Next() {
		var bankAccount banking.BankAccount
		err = rows.Scan(
			&bankAccount.ID,
			&bankAccount.IBAN,
		)
		if err != nil {
			return resp, err
		}
		resp = append(resp, bankAccount)
	}
	return resp, nil
}
