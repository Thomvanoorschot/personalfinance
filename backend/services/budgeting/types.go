package budgeting

import (
	"time"

	"personalfinance/generated/proto"

	"github.com/google/uuid"
	"google.golang.org/protobuf/types/known/timestamppb"
)

type TransactionCategories []TransactionCategory

func (tc TransactionCategories) ConvertToResponse() *proto.GetTransactionCategoriesResponse {
	transactionCategories := make([]*proto.TransactionCategoryResponse, 0, len(tc))
	for _, transactionCategory := range tc {
		transactionCategories = append(transactionCategories, transactionCategory.ConvertToResponse())
	}
	return &proto.GetTransactionCategoriesResponse{
		Categories: transactionCategories,
	}
}

type TransactionCategory struct {
	ID    uuid.UUID
	Label string
}

func (tc TransactionCategory) ConvertToResponse() *proto.TransactionCategoryResponse {
	return &proto.TransactionCategoryResponse{
		Id:    tc.ID.String(),
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
	CreditorName             string
	CreditorIBAN             string
	DebtorName               string
	DebtorIBAN               string
	Description              string
	TransactionCategoryLabel string
	TransactionCategoryID    string
}

func (t Transaction) ConvertToResponse() *proto.TransactionResponse {
	var partyName string
	var partyIBAN string
	if t.TransactionAmount < 0 {
		partyName = t.CreditorName
		partyIBAN = t.CreditorIBAN
	}
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
		TransactionCategoryLabel: t.TransactionCategoryLabel,
		TransactionCategoryId:    t.TransactionCategoryID,
	}
}

type UncategorizedTransaction struct {
	ID                   uuid.UUID
	ValueDateTime        time.Time
	TransactionAmount    float64
	Currency             string
	CreditorName         *string
	CreditorIBAN         *string
	DebtorName           *string
	DebtorIBAN           *string
	Description          string
	MatchingTransactions MatchingUncategorizedTransactions
}

func (ut UncategorizedTransaction) ConvertToResponse() *proto.GetUncategorizedTransactionResponse {
	var partyName string
	var partyIBAN string
	if ut.TransactionAmount < 0 {
		if ut.CreditorName != nil {
			partyName = *ut.CreditorName
		}
		if ut.CreditorIBAN != nil {
			partyIBAN = *ut.CreditorIBAN
		}
	} else {
		if ut.CreditorName != nil {
			partyName = *ut.CreditorName
		}
		if ut.CreditorIBAN != nil {
			partyIBAN = *ut.CreditorIBAN
		}
	}
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
