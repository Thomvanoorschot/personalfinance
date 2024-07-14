// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.34.2
// 	protoc        (unknown)
// source: banking.proto

package proto

import (
	_ "buf.build/gen/go/bufbuild/protovalidate/protocolbuffers/go/buf/validate"
	protoreflect "google.golang.org/protobuf/reflect/protoreflect"
	protoimpl "google.golang.org/protobuf/runtime/protoimpl"
	timestamppb "google.golang.org/protobuf/types/known/timestamppb"
	reflect "reflect"
	sync "sync"
)

const (
	// Verify that this generated code is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(20 - protoimpl.MinVersion)
	// Verify that runtime/protoimpl is sufficiently up-to-date.
	_ = protoimpl.EnforceVersion(protoimpl.MaxVersion - 20)
)

type GetBanksRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	CountryCode string `protobuf:"bytes,1,opt,name=countryCode,proto3" json:"countryCode,omitempty"`
}

func (x *GetBanksRequest) Reset() {
	*x = GetBanksRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_banking_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *GetBanksRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*GetBanksRequest) ProtoMessage() {}

func (x *GetBanksRequest) ProtoReflect() protoreflect.Message {
	mi := &file_banking_proto_msgTypes[0]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use GetBanksRequest.ProtoReflect.Descriptor instead.
func (*GetBanksRequest) Descriptor() ([]byte, []int) {
	return file_banking_proto_rawDescGZIP(), []int{0}
}

func (x *GetBanksRequest) GetCountryCode() string {
	if x != nil {
		return x.CountryCode
	}
	return ""
}

type GetBanksResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Banks []*BankResponse `protobuf:"bytes,1,rep,name=banks,proto3" json:"banks,omitempty"`
}

func (x *GetBanksResponse) Reset() {
	*x = GetBanksResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_banking_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *GetBanksResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*GetBanksResponse) ProtoMessage() {}

func (x *GetBanksResponse) ProtoReflect() protoreflect.Message {
	mi := &file_banking_proto_msgTypes[1]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use GetBanksResponse.ProtoReflect.Descriptor instead.
func (*GetBanksResponse) Descriptor() ([]byte, []int) {
	return file_banking_proto_rawDescGZIP(), []int{1}
}

func (x *GetBanksResponse) GetBanks() []*BankResponse {
	if x != nil {
		return x.Banks
	}
	return nil
}

type BankResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id      string `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
	Name    string `protobuf:"bytes,2,opt,name=name,proto3" json:"name,omitempty"`
	IconURL string `protobuf:"bytes,3,opt,name=iconURL,proto3" json:"iconURL,omitempty"`
}

func (x *BankResponse) Reset() {
	*x = BankResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_banking_proto_msgTypes[2]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *BankResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*BankResponse) ProtoMessage() {}

func (x *BankResponse) ProtoReflect() protoreflect.Message {
	mi := &file_banking_proto_msgTypes[2]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use BankResponse.ProtoReflect.Descriptor instead.
func (*BankResponse) Descriptor() ([]byte, []int) {
	return file_banking_proto_rawDescGZIP(), []int{2}
}

func (x *BankResponse) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

func (x *BankResponse) GetName() string {
	if x != nil {
		return x.Name
	}
	return ""
}

func (x *BankResponse) GetIconURL() string {
	if x != nil {
		return x.IconURL
	}
	return ""
}

type CreateRequisitionRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	InstitutionId string `protobuf:"bytes,1,opt,name=institutionId,proto3" json:"institutionId,omitempty"`
}

func (x *CreateRequisitionRequest) Reset() {
	*x = CreateRequisitionRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_banking_proto_msgTypes[3]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *CreateRequisitionRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*CreateRequisitionRequest) ProtoMessage() {}

func (x *CreateRequisitionRequest) ProtoReflect() protoreflect.Message {
	mi := &file_banking_proto_msgTypes[3]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use CreateRequisitionRequest.ProtoReflect.Descriptor instead.
func (*CreateRequisitionRequest) Descriptor() ([]byte, []int) {
	return file_banking_proto_rawDescGZIP(), []int{3}
}

func (x *CreateRequisitionRequest) GetInstitutionId() string {
	if x != nil {
		return x.InstitutionId
	}
	return ""
}

type CreateRequisitionResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Url string `protobuf:"bytes,1,opt,name=url,proto3" json:"url,omitempty"`
}

func (x *CreateRequisitionResponse) Reset() {
	*x = CreateRequisitionResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_banking_proto_msgTypes[4]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *CreateRequisitionResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*CreateRequisitionResponse) ProtoMessage() {}

func (x *CreateRequisitionResponse) ProtoReflect() protoreflect.Message {
	mi := &file_banking_proto_msgTypes[4]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use CreateRequisitionResponse.ProtoReflect.Descriptor instead.
func (*CreateRequisitionResponse) Descriptor() ([]byte, []int) {
	return file_banking_proto_rawDescGZIP(), []int{4}
}

func (x *CreateRequisitionResponse) GetUrl() string {
	if x != nil {
		return x.Url
	}
	return ""
}

type GetTransactionsRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	UserId string `protobuf:"bytes,1,opt,name=userId,proto3" json:"userId,omitempty"`
	Limit  int64  `protobuf:"varint,2,opt,name=limit,proto3" json:"limit,omitempty"`
	Offset int64  `protobuf:"varint,3,opt,name=offset,proto3" json:"offset,omitempty"`
}

func (x *GetTransactionsRequest) Reset() {
	*x = GetTransactionsRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_banking_proto_msgTypes[5]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *GetTransactionsRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*GetTransactionsRequest) ProtoMessage() {}

func (x *GetTransactionsRequest) ProtoReflect() protoreflect.Message {
	mi := &file_banking_proto_msgTypes[5]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use GetTransactionsRequest.ProtoReflect.Descriptor instead.
func (*GetTransactionsRequest) Descriptor() ([]byte, []int) {
	return file_banking_proto_rawDescGZIP(), []int{5}
}

func (x *GetTransactionsRequest) GetUserId() string {
	if x != nil {
		return x.UserId
	}
	return ""
}

func (x *GetTransactionsRequest) GetLimit() int64 {
	if x != nil {
		return x.Limit
	}
	return 0
}

func (x *GetTransactionsRequest) GetOffset() int64 {
	if x != nil {
		return x.Offset
	}
	return 0
}

type GetTransactionsResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Transactions []*TransactionResponse `protobuf:"bytes,1,rep,name=transactions,proto3" json:"transactions,omitempty"`
}

func (x *GetTransactionsResponse) Reset() {
	*x = GetTransactionsResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_banking_proto_msgTypes[6]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *GetTransactionsResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*GetTransactionsResponse) ProtoMessage() {}

func (x *GetTransactionsResponse) ProtoReflect() protoreflect.Message {
	mi := &file_banking_proto_msgTypes[6]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use GetTransactionsResponse.ProtoReflect.Descriptor instead.
func (*GetTransactionsResponse) Descriptor() ([]byte, []int) {
	return file_banking_proto_rawDescGZIP(), []int{6}
}

func (x *GetTransactionsResponse) GetTransactions() []*TransactionResponse {
	if x != nil {
		return x.Transactions
	}
	return nil
}

type TransactionResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	AccountId                string                 `protobuf:"bytes,1,opt,name=accountId,proto3" json:"accountId,omitempty"`
	BookingDate              *timestamppb.Timestamp `protobuf:"bytes,2,opt,name=bookingDate,proto3" json:"bookingDate,omitempty"`
	TransactionAmount        float64                `protobuf:"fixed64,3,opt,name=transactionAmount,proto3" json:"transactionAmount,omitempty"`
	Currency                 string                 `protobuf:"bytes,4,opt,name=currency,proto3" json:"currency,omitempty"`
	CreditorName             string                 `protobuf:"bytes,5,opt,name=creditorName,proto3" json:"creditorName,omitempty"`
	CreditorIban             string                 `protobuf:"bytes,6,opt,name=creditorIban,proto3" json:"creditorIban,omitempty"`
	Description              string                 `protobuf:"bytes,7,opt,name=description,proto3" json:"description,omitempty"`
	DebtorName               string                 `protobuf:"bytes,8,opt,name=debtorName,proto3" json:"debtorName,omitempty"`
	DebtorIban               string                 `protobuf:"bytes,9,opt,name=debtorIban,proto3" json:"debtorIban,omitempty"`
	TransactionCategoryLabel string                 `protobuf:"bytes,10,opt,name=transactionCategoryLabel,proto3" json:"transactionCategoryLabel,omitempty"`
	TransactionCategoryId    string                 `protobuf:"bytes,11,opt,name=transactionCategoryId,proto3" json:"transactionCategoryId,omitempty"`
	BalanceAfterTransaction  string                 `protobuf:"bytes,12,opt,name=balanceAfterTransaction,proto3" json:"balanceAfterTransaction,omitempty"`
}

func (x *TransactionResponse) Reset() {
	*x = TransactionResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_banking_proto_msgTypes[7]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *TransactionResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*TransactionResponse) ProtoMessage() {}

func (x *TransactionResponse) ProtoReflect() protoreflect.Message {
	mi := &file_banking_proto_msgTypes[7]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use TransactionResponse.ProtoReflect.Descriptor instead.
func (*TransactionResponse) Descriptor() ([]byte, []int) {
	return file_banking_proto_rawDescGZIP(), []int{7}
}

func (x *TransactionResponse) GetAccountId() string {
	if x != nil {
		return x.AccountId
	}
	return ""
}

func (x *TransactionResponse) GetBookingDate() *timestamppb.Timestamp {
	if x != nil {
		return x.BookingDate
	}
	return nil
}

func (x *TransactionResponse) GetTransactionAmount() float64 {
	if x != nil {
		return x.TransactionAmount
	}
	return 0
}

func (x *TransactionResponse) GetCurrency() string {
	if x != nil {
		return x.Currency
	}
	return ""
}

func (x *TransactionResponse) GetCreditorName() string {
	if x != nil {
		return x.CreditorName
	}
	return ""
}

func (x *TransactionResponse) GetCreditorIban() string {
	if x != nil {
		return x.CreditorIban
	}
	return ""
}

func (x *TransactionResponse) GetDescription() string {
	if x != nil {
		return x.Description
	}
	return ""
}

func (x *TransactionResponse) GetDebtorName() string {
	if x != nil {
		return x.DebtorName
	}
	return ""
}

func (x *TransactionResponse) GetDebtorIban() string {
	if x != nil {
		return x.DebtorIban
	}
	return ""
}

func (x *TransactionResponse) GetTransactionCategoryLabel() string {
	if x != nil {
		return x.TransactionCategoryLabel
	}
	return ""
}

func (x *TransactionResponse) GetTransactionCategoryId() string {
	if x != nil {
		return x.TransactionCategoryId
	}
	return ""
}

func (x *TransactionResponse) GetBalanceAfterTransaction() string {
	if x != nil {
		return x.BalanceAfterTransaction
	}
	return ""
}

type HandleRequisitionRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	RequisitionReference string `protobuf:"bytes,1,opt,name=requisitionReference,proto3" json:"requisitionReference,omitempty"`
}

func (x *HandleRequisitionRequest) Reset() {
	*x = HandleRequisitionRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_banking_proto_msgTypes[8]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *HandleRequisitionRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*HandleRequisitionRequest) ProtoMessage() {}

func (x *HandleRequisitionRequest) ProtoReflect() protoreflect.Message {
	mi := &file_banking_proto_msgTypes[8]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use HandleRequisitionRequest.ProtoReflect.Descriptor instead.
func (*HandleRequisitionRequest) Descriptor() ([]byte, []int) {
	return file_banking_proto_rawDescGZIP(), []int{8}
}

func (x *HandleRequisitionRequest) GetRequisitionReference() string {
	if x != nil {
		return x.RequisitionReference
	}
	return ""
}

type HandleRequisitionResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields
}

func (x *HandleRequisitionResponse) Reset() {
	*x = HandleRequisitionResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_banking_proto_msgTypes[9]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *HandleRequisitionResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*HandleRequisitionResponse) ProtoMessage() {}

func (x *HandleRequisitionResponse) ProtoReflect() protoreflect.Message {
	mi := &file_banking_proto_msgTypes[9]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use HandleRequisitionResponse.ProtoReflect.Descriptor instead.
func (*HandleRequisitionResponse) Descriptor() ([]byte, []int) {
	return file_banking_proto_rawDescGZIP(), []int{9}
}

type GetBankAccountsRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	RequisitionReference string `protobuf:"bytes,1,opt,name=requisitionReference,proto3" json:"requisitionReference,omitempty"`
}

func (x *GetBankAccountsRequest) Reset() {
	*x = GetBankAccountsRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_banking_proto_msgTypes[10]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *GetBankAccountsRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*GetBankAccountsRequest) ProtoMessage() {}

func (x *GetBankAccountsRequest) ProtoReflect() protoreflect.Message {
	mi := &file_banking_proto_msgTypes[10]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use GetBankAccountsRequest.ProtoReflect.Descriptor instead.
func (*GetBankAccountsRequest) Descriptor() ([]byte, []int) {
	return file_banking_proto_rawDescGZIP(), []int{10}
}

func (x *GetBankAccountsRequest) GetRequisitionReference() string {
	if x != nil {
		return x.RequisitionReference
	}
	return ""
}

type GetBankAccountsResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Accounts []*BankAccountResponse `protobuf:"bytes,1,rep,name=accounts,proto3" json:"accounts,omitempty"`
}

func (x *GetBankAccountsResponse) Reset() {
	*x = GetBankAccountsResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_banking_proto_msgTypes[11]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *GetBankAccountsResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*GetBankAccountsResponse) ProtoMessage() {}

func (x *GetBankAccountsResponse) ProtoReflect() protoreflect.Message {
	mi := &file_banking_proto_msgTypes[11]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use GetBankAccountsResponse.ProtoReflect.Descriptor instead.
func (*GetBankAccountsResponse) Descriptor() ([]byte, []int) {
	return file_banking_proto_rawDescGZIP(), []int{11}
}

func (x *GetBankAccountsResponse) GetAccounts() []*BankAccountResponse {
	if x != nil {
		return x.Accounts
	}
	return nil
}

type BankAccountResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id       string `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
	Iban     string `protobuf:"bytes,2,opt,name=iban,proto3" json:"iban,omitempty"`
	BankName string `protobuf:"bytes,3,opt,name=bankName,proto3" json:"bankName,omitempty"`
	IconURL  string `protobuf:"bytes,4,opt,name=iconURL,proto3" json:"iconURL,omitempty"`
}

func (x *BankAccountResponse) Reset() {
	*x = BankAccountResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_banking_proto_msgTypes[12]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *BankAccountResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*BankAccountResponse) ProtoMessage() {}

func (x *BankAccountResponse) ProtoReflect() protoreflect.Message {
	mi := &file_banking_proto_msgTypes[12]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use BankAccountResponse.ProtoReflect.Descriptor instead.
func (*BankAccountResponse) Descriptor() ([]byte, []int) {
	return file_banking_proto_rawDescGZIP(), []int{12}
}

func (x *BankAccountResponse) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

func (x *BankAccountResponse) GetIban() string {
	if x != nil {
		return x.Iban
	}
	return ""
}

func (x *BankAccountResponse) GetBankName() string {
	if x != nil {
		return x.BankName
	}
	return ""
}

func (x *BankAccountResponse) GetIconURL() string {
	if x != nil {
		return x.IconURL
	}
	return ""
}

var File_banking_proto protoreflect.FileDescriptor

var file_banking_proto_rawDesc = []byte{
	0x0a, 0x0d, 0x62, 0x61, 0x6e, 0x6b, 0x69, 0x6e, 0x67, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x1a,
	0x1b, 0x62, 0x75, 0x66, 0x2f, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x61, 0x74, 0x65, 0x2f, 0x76, 0x61,
	0x6c, 0x69, 0x64, 0x61, 0x74, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x1a, 0x1f, 0x67, 0x6f,
	0x6f, 0x67, 0x6c, 0x65, 0x2f, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2f, 0x74, 0x69,
	0x6d, 0x65, 0x73, 0x74, 0x61, 0x6d, 0x70, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x22, 0x33, 0x0a,
	0x0f, 0x47, 0x65, 0x74, 0x42, 0x61, 0x6e, 0x6b, 0x73, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74,
	0x12, 0x20, 0x0a, 0x0b, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x72, 0x79, 0x43, 0x6f, 0x64, 0x65, 0x18,
	0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x0b, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x72, 0x79, 0x43, 0x6f,
	0x64, 0x65, 0x22, 0x37, 0x0a, 0x10, 0x47, 0x65, 0x74, 0x42, 0x61, 0x6e, 0x6b, 0x73, 0x52, 0x65,
	0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x23, 0x0a, 0x05, 0x62, 0x61, 0x6e, 0x6b, 0x73, 0x18,
	0x01, 0x20, 0x03, 0x28, 0x0b, 0x32, 0x0d, 0x2e, 0x42, 0x61, 0x6e, 0x6b, 0x52, 0x65, 0x73, 0x70,
	0x6f, 0x6e, 0x73, 0x65, 0x52, 0x05, 0x62, 0x61, 0x6e, 0x6b, 0x73, 0x22, 0x4c, 0x0a, 0x0c, 0x42,
	0x61, 0x6e, 0x6b, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x0e, 0x0a, 0x02, 0x69,
	0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x02, 0x69, 0x64, 0x12, 0x12, 0x0a, 0x04, 0x6e,
	0x61, 0x6d, 0x65, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x04, 0x6e, 0x61, 0x6d, 0x65, 0x12,
	0x18, 0x0a, 0x07, 0x69, 0x63, 0x6f, 0x6e, 0x55, 0x52, 0x4c, 0x18, 0x03, 0x20, 0x01, 0x28, 0x09,
	0x52, 0x07, 0x69, 0x63, 0x6f, 0x6e, 0x55, 0x52, 0x4c, 0x22, 0x40, 0x0a, 0x18, 0x43, 0x72, 0x65,
	0x61, 0x74, 0x65, 0x52, 0x65, 0x71, 0x75, 0x69, 0x73, 0x69, 0x74, 0x69, 0x6f, 0x6e, 0x52, 0x65,
	0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x24, 0x0a, 0x0d, 0x69, 0x6e, 0x73, 0x74, 0x69, 0x74, 0x75,
	0x74, 0x69, 0x6f, 0x6e, 0x49, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x0d, 0x69, 0x6e,
	0x73, 0x74, 0x69, 0x74, 0x75, 0x74, 0x69, 0x6f, 0x6e, 0x49, 0x64, 0x22, 0x2d, 0x0a, 0x19, 0x43,
	0x72, 0x65, 0x61, 0x74, 0x65, 0x52, 0x65, 0x71, 0x75, 0x69, 0x73, 0x69, 0x74, 0x69, 0x6f, 0x6e,
	0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x10, 0x0a, 0x03, 0x75, 0x72, 0x6c, 0x18,
	0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x03, 0x75, 0x72, 0x6c, 0x22, 0x68, 0x0a, 0x16, 0x47, 0x65,
	0x74, 0x54, 0x72, 0x61, 0x6e, 0x73, 0x61, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x73, 0x52, 0x65, 0x71,
	0x75, 0x65, 0x73, 0x74, 0x12, 0x20, 0x0a, 0x06, 0x75, 0x73, 0x65, 0x72, 0x49, 0x64, 0x18, 0x01,
	0x20, 0x01, 0x28, 0x09, 0x42, 0x08, 0xba, 0x48, 0x05, 0x72, 0x03, 0xb0, 0x01, 0x01, 0x52, 0x06,
	0x75, 0x73, 0x65, 0x72, 0x49, 0x64, 0x12, 0x14, 0x0a, 0x05, 0x6c, 0x69, 0x6d, 0x69, 0x74, 0x18,
	0x02, 0x20, 0x01, 0x28, 0x03, 0x52, 0x05, 0x6c, 0x69, 0x6d, 0x69, 0x74, 0x12, 0x16, 0x0a, 0x06,
	0x6f, 0x66, 0x66, 0x73, 0x65, 0x74, 0x18, 0x03, 0x20, 0x01, 0x28, 0x03, 0x52, 0x06, 0x6f, 0x66,
	0x66, 0x73, 0x65, 0x74, 0x22, 0x53, 0x0a, 0x17, 0x47, 0x65, 0x74, 0x54, 0x72, 0x61, 0x6e, 0x73,
	0x61, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x73, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12,
	0x38, 0x0a, 0x0c, 0x74, 0x72, 0x61, 0x6e, 0x73, 0x61, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x73, 0x18,
	0x01, 0x20, 0x03, 0x28, 0x0b, 0x32, 0x14, 0x2e, 0x54, 0x72, 0x61, 0x6e, 0x73, 0x61, 0x63, 0x74,
	0x69, 0x6f, 0x6e, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x52, 0x0c, 0x74, 0x72, 0x61,
	0x6e, 0x73, 0x61, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x73, 0x22, 0x91, 0x04, 0x0a, 0x13, 0x54, 0x72,
	0x61, 0x6e, 0x73, 0x61, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73,
	0x65, 0x12, 0x1c, 0x0a, 0x09, 0x61, 0x63, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x49, 0x64, 0x18, 0x01,
	0x20, 0x01, 0x28, 0x09, 0x52, 0x09, 0x61, 0x63, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x49, 0x64, 0x12,
	0x3c, 0x0a, 0x0b, 0x62, 0x6f, 0x6f, 0x6b, 0x69, 0x6e, 0x67, 0x44, 0x61, 0x74, 0x65, 0x18, 0x02,
	0x20, 0x01, 0x28, 0x0b, 0x32, 0x1a, 0x2e, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2e, 0x70, 0x72,
	0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2e, 0x54, 0x69, 0x6d, 0x65, 0x73, 0x74, 0x61, 0x6d, 0x70,
	0x52, 0x0b, 0x62, 0x6f, 0x6f, 0x6b, 0x69, 0x6e, 0x67, 0x44, 0x61, 0x74, 0x65, 0x12, 0x2c, 0x0a,
	0x11, 0x74, 0x72, 0x61, 0x6e, 0x73, 0x61, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x41, 0x6d, 0x6f, 0x75,
	0x6e, 0x74, 0x18, 0x03, 0x20, 0x01, 0x28, 0x01, 0x52, 0x11, 0x74, 0x72, 0x61, 0x6e, 0x73, 0x61,
	0x63, 0x74, 0x69, 0x6f, 0x6e, 0x41, 0x6d, 0x6f, 0x75, 0x6e, 0x74, 0x12, 0x1a, 0x0a, 0x08, 0x63,
	0x75, 0x72, 0x72, 0x65, 0x6e, 0x63, 0x79, 0x18, 0x04, 0x20, 0x01, 0x28, 0x09, 0x52, 0x08, 0x63,
	0x75, 0x72, 0x72, 0x65, 0x6e, 0x63, 0x79, 0x12, 0x22, 0x0a, 0x0c, 0x63, 0x72, 0x65, 0x64, 0x69,
	0x74, 0x6f, 0x72, 0x4e, 0x61, 0x6d, 0x65, 0x18, 0x05, 0x20, 0x01, 0x28, 0x09, 0x52, 0x0c, 0x63,
	0x72, 0x65, 0x64, 0x69, 0x74, 0x6f, 0x72, 0x4e, 0x61, 0x6d, 0x65, 0x12, 0x22, 0x0a, 0x0c, 0x63,
	0x72, 0x65, 0x64, 0x69, 0x74, 0x6f, 0x72, 0x49, 0x62, 0x61, 0x6e, 0x18, 0x06, 0x20, 0x01, 0x28,
	0x09, 0x52, 0x0c, 0x63, 0x72, 0x65, 0x64, 0x69, 0x74, 0x6f, 0x72, 0x49, 0x62, 0x61, 0x6e, 0x12,
	0x20, 0x0a, 0x0b, 0x64, 0x65, 0x73, 0x63, 0x72, 0x69, 0x70, 0x74, 0x69, 0x6f, 0x6e, 0x18, 0x07,
	0x20, 0x01, 0x28, 0x09, 0x52, 0x0b, 0x64, 0x65, 0x73, 0x63, 0x72, 0x69, 0x70, 0x74, 0x69, 0x6f,
	0x6e, 0x12, 0x1e, 0x0a, 0x0a, 0x64, 0x65, 0x62, 0x74, 0x6f, 0x72, 0x4e, 0x61, 0x6d, 0x65, 0x18,
	0x08, 0x20, 0x01, 0x28, 0x09, 0x52, 0x0a, 0x64, 0x65, 0x62, 0x74, 0x6f, 0x72, 0x4e, 0x61, 0x6d,
	0x65, 0x12, 0x1e, 0x0a, 0x0a, 0x64, 0x65, 0x62, 0x74, 0x6f, 0x72, 0x49, 0x62, 0x61, 0x6e, 0x18,
	0x09, 0x20, 0x01, 0x28, 0x09, 0x52, 0x0a, 0x64, 0x65, 0x62, 0x74, 0x6f, 0x72, 0x49, 0x62, 0x61,
	0x6e, 0x12, 0x3a, 0x0a, 0x18, 0x74, 0x72, 0x61, 0x6e, 0x73, 0x61, 0x63, 0x74, 0x69, 0x6f, 0x6e,
	0x43, 0x61, 0x74, 0x65, 0x67, 0x6f, 0x72, 0x79, 0x4c, 0x61, 0x62, 0x65, 0x6c, 0x18, 0x0a, 0x20,
	0x01, 0x28, 0x09, 0x52, 0x18, 0x74, 0x72, 0x61, 0x6e, 0x73, 0x61, 0x63, 0x74, 0x69, 0x6f, 0x6e,
	0x43, 0x61, 0x74, 0x65, 0x67, 0x6f, 0x72, 0x79, 0x4c, 0x61, 0x62, 0x65, 0x6c, 0x12, 0x34, 0x0a,
	0x15, 0x74, 0x72, 0x61, 0x6e, 0x73, 0x61, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x43, 0x61, 0x74, 0x65,
	0x67, 0x6f, 0x72, 0x79, 0x49, 0x64, 0x18, 0x0b, 0x20, 0x01, 0x28, 0x09, 0x52, 0x15, 0x74, 0x72,
	0x61, 0x6e, 0x73, 0x61, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x43, 0x61, 0x74, 0x65, 0x67, 0x6f, 0x72,
	0x79, 0x49, 0x64, 0x12, 0x38, 0x0a, 0x17, 0x62, 0x61, 0x6c, 0x61, 0x6e, 0x63, 0x65, 0x41, 0x66,
	0x74, 0x65, 0x72, 0x54, 0x72, 0x61, 0x6e, 0x73, 0x61, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x18, 0x0c,
	0x20, 0x01, 0x28, 0x09, 0x52, 0x17, 0x62, 0x61, 0x6c, 0x61, 0x6e, 0x63, 0x65, 0x41, 0x66, 0x74,
	0x65, 0x72, 0x54, 0x72, 0x61, 0x6e, 0x73, 0x61, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x22, 0x4e, 0x0a,
	0x18, 0x48, 0x61, 0x6e, 0x64, 0x6c, 0x65, 0x52, 0x65, 0x71, 0x75, 0x69, 0x73, 0x69, 0x74, 0x69,
	0x6f, 0x6e, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x32, 0x0a, 0x14, 0x72, 0x65, 0x71,
	0x75, 0x69, 0x73, 0x69, 0x74, 0x69, 0x6f, 0x6e, 0x52, 0x65, 0x66, 0x65, 0x72, 0x65, 0x6e, 0x63,
	0x65, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x14, 0x72, 0x65, 0x71, 0x75, 0x69, 0x73, 0x69,
	0x74, 0x69, 0x6f, 0x6e, 0x52, 0x65, 0x66, 0x65, 0x72, 0x65, 0x6e, 0x63, 0x65, 0x22, 0x1b, 0x0a,
	0x19, 0x48, 0x61, 0x6e, 0x64, 0x6c, 0x65, 0x52, 0x65, 0x71, 0x75, 0x69, 0x73, 0x69, 0x74, 0x69,
	0x6f, 0x6e, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x22, 0x4c, 0x0a, 0x16, 0x47, 0x65,
	0x74, 0x42, 0x61, 0x6e, 0x6b, 0x41, 0x63, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x73, 0x52, 0x65, 0x71,
	0x75, 0x65, 0x73, 0x74, 0x12, 0x32, 0x0a, 0x14, 0x72, 0x65, 0x71, 0x75, 0x69, 0x73, 0x69, 0x74,
	0x69, 0x6f, 0x6e, 0x52, 0x65, 0x66, 0x65, 0x72, 0x65, 0x6e, 0x63, 0x65, 0x18, 0x01, 0x20, 0x01,
	0x28, 0x09, 0x52, 0x14, 0x72, 0x65, 0x71, 0x75, 0x69, 0x73, 0x69, 0x74, 0x69, 0x6f, 0x6e, 0x52,
	0x65, 0x66, 0x65, 0x72, 0x65, 0x6e, 0x63, 0x65, 0x22, 0x4b, 0x0a, 0x17, 0x47, 0x65, 0x74, 0x42,
	0x61, 0x6e, 0x6b, 0x41, 0x63, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x73, 0x52, 0x65, 0x73, 0x70, 0x6f,
	0x6e, 0x73, 0x65, 0x12, 0x30, 0x0a, 0x08, 0x61, 0x63, 0x63, 0x6f, 0x75, 0x6e, 0x74, 0x73, 0x18,
	0x01, 0x20, 0x03, 0x28, 0x0b, 0x32, 0x14, 0x2e, 0x42, 0x61, 0x6e, 0x6b, 0x41, 0x63, 0x63, 0x6f,
	0x75, 0x6e, 0x74, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x52, 0x08, 0x61, 0x63, 0x63,
	0x6f, 0x75, 0x6e, 0x74, 0x73, 0x22, 0x6f, 0x0a, 0x13, 0x42, 0x61, 0x6e, 0x6b, 0x41, 0x63, 0x63,
	0x6f, 0x75, 0x6e, 0x74, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x0e, 0x0a, 0x02,
	0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x02, 0x69, 0x64, 0x12, 0x12, 0x0a, 0x04,
	0x69, 0x62, 0x61, 0x6e, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x04, 0x69, 0x62, 0x61, 0x6e,
	0x12, 0x1a, 0x0a, 0x08, 0x62, 0x61, 0x6e, 0x6b, 0x4e, 0x61, 0x6d, 0x65, 0x18, 0x03, 0x20, 0x01,
	0x28, 0x09, 0x52, 0x08, 0x62, 0x61, 0x6e, 0x6b, 0x4e, 0x61, 0x6d, 0x65, 0x12, 0x18, 0x0a, 0x07,
	0x69, 0x63, 0x6f, 0x6e, 0x55, 0x52, 0x4c, 0x18, 0x04, 0x20, 0x01, 0x28, 0x09, 0x52, 0x07, 0x69,
	0x63, 0x6f, 0x6e, 0x55, 0x52, 0x4c, 0x42, 0x21, 0x5a, 0x1f, 0x70, 0x65, 0x72, 0x73, 0x6f, 0x6e,
	0x61, 0x6c, 0x66, 0x69, 0x6e, 0x61, 0x6e, 0x63, 0x65, 0x2f, 0x67, 0x65, 0x6e, 0x65, 0x72, 0x61,
	0x74, 0x65, 0x64, 0x2f, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f,
	0x33,
}

var (
	file_banking_proto_rawDescOnce sync.Once
	file_banking_proto_rawDescData = file_banking_proto_rawDesc
)

func file_banking_proto_rawDescGZIP() []byte {
	file_banking_proto_rawDescOnce.Do(func() {
		file_banking_proto_rawDescData = protoimpl.X.CompressGZIP(file_banking_proto_rawDescData)
	})
	return file_banking_proto_rawDescData
}

var file_banking_proto_msgTypes = make([]protoimpl.MessageInfo, 13)
var file_banking_proto_goTypes = []any{
	(*GetBanksRequest)(nil),           // 0: GetBanksRequest
	(*GetBanksResponse)(nil),          // 1: GetBanksResponse
	(*BankResponse)(nil),              // 2: BankResponse
	(*CreateRequisitionRequest)(nil),  // 3: CreateRequisitionRequest
	(*CreateRequisitionResponse)(nil), // 4: CreateRequisitionResponse
	(*GetTransactionsRequest)(nil),    // 5: GetTransactionsRequest
	(*GetTransactionsResponse)(nil),   // 6: GetTransactionsResponse
	(*TransactionResponse)(nil),       // 7: TransactionResponse
	(*HandleRequisitionRequest)(nil),  // 8: HandleRequisitionRequest
	(*HandleRequisitionResponse)(nil), // 9: HandleRequisitionResponse
	(*GetBankAccountsRequest)(nil),    // 10: GetBankAccountsRequest
	(*GetBankAccountsResponse)(nil),   // 11: GetBankAccountsResponse
	(*BankAccountResponse)(nil),       // 12: BankAccountResponse
	(*timestamppb.Timestamp)(nil),     // 13: google.protobuf.Timestamp
}
var file_banking_proto_depIdxs = []int32{
	2,  // 0: GetBanksResponse.banks:type_name -> BankResponse
	7,  // 1: GetTransactionsResponse.transactions:type_name -> TransactionResponse
	13, // 2: TransactionResponse.bookingDate:type_name -> google.protobuf.Timestamp
	12, // 3: GetBankAccountsResponse.accounts:type_name -> BankAccountResponse
	4,  // [4:4] is the sub-list for method output_type
	4,  // [4:4] is the sub-list for method input_type
	4,  // [4:4] is the sub-list for extension type_name
	4,  // [4:4] is the sub-list for extension extendee
	0,  // [0:4] is the sub-list for field type_name
}

func init() { file_banking_proto_init() }
func file_banking_proto_init() {
	if File_banking_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_banking_proto_msgTypes[0].Exporter = func(v any, i int) any {
			switch v := v.(*GetBanksRequest); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_banking_proto_msgTypes[1].Exporter = func(v any, i int) any {
			switch v := v.(*GetBanksResponse); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_banking_proto_msgTypes[2].Exporter = func(v any, i int) any {
			switch v := v.(*BankResponse); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_banking_proto_msgTypes[3].Exporter = func(v any, i int) any {
			switch v := v.(*CreateRequisitionRequest); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_banking_proto_msgTypes[4].Exporter = func(v any, i int) any {
			switch v := v.(*CreateRequisitionResponse); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_banking_proto_msgTypes[5].Exporter = func(v any, i int) any {
			switch v := v.(*GetTransactionsRequest); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_banking_proto_msgTypes[6].Exporter = func(v any, i int) any {
			switch v := v.(*GetTransactionsResponse); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_banking_proto_msgTypes[7].Exporter = func(v any, i int) any {
			switch v := v.(*TransactionResponse); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_banking_proto_msgTypes[8].Exporter = func(v any, i int) any {
			switch v := v.(*HandleRequisitionRequest); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_banking_proto_msgTypes[9].Exporter = func(v any, i int) any {
			switch v := v.(*HandleRequisitionResponse); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_banking_proto_msgTypes[10].Exporter = func(v any, i int) any {
			switch v := v.(*GetBankAccountsRequest); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_banking_proto_msgTypes[11].Exporter = func(v any, i int) any {
			switch v := v.(*GetBankAccountsResponse); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
		file_banking_proto_msgTypes[12].Exporter = func(v any, i int) any {
			switch v := v.(*BankAccountResponse); i {
			case 0:
				return &v.state
			case 1:
				return &v.sizeCache
			case 2:
				return &v.unknownFields
			default:
				return nil
			}
		}
	}
	type x struct{}
	out := protoimpl.TypeBuilder{
		File: protoimpl.DescBuilder{
			GoPackagePath: reflect.TypeOf(x{}).PkgPath(),
			RawDescriptor: file_banking_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   13,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_banking_proto_goTypes,
		DependencyIndexes: file_banking_proto_depIdxs,
		MessageInfos:      file_banking_proto_msgTypes,
	}.Build()
	File_banking_proto = out.File
	file_banking_proto_rawDesc = nil
	file_banking_proto_goTypes = nil
	file_banking_proto_depIdxs = nil
}
