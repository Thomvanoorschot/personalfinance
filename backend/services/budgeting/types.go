package budgeting

import (
	"time"

	"personalfinance/generated/proto"
	"personalfinance/utils/protoutils"

	"github.com/google/uuid"
	"google.golang.org/protobuf/types/known/timestamppb"
)

type IdSlugLabel struct {
	ID    uuid.UUID
	Slug  string
	Label string
}

type TransactionCategoryGroups []TransactionCategoryGroup

func (tcg TransactionCategoryGroups) ConvertToResponse() *proto.GetTransactionCategoryGroupsResponse {
	transactionCategoriesGroup := make([]*proto.TransactionCategoryGroupResponse, len(tcg))
	for i, transactionCategoryGroup := range tcg {
		transactionCategoriesGroup[i] = transactionCategoryGroup.ConvertToResponse()
	}
	return &proto.GetTransactionCategoryGroupsResponse{
		Groups: transactionCategoriesGroup,
	}
}

type TransactionCategoryGroup struct {
	IdSlugLabel
	Categories TransactionCategories
}

func (tcg TransactionCategoryGroup) ConvertToResponse() *proto.TransactionCategoryGroupResponse {
	return &proto.TransactionCategoryGroupResponse{
		Id:         tcg.ID.String(),
		Slug:       tcg.Slug,
		Label:      tcg.Label,
		Categories: tcg.Categories.ConvertToResponse(),
	}
}

type TransactionCategories []TransactionCategory

func (tc TransactionCategories) ConvertToResponse() []*proto.TransactionCategoryResponse {
	transactionCategories := make([]*proto.TransactionCategoryResponse, len(tc))

	for i, transactionCategoryGroup := range tc {
		transactionCategories[i] = transactionCategoryGroup.ConvertToResponse()
	}
	return transactionCategories
}

type TransactionCategory struct {
	IdSlugLabel
}

func (tc TransactionCategory) ConvertToResponse() *proto.TransactionCategoryResponse {
	return &proto.TransactionCategoryResponse{
		Id:    tc.ID.String(),
		Slug:  tc.Slug,
		Label: tc.Label,
	}
}

type Transactions []Transaction

func (t Transactions) ConvertToResponse(totalCount int64) *proto.GetTransactionsResponse {
	transactions := make([]*proto.TransactionResponse, len(t))
	for i, transaction := range t {
		transactions[i] = transaction.ConvertToResponse()
	}
	return &proto.GetTransactionsResponse{
		Transactions: transactions,
		TotalCount:   totalCount,
	}
}

type Transaction struct {
	ID                           uuid.UUID
	AccountID                    uuid.UUID
	ValueDateTime                time.Time
	TransactionAmount            float64
	BalanceAfterTransaction      float64
	Currency                     string
	Description                  string
	TransactionCategorySlug      *string
	TransactionCategoryGroupSlug *string
	PaymentParty
}

func (t Transaction) ConvertToResponse() *proto.TransactionResponse {
	partyName, partyIBAN := t.getPartyNameAndIBAN(t.TransactionAmount)
	return &proto.TransactionResponse{
		Id:                           t.ID.String(),
		AccountId:                    t.AccountID.String(),
		Date:                         timestamppb.New(t.ValueDateTime),
		TransactionAmount:            t.TransactionAmount,
		BalanceAfterTransaction:      t.BalanceAfterTransaction,
		Currency:                     t.Currency,
		PartyName:                    partyName,
		PartyIban:                    partyIBAN,
		Description:                  t.Description,
		TransactionCategorySlug:      protoutils.StringToNullableString(t.TransactionCategorySlug),
		TransactionCategoryGroupSlug: protoutils.StringToNullableString(t.TransactionCategoryGroupSlug),
	}
}

type UncategorizedTransaction struct {
	ID                   uuid.UUID
	ValueDateTime        time.Time
	TransactionAmount    float64
	Currency             string
	Description          string
	MatchingTransactions MatchingUncategorizedTransactions
	PaymentParty
}

func (ut UncategorizedTransaction) ConvertToResponse() *proto.GetUncategorizedTransactionResponse {
	partyName, partyIBAN := ut.getPartyNameAndIBAN(ut.TransactionAmount)
	return &proto.GetUncategorizedTransactionResponse{
		Id:                   ut.ID.String(),
		Date:                 timestamppb.New(ut.ValueDateTime),
		TransactionAmount:    ut.TransactionAmount,
		Currency:             ut.Currency,
		PartyName:            partyName,
		PartyIban:            partyIBAN,
		Description:          ut.Description,
		MatchingTransactions: ut.MatchingTransactions.ConvertToResponse(),
	}
}

type MatchingUncategorizedTransactions []MatchingUncategorizedTransaction

func (mut MatchingUncategorizedTransactions) ConvertToResponse() []*proto.MatchingUncategorizedTransactionResponse {
	matchingUncategorizedTxs := make([]*proto.MatchingUncategorizedTransactionResponse, len(mut))
	for i, matchingUncategorizedTx := range mut {
		matchingUncategorizedTxs[i] = matchingUncategorizedTx.ConvertToResponse()
	}
	return matchingUncategorizedTxs
}

type MatchingUncategorizedTransaction struct {
	ID                uuid.UUID
	ValueDateTime     time.Time
	TransactionAmount float64
}

func (mut MatchingUncategorizedTransaction) ConvertToResponse() *proto.MatchingUncategorizedTransactionResponse {
	return &proto.MatchingUncategorizedTransactionResponse{
		Id:                mut.ID.String(),
		Date:              timestamppb.New(mut.ValueDateTime),
		TransactionAmount: mut.TransactionAmount,
	}
}

type PaymentParty struct {
	CreditorName *string
	CreditorIBAN *string
	DebtorName   *string
	DebtorIBAN   *string
}

func (pp PaymentParty) getPartyNameAndIBAN(transactionAmount float64) (string, string) {
	var partyName string
	var partyIBAN string
	if pp.CreditorName != nil {
		partyName = *pp.CreditorName
	}
	if pp.CreditorIBAN != nil {
		partyIBAN = *pp.CreditorIBAN
	}
	if pp.DebtorName != nil {
		partyName = *pp.DebtorName
	}
	if pp.DebtorIBAN != nil {
		partyIBAN = *pp.DebtorIBAN
	}
	return partyName, partyIBAN
}

type CategorizedTransactionResults []CategorizedTransactionResult

func (ctr CategorizedTransactionResults) ConvertToResponse() *proto.GetCategorizedTransactionResultsResponse {
	categorizedTransactionResults := make([]*proto.GetCategorizedTransactionResultResponse, len(ctr))
	for i, categorizedTransaction := range ctr {
		categorizedTransactionResults[i] = categorizedTransaction.ConvertToResponse()
	}
	return &proto.GetCategorizedTransactionResultsResponse{
		Results: categorizedTransactionResults,
	}
}

type CategorizedTransactionResult struct {
	CategorizedCategoryOrGroup
	Categories []CategorizedCategoryOrGroup
}

type CategorizedCategoryOrGroup struct {
	Slug       *string
	Count      int64
	Percentage float64
}

func (ctr CategorizedTransactionResult) ConvertToResponse() *proto.GetCategorizedTransactionResultResponse {
	var slug string
	if ctr.Slug != nil {
		slug = *ctr.Slug
	}
	if slug == "" {
		slug = "unknown_category"
	}
	categories := make([]*proto.GetCategorizedTransactionResult, len(ctr.Categories))
	for i, category := range ctr.Categories {
		categories[i] = category.ConvertToResponse()
	}

	return &proto.GetCategorizedTransactionResultResponse{
		Slug:       slug,
		Count:      ctr.Count,
		Percentage: ctr.Percentage,
		Categories: categories,
	}
}

func (ctr CategorizedCategoryOrGroup) ConvertToResponse() *proto.GetCategorizedTransactionResult {
	var slug string
	if ctr.Slug != nil {
		slug = *ctr.Slug
	}
	if slug == "" {
		slug = "unknown_category"
	}
	return &proto.GetCategorizedTransactionResult{
		Slug:       slug,
		Count:      ctr.Count,
		Percentage: ctr.Percentage,
	}
}

type InAndOutgoingTransactionAmountsPerPeriods []InAndOutgoingTransactionAmountsPerPeriod

func (txpp InAndOutgoingTransactionAmountsPerPeriods) ConvertToResponse() *proto.GetInAndOutgoingTransactionAmountsPerPeriodResponse {
	inAndOutgoingTransactionAmountPeriod := make([]*proto.InAndOutgoingTransactionAmountPeriod, len(txpp))
	for i, txsPerPeriod := range txpp {
		inAndOutgoingTransactionAmountPeriod[i] = txsPerPeriod.ConvertToResponse()
	}
	return &proto.GetInAndOutgoingTransactionAmountsPerPeriodResponse{
		Periods: inAndOutgoingTransactionAmountPeriod,
	}
}

type InAndOutgoingTransactionAmountsPerPeriod struct {
	StartOfPeriod  time.Time
	IngoingAmount  float64
	OutgoingAmount float64
}

func (txpp InAndOutgoingTransactionAmountsPerPeriod) ConvertToResponse() *proto.InAndOutgoingTransactionAmountPeriod {
	return &proto.InAndOutgoingTransactionAmountPeriod{
		StartOfPeriod:  timestamppb.New(txpp.StartOfPeriod),
		IngoingAmount:  txpp.IngoingAmount,
		OutgoingAmount: txpp.OutgoingAmount,
	}
}
