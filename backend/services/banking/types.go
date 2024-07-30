package banking

import (
	"time"

	"personalfinance/generated/proto"

	"github.com/google/uuid"
	"google.golang.org/protobuf/types/known/timestamppb"
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

type BalancesPerDay []BalancePerDay

func (bpd BalancesPerDay) ConvertToResponse() *proto.GetBalancesPerDayResponse {
	balancesPerDay := make([]*proto.BalancePerDay, 0, len(bpd))
	for _, balancePerDay := range bpd {
		balancesPerDay = append(balancesPerDay, balancePerDay.ConvertToResponse())
	}
	return &proto.GetBalancesPerDayResponse{
		Balances: balancesPerDay,
	}
}

type BalancePerDay struct {
	Date    time.Time
	Balance float64
}

func (bpd BalancePerDay) ConvertToResponse() *proto.BalancePerDay {
	return &proto.BalancePerDay{
		Date:    timestamppb.New(bpd.Date),
		Balance: bpd.Balance,
	}
}
