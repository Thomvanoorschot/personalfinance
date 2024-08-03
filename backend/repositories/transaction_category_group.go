package repositories

import (
	"context"
	"time"

	. "personalfinance/generated/jet_gen/postgres/public/table"
	"personalfinance/services/budgeting"
	"personalfinance/utils/mathutils"

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

func (r *Repository) GetClassifiedTransactions(ctx context.Context, userID uuid.UUID, start, end time.Time) (resp budgeting.CategorizedTransactionResults, err error) {
	sql, args := SELECT(
		TransactionCategoryGroup.Slug,
		COUNT(STAR),
		COUNT(STAR).DIV(SUMi(COUNT(STAR)).OVER()).MUL(Int(100)),
		TransactionCategory.Slug,
	).
		FROM(Transaction.
			LEFT_JOIN(TransactionCategory, TransactionCategory.ID.EQ(Transaction.TransactionCategoryID)).
			LEFT_JOIN(TransactionCategoryGroup, TransactionCategoryGroup.ID.EQ(TransactionCategory.TransactionCategoryGroupID))).
		WHERE(
			Transaction.UserID.EQ(UUID(userID)).
				AND(Transaction.ValueDateTime.GT_EQ(TimestampT(start))).
				AND(Transaction.ValueDateTime.LT_EQ(TimestampT(end))),
		).
		GROUP_BY(TransactionCategoryGroup.Slug, TransactionCategory.Slug).
		ORDER_BY(TransactionCategoryGroup.Slug).
		Sql()

	rows, err := r.conn().Query(ctx, sql, args...)
	if err != nil {
		return resp, err
	}
	defer rows.Close()

	for rows.Next() {
		var (
			transactionCategoryGroupSlug *string
			count                        int64
			percentage                   float64
			transactionCategorySlug      *string
		)
		err = rows.Scan(
			&transactionCategoryGroupSlug,
			&count,
			&percentage,
			&transactionCategorySlug,
		)
		if err != nil {
			return resp, err
		}
		var emptyStr string
		if transactionCategoryGroupSlug == nil {
			transactionCategoryGroupSlug = &emptyStr
		}
		if len(resp) == 0 || *resp[len(resp)-1].Slug != *transactionCategoryGroupSlug {
			resp = append(resp, budgeting.CategorizedTransactionResult{
				CategorizedCategoryOrGroup: budgeting.CategorizedCategoryOrGroup{
					Slug:       transactionCategoryGroupSlug,
					Count:      count,
					Percentage: percentage,
				},
				Categories: []budgeting.CategorizedCategoryOrGroup{
					{
						Slug:       transactionCategorySlug,
						Count:      count,
						Percentage: percentage,
					},
				},
			})
			continue
		}
		resp[len(resp)-1].Count += count
		resp[len(resp)-1].Percentage = mathutils.AddFloat64(resp[len(resp)-1].Percentage, percentage)
		resp[len(resp)-1].Categories = append(resp[len(resp)-1].Categories, budgeting.CategorizedCategoryOrGroup{
			Slug:       transactionCategorySlug,
			Count:      count,
			Percentage: percentage,
		})
	}
	return resp, err
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
