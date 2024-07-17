package repositories

import (
	"context"

	"personalfinance/generated/jet_gen/postgres/public/model"
	. "personalfinance/generated/jet_gen/postgres/public/table"

	. "github.com/go-jet/jet/v2/postgres"
	"github.com/google/uuid"
)

func (r *Repository) GetTransactions(ctx context.Context, userID uuid.UUID, limit, offset int64) (resp []model.Transaction, err error) {
	sql, args := SELECT(
		Transaction.ID,
		Transaction.AccountID,
		Transaction.ExternalID,
		Transaction.UserID,
		Transaction.BookingDate,
		Transaction.ValueDate,
		Transaction.ValueDateTime,
		Transaction.TransactionAmount,
		Transaction.Currency,
		Transaction.CreditorName,
		Transaction.CreditorIban,
		Transaction.RemittanceInformation,
		Transaction.ProprietaryBankTransactionCode,
		Transaction.BalanceCurrency,
		Transaction.BalanceType,
		Transaction.BalanceAfterTransaction,
		Transaction.InternalTransactionID,
		Transaction.DebtorName,
		Transaction.DebtorIban,
		Transaction.CreatedAt,
		Transaction.UpdatedAt,
		Transaction.TransactionCategoryID,
	).
		FROM(Transaction).
		WHERE(Transaction.UserID.EQ(UUID(userID))).
		LIMIT(limit).
		OFFSET(offset).
		ORDER_BY(Transaction.ValueDateTime.DESC()).
		Sql()

	rows, err := r.conn().Query(ctx, sql, args...)
	if err != nil {
		return resp, err
	}
	for rows.Next() {
		var tx model.Transaction
		err = rows.Scan(
			&tx.ID,
			&tx.AccountID,
			&tx.ExternalID,
			&tx.UserID,
			&tx.BookingDate,
			&tx.ValueDate,
			&tx.ValueDateTime,
			&tx.TransactionAmount,
			&tx.Currency,
			&tx.CreditorName,
			&tx.CreditorIban,
			&tx.RemittanceInformation,
			&tx.ProprietaryBankTransactionCode,
			&tx.BalanceCurrency,
			&tx.BalanceType,
			&tx.BalanceAfterTransaction,
			&tx.InternalTransactionID,
			&tx.DebtorName,
			&tx.DebtorIban,
			&tx.CreatedAt,
			&tx.UpdatedAt,
			&tx.TransactionCategoryID,
		)
		if err != nil {
			return resp, err
		}
		resp = append(resp, tx)
	}
	return resp, nil
}

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
