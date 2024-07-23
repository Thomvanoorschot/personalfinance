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

var TransactionCategoryGroup = newTransactionCategoryGroupTable("public", "transaction_category_group", "")

type transactionCategoryGroupTable struct {
	postgres.Table

	// Columns
	ID        postgres.ColumnString
	Slug      postgres.ColumnString
	LabelEn   postgres.ColumnString
	LabelNl   postgres.ColumnString
	CreatedAt postgres.ColumnTimestamp
	UpdatedAt postgres.ColumnTimestamp

	AllColumns     postgres.ColumnList
	MutableColumns postgres.ColumnList
}

type TransactionCategoryGroupTable struct {
	transactionCategoryGroupTable

	EXCLUDED transactionCategoryGroupTable
}

// AS creates new TransactionCategoryGroupTable with assigned alias
func (a TransactionCategoryGroupTable) AS(alias string) *TransactionCategoryGroupTable {
	return newTransactionCategoryGroupTable(a.SchemaName(), a.TableName(), alias)
}

// Schema creates new TransactionCategoryGroupTable with assigned schema name
func (a TransactionCategoryGroupTable) FromSchema(schemaName string) *TransactionCategoryGroupTable {
	return newTransactionCategoryGroupTable(schemaName, a.TableName(), a.Alias())
}

// WithPrefix creates new TransactionCategoryGroupTable with assigned table prefix
func (a TransactionCategoryGroupTable) WithPrefix(prefix string) *TransactionCategoryGroupTable {
	return newTransactionCategoryGroupTable(a.SchemaName(), prefix+a.TableName(), a.TableName())
}

// WithSuffix creates new TransactionCategoryGroupTable with assigned table suffix
func (a TransactionCategoryGroupTable) WithSuffix(suffix string) *TransactionCategoryGroupTable {
	return newTransactionCategoryGroupTable(a.SchemaName(), a.TableName()+suffix, a.TableName())
}

func newTransactionCategoryGroupTable(schemaName, tableName, alias string) *TransactionCategoryGroupTable {
	return &TransactionCategoryGroupTable{
		transactionCategoryGroupTable: newTransactionCategoryGroupTableImpl(schemaName, tableName, alias),
		EXCLUDED:                      newTransactionCategoryGroupTableImpl("", "excluded", ""),
	}
}

func newTransactionCategoryGroupTableImpl(schemaName, tableName, alias string) transactionCategoryGroupTable {
	var (
		IDColumn        = postgres.StringColumn("id")
		SlugColumn      = postgres.StringColumn("slug")
		LabelEnColumn   = postgres.StringColumn("label_en")
		LabelNlColumn   = postgres.StringColumn("label_nl")
		CreatedAtColumn = postgres.TimestampColumn("created_at")
		UpdatedAtColumn = postgres.TimestampColumn("updated_at")
		allColumns      = postgres.ColumnList{IDColumn, SlugColumn, LabelEnColumn, LabelNlColumn, CreatedAtColumn, UpdatedAtColumn}
		mutableColumns  = postgres.ColumnList{SlugColumn, LabelEnColumn, LabelNlColumn, CreatedAtColumn, UpdatedAtColumn}
	)

	return transactionCategoryGroupTable{
		Table: postgres.NewTable(schemaName, tableName, alias, allColumns...),

		//Columns
		ID:        IDColumn,
		Slug:      SlugColumn,
		LabelEn:   LabelEnColumn,
		LabelNl:   LabelNlColumn,
		CreatedAt: CreatedAtColumn,
		UpdatedAt: UpdatedAtColumn,

		AllColumns:     allColumns,
		MutableColumns: mutableColumns,
	}
}
