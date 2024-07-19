package repositories

import (
	"context"

	"personalfinance/generated/jet_gen/postgres/public/model"
	. "personalfinance/generated/jet_gen/postgres/public/table"
	"personalfinance/services/budgeting"

	. "github.com/go-jet/jet/v2/postgres"
	"github.com/google/uuid"
)

func (r *Repository) GetTransactions(ctx context.Context, userID uuid.UUID, limit, offset int64) (resp budgeting.Transactions, err error) {
	sql, args := SELECT(
		Transaction.ID,
		Transaction.AccountID,
		Transaction.ValueDateTime,
		Transaction.TransactionAmount,
		Transaction.BalanceAfterTransaction,
		Transaction.Currency,
		Transaction.CreditorName,
		Transaction.CreditorIban,
		Transaction.DebtorName,
		Transaction.DebtorIban,
		Transaction.RemittanceInformation,
		Transaction.TransactionCategoryID,
		TransactionCategory.Label,
	).
		FROM(Transaction.
			LEFT_JOIN(TransactionCategory, TransactionCategory.ID.EQ(Transaction.TransactionCategoryID)),
		).
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
		var tx budgeting.Transaction
		err = rows.Scan(
			&tx.ID,
			&tx.AccountID,
			&tx.ValueDateTime,
			&tx.TransactionAmount,
			&tx.BalanceAfterTransaction,
			&tx.Currency,
			&tx.CreditorName,
			&tx.CreditorIBAN,
			&tx.DebtorName,
			&tx.DebtorIBAN,
			&tx.Description,
			&tx.TransactionCategoryID,
			&tx.TransactionCategoryLabel,
		)
		if err != nil {
			return resp, err
		}
		resp = append(resp, tx)
	}
	return resp, nil
}

func (r *Repository) GetUncategorizedTransaction(ctx context.Context, userID uuid.UUID) (resp budgeting.UncategorizedTransaction, err error) {
	subQuery := SELECT(
		Transaction.CreditorIban,
		Transaction.CreditorName,
		Transaction.DebtorIban,
		Transaction.DebtorName,
		Transaction.TransactionAmount,
	).FROM(
		Transaction,
	).WHERE(
		Transaction.UserID.EQ(UUID(userID)).
			AND(Transaction.TransactionCategoryID.IS_NULL()),
	).ORDER_BY(
		Transaction.ValueDateTime.DESC(),
	).LIMIT(1).AsTable("t2")

	t2CreditorIBAN := Transaction.CreditorIban.From(subQuery)
	t2CreditorName := Transaction.CreditorName.From(subQuery)
	t2DebtorIBAN := Transaction.DebtorIban.From(subQuery)
	t2DebtorName := Transaction.DebtorName.From(subQuery)
	t2TransactionAmount := Transaction.TransactionAmount.From(subQuery)

	sql, args := SELECT(
		Transaction.ID,
		Transaction.ValueDateTime,
		Transaction.TransactionAmount,
		Transaction.Currency,
		Transaction.CreditorName,
		Transaction.CreditorIban,
		Transaction.DebtorName,
		Transaction.DebtorIban,
		Transaction.RemittanceInformation,
	).FROM(subQuery.INNER_JOIN(
		Transaction,
		((t2TransactionAmount.GT(Float(0)).OR(t2DebtorIBAN.IS_NULL())).OR(Transaction.TransactionAmount.EQ(t2TransactionAmount))).
			AND(
				(Transaction.CreditorIban.EQ(t2CreditorIBAN).AND(Transaction.CreditorName.EQ(t2CreditorName))).
					OR(Transaction.DebtorIban.EQ(t2DebtorIBAN).AND(Transaction.DebtorName.EQ(t2DebtorName))),
			),
	)).ORDER_BY(Transaction.ValueDateTime.DESC()).
		Sql()

	rows, err := r.conn().Query(ctx, sql, args...)
	if err != nil {
		return resp, err
	}

	for rows.Next() {
		var tx budgeting.UncategorizedTransaction
		err = rows.Scan(
			&tx.ID,
			&tx.ValueDateTime,
			&tx.TransactionAmount,
			&tx.Currency,
			&tx.CreditorName,
			&tx.CreditorIBAN,
			&tx.DebtorName,
			&tx.DebtorIBAN,
			&tx.Description,
		)
		if err != nil {
			return resp, err
		}
		if resp.ID == uuid.Nil {
			resp = tx
		} else {
			resp.MatchingTransactions = append(resp.MatchingTransactions, budgeting.MatchingUncategorizedTransaction{
				ID:                tx.ID,
				ValueDateTime:     tx.ValueDateTime,
				TransactionAmount: tx.TransactionAmount,
			})
		}
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
