package repositories

import (
	"context"

	. "personalfinance/generated/jet_gen/postgres/public/table"
	"personalfinance/services/budgeting"

	. "github.com/go-jet/jet/v2/postgres"
	"github.com/google/uuid"
)

func (r *Repository) GetAllTransactionCategoryGroups(ctx context.Context) (resp budgeting.TransactionCategoryGroups, err error) {
	sql, args := SELECT(
		TransactionCategoryGroup.ID,
		TransactionCategoryGroup.Slug,
		transactionCategoryGroupLabelCol(ctx),
		TransactionCategory.ID,
		TransactionCategory.Slug,
		transactionCategoryLabelCol(ctx),
	).
		FROM(TransactionCategoryGroup.
			INNER_JOIN(TransactionCategory, TransactionCategory.TransactionCategoryGroupID.EQ(TransactionCategoryGroup.ID)),
		).
		Sql()

	rows, err := r.conn().Query(ctx, sql, args...)
	if err != nil {
		return resp, err
	}
	for rows.Next() {
		var transactionCategoryGroupID uuid.UUID
		var transactionCategoryGroupSlug string
		var transactionCategoryGroupLabel string

		var transactionCategoryID uuid.UUID
		var transactionCategorySlug string
		var transactionCategoryLabel string

		err = rows.Scan(
			&transactionCategoryGroupID,
			&transactionCategoryGroupSlug,
			&transactionCategoryGroupLabel,

			&transactionCategoryID,
			&transactionCategorySlug,
			&transactionCategoryLabel,
		)
		if err != nil {
			return resp, err
		}
		if len(resp) == 0 || resp[len(resp)-1].ID != transactionCategoryGroupID {
			transactionCategoryGroup := budgeting.TransactionCategoryGroup{
				IdSlugLabel: budgeting.IdSlugLabel{
					ID:    transactionCategoryGroupID,
					Slug:  transactionCategoryGroupSlug,
					Label: transactionCategoryGroupLabel,
				},
				Categories: nil,
			}
			resp = append(resp, transactionCategoryGroup)
		}
		resp[len(resp)-1].Categories = append(resp[len(resp)-1].Categories, budgeting.TransactionCategory{
			IdSlugLabel: budgeting.IdSlugLabel{
				ID:    transactionCategoryID,
				Slug:  transactionCategorySlug,
				Label: transactionCategoryLabel,
			},
		})
	}
	return resp, nil
}

func transactionCategoryGroupLabelCol(ctx context.Context) ColumnString {
	languageVal := ctx.Value("language")
	language, ok := languageVal.(string)
	if !ok {
		language = ""
	}
	switch language {
	case "en":
		return TransactionCategoryGroup.LabelEn
	case "nl":
		return TransactionCategoryGroup.LabelNl
	default:
		return TransactionCategoryGroup.LabelNl
	}
}
