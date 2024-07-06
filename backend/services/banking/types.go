package banking

import (
	"personalfinance/generated/jet_gen/postgres/public/model"
	"personalfinance/generated/proto"

	"github.com/google/uuid"
	"google.golang.org/protobuf/types/known/timestamppb"
)

type BankAccount struct {
	ID   uuid.UUID
	IBAN string
}

func ConvertToTransactionResponse(t model.Transaction) *proto.TransactionResponse {
	var bookingDate *timestamppb.Timestamp
	if t.BookingDate != nil {
		bookingDate = timestamppb.New(*t.BookingDate)
	}
	resp := &proto.TransactionResponse{
		AccountId:         t.AccountID.String(),
		BookingDate:       bookingDate,
		TransactionAmount: t.TransactionAmount,
		Currency:          t.Currency,

		TransactionCategoryLabel: "",
		TransactionCategoryId:    "",
	}
	if t.CreditorName != nil {
		resp.CreditorName = *t.CreditorName
	}
	if t.CreditorIban != nil {
		resp.CreditorIban = *t.CreditorIban
	}
	if t.RemittanceInformation != nil {
		resp.Description = *t.RemittanceInformation
	}
	if t.DebtorName != nil {
		resp.DebtorName = *t.DebtorName
	}
	if t.DebtorIban != nil {
		resp.DebtorIban = *t.DebtorIban
	}

	return resp
}
