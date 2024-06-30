package repositories

import (
	"context"

	"personalfinance/generated/jet_gen/postgres/public/model"
	. "personalfinance/generated/jet_gen/postgres/public/table"

	. "github.com/go-jet/jet/v2/postgres"
)

func (r *Repository) UpsertTransactions(ctx context.Context, m []model.Transaction) error {
	sql, args := Transaction.
		INSERT(Transaction.MutableColumns).
		MODELS(m).
		ON_CONFLICT(Transaction.ExternalID).
		DO_UPDATE(
			SET(
				Transaction.AccountID.SET(Transaction.EXCLUDED.AccountID),
				Transaction.UserID.SET(Transaction.EXCLUDED.UserID),
				Transaction.BookingDate.SET(Transaction.EXCLUDED.BookingDate),
				Transaction.ValueDate.SET(Transaction.EXCLUDED.ValueDate),
				Transaction.ValueDateTime.SET(Transaction.EXCLUDED.ValueDateTime),
				Transaction.TransactionAmount.SET(Transaction.EXCLUDED.TransactionAmount),
				Transaction.Currency.SET(Transaction.EXCLUDED.Currency),
				Transaction.CreditorName.SET(Transaction.EXCLUDED.CreditorName),
				Transaction.CreditorIban.SET(Transaction.EXCLUDED.CreditorIban),
				Transaction.RemittanceInformation.SET(Transaction.EXCLUDED.RemittanceInformation),
				Transaction.ProprietaryBankTransactionCode.SET(Transaction.EXCLUDED.ProprietaryBankTransactionCode),
				Transaction.BalanceCurrency.SET(Transaction.EXCLUDED.BalanceCurrency),
				Transaction.BalanceType.SET(Transaction.EXCLUDED.BalanceType),
				Transaction.InternalTransactionID.SET(Transaction.EXCLUDED.InternalTransactionID),
				Transaction.DebtorName.SET(Transaction.EXCLUDED.DebtorName),
				Transaction.DebtorIban.SET(Transaction.EXCLUDED.DebtorIban),
			),
		).
		Sql()

	_, err := r.conn().Exec(ctx, sql, args...)
	if err != nil {
		return err
	}
	return nil
}
