//
// Code generated by go-jet DO NOT EDIT.
//
// WARNING: Changes to this file may cause incorrect behavior
// and will be lost if the code is regenerated
//

package table

import (
	"github.com/go-jet/jet/v2/postgres"
)

var Transaction = newTransactionTable("public", "transaction", "")

type transactionTable struct {
	postgres.Table

	// Columns
	ID                             postgres.ColumnString
	AccountID                      postgres.ColumnString
	ExternalID                     postgres.ColumnString
	UserID                         postgres.ColumnString
	BookingDate                    postgres.ColumnDate
	ValueDate                      postgres.ColumnDate
	ValueDateTime                  postgres.ColumnTimestamp
	TransactionAmount              postgres.ColumnFloat
	Currency                       postgres.ColumnString
	CreditorName                   postgres.ColumnString
	CreditorIban                   postgres.ColumnString
	RemittanceInformation          postgres.ColumnString
	ProprietaryBankTransactionCode postgres.ColumnString
	BalanceCurrency                postgres.ColumnString
	BalanceType                    postgres.ColumnString
	BalanceAfterTransaction        postgres.ColumnFloat
	InternalTransactionID          postgres.ColumnString
	DebtorName                     postgres.ColumnString
	DebtorIban                     postgres.ColumnString
	CreatedAt                      postgres.ColumnTimestamp
	UpdatedAt                      postgres.ColumnTimestamp
	TransactionCategoryID          postgres.ColumnString
	AssociatedTransactionID        postgres.ColumnString

	AllColumns     postgres.ColumnList
	MutableColumns postgres.ColumnList
}

type TransactionTable struct {
	transactionTable

	EXCLUDED transactionTable
}

// AS creates new TransactionTable with assigned alias
func (a TransactionTable) AS(alias string) *TransactionTable {
	return newTransactionTable(a.SchemaName(), a.TableName(), alias)
}

// Schema creates new TransactionTable with assigned schema name
func (a TransactionTable) FromSchema(schemaName string) *TransactionTable {
	return newTransactionTable(schemaName, a.TableName(), a.Alias())
}

// WithPrefix creates new TransactionTable with assigned table prefix
func (a TransactionTable) WithPrefix(prefix string) *TransactionTable {
	return newTransactionTable(a.SchemaName(), prefix+a.TableName(), a.TableName())
}

// WithSuffix creates new TransactionTable with assigned table suffix
func (a TransactionTable) WithSuffix(suffix string) *TransactionTable {
	return newTransactionTable(a.SchemaName(), a.TableName()+suffix, a.TableName())
}

func newTransactionTable(schemaName, tableName, alias string) *TransactionTable {
	return &TransactionTable{
		transactionTable: newTransactionTableImpl(schemaName, tableName, alias),
		EXCLUDED:         newTransactionTableImpl("", "excluded", ""),
	}
}

func newTransactionTableImpl(schemaName, tableName, alias string) transactionTable {
	var (
		IDColumn                             = postgres.StringColumn("id")
		AccountIDColumn                      = postgres.StringColumn("account_id")
		ExternalIDColumn                     = postgres.StringColumn("external_id")
		UserIDColumn                         = postgres.StringColumn("user_id")
		BookingDateColumn                    = postgres.DateColumn("booking_date")
		ValueDateColumn                      = postgres.DateColumn("value_date")
		ValueDateTimeColumn                  = postgres.TimestampColumn("value_date_time")
		TransactionAmountColumn              = postgres.FloatColumn("transaction_amount")
		CurrencyColumn                       = postgres.StringColumn("currency")
		CreditorNameColumn                   = postgres.StringColumn("creditor_name")
		CreditorIbanColumn                   = postgres.StringColumn("creditor_iban")
		RemittanceInformationColumn          = postgres.StringColumn("remittance_information")
		ProprietaryBankTransactionCodeColumn = postgres.StringColumn("proprietary_bank_transaction_code")
		BalanceCurrencyColumn                = postgres.StringColumn("balance_currency")
		BalanceTypeColumn                    = postgres.StringColumn("balance_type")
		BalanceAfterTransactionColumn        = postgres.FloatColumn("balance_after_transaction")
		InternalTransactionIDColumn          = postgres.StringColumn("internal_transaction_id")
		DebtorNameColumn                     = postgres.StringColumn("debtor_name")
		DebtorIbanColumn                     = postgres.StringColumn("debtor_iban")
		CreatedAtColumn                      = postgres.TimestampColumn("created_at")
		UpdatedAtColumn                      = postgres.TimestampColumn("updated_at")
		TransactionCategoryIDColumn          = postgres.StringColumn("transaction_category_id")
		AssociatedTransactionIDColumn        = postgres.StringColumn("associated_transaction_id")
		allColumns                           = postgres.ColumnList{IDColumn, AccountIDColumn, ExternalIDColumn, UserIDColumn, BookingDateColumn, ValueDateColumn, ValueDateTimeColumn, TransactionAmountColumn, CurrencyColumn, CreditorNameColumn, CreditorIbanColumn, RemittanceInformationColumn, ProprietaryBankTransactionCodeColumn, BalanceCurrencyColumn, BalanceTypeColumn, BalanceAfterTransactionColumn, InternalTransactionIDColumn, DebtorNameColumn, DebtorIbanColumn, CreatedAtColumn, UpdatedAtColumn, TransactionCategoryIDColumn, AssociatedTransactionIDColumn}
		mutableColumns                       = postgres.ColumnList{AccountIDColumn, ExternalIDColumn, UserIDColumn, BookingDateColumn, ValueDateColumn, ValueDateTimeColumn, TransactionAmountColumn, CurrencyColumn, CreditorNameColumn, CreditorIbanColumn, RemittanceInformationColumn, ProprietaryBankTransactionCodeColumn, BalanceCurrencyColumn, BalanceTypeColumn, BalanceAfterTransactionColumn, InternalTransactionIDColumn, DebtorNameColumn, DebtorIbanColumn, CreatedAtColumn, UpdatedAtColumn, TransactionCategoryIDColumn, AssociatedTransactionIDColumn}
	)

	return transactionTable{
		Table: postgres.NewTable(schemaName, tableName, alias, allColumns...),

		//Columns
		ID:                             IDColumn,
		AccountID:                      AccountIDColumn,
		ExternalID:                     ExternalIDColumn,
		UserID:                         UserIDColumn,
		BookingDate:                    BookingDateColumn,
		ValueDate:                      ValueDateColumn,
		ValueDateTime:                  ValueDateTimeColumn,
		TransactionAmount:              TransactionAmountColumn,
		Currency:                       CurrencyColumn,
		CreditorName:                   CreditorNameColumn,
		CreditorIban:                   CreditorIbanColumn,
		RemittanceInformation:          RemittanceInformationColumn,
		ProprietaryBankTransactionCode: ProprietaryBankTransactionCodeColumn,
		BalanceCurrency:                BalanceCurrencyColumn,
		BalanceType:                    BalanceTypeColumn,
		BalanceAfterTransaction:        BalanceAfterTransactionColumn,
		InternalTransactionID:          InternalTransactionIDColumn,
		DebtorName:                     DebtorNameColumn,
		DebtorIban:                     DebtorIbanColumn,
		CreatedAt:                      CreatedAtColumn,
		UpdatedAt:                      UpdatedAtColumn,
		TransactionCategoryID:          TransactionCategoryIDColumn,
		AssociatedTransactionID:        AssociatedTransactionIDColumn,

		AllColumns:     allColumns,
		MutableColumns: mutableColumns,
	}
}
