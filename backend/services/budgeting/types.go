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
	transactionCategoriesGroup := make([]*proto.TransactionCategoryGroupResponse, 0, len(tcg))
	for _, transactionCategoryGroup := range tcg {
		transactionCategoriesGroup = append(transactionCategoriesGroup, transactionCategoryGroup.ConvertToResponse())
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
	transactionCategories := make([]*proto.TransactionCategoryResponse, 0, len(tc))

	for _, transactionCategoryGroup := range tc {
		transactionCategories = append(transactionCategories, transactionCategoryGroup.ConvertToResponse())
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

func (t Transactions) ConvertToResponse() *proto.GetTransactionsResponse {
	transactions := make([]*proto.TransactionResponse, 0, len(t))
	for _, transaction := range t {
		transactions = append(transactions, transaction.ConvertToResponse())
	}
	return &proto.GetTransactionsResponse{
		Transactions: transactions,
	}
}

type Transaction struct {
	ID                       uuid.UUID
	AccountID                uuid.UUID
	ValueDateTime            time.Time
	TransactionAmount        float64
	BalanceAfterTransaction  float64
	Currency                 string
	Description              string
	TransactionCategoryLabel *string
	TransactionCategoryID    *string
	PaymentParty
}

func (t Transaction) ConvertToResponse() *proto.TransactionResponse {
	partyName, partyIBAN := t.getPartyNameAndIBAN(t.TransactionAmount)
	return &proto.TransactionResponse{
		Id:                       t.ID.String(),
		AccountId:                t.AccountID.String(),
		Date:                     timestamppb.New(t.ValueDateTime),
		TransactionAmount:        t.TransactionAmount,
		BalanceAfterTransaction:  t.BalanceAfterTransaction,
		Currency:                 t.Currency,
		PartyName:                partyName,
		PartyIban:                partyIBAN,
		Description:              t.Description,
		TransactionCategoryLabel: protoutils.StringToNullableString(t.TransactionCategoryLabel),
		TransactionCategoryId:    protoutils.StringToNullableString(t.TransactionCategoryID),
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
	matchingUncategorizedTxs := make([]*proto.MatchingUncategorizedTransactionResponse, 0, len(mut))
	for _, matchingUncategorizedTx := range mut {
		matchingUncategorizedTxs = append(matchingUncategorizedTxs, matchingUncategorizedTx.ConvertToResponse())
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
	if transactionAmount < 0 {
		if pp.CreditorName != nil {
			partyName = *pp.CreditorName
		}
		if pp.CreditorIBAN != nil {
			partyIBAN = *pp.CreditorIBAN
		}
	} else {
		if pp.CreditorName != nil {
			partyName = *pp.CreditorName
		}
		if pp.CreditorIBAN != nil {
			partyIBAN = *pp.CreditorIBAN
		}
	}
	return partyName, partyIBAN
}
