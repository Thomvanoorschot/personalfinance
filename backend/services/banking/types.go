package banking

import (
	"personalfinance/generated/proto"

	"github.com/google/uuid"
)

type RequisitionWithMaxTransactionHistoryDays struct {
	RequisitionID             uuid.UUID
	MaxTransactionHistoryDays int16
}

type BankAccounts []BankAccount

func (ba BankAccounts) ConvertToResponse() *proto.GetBankAccountsResponse {
	bankAccounts := make([]*proto.BankAccountResponse, 0, len(ba))
	for _, account := range ba {
		bankAccounts = append(bankAccounts, account.ConvertToResponse())
	}
	return &proto.GetBankAccountsResponse{
		Accounts: bankAccounts,
	}
}

type BankAccount struct {
	ID       uuid.UUID
	IBAN     string
	BankName string
	IconURL  string
}

func (ba BankAccount) ConvertToResponse() *proto.BankAccountResponse {
	return &proto.BankAccountResponse{
		Id:       ba.ID.String(),
		Iban:     ba.IBAN,
		BankName: ba.BankName,
		IconURL:  ba.IconURL,
	}
}
