// Code generated by protoc-gen-go. DO NOT EDIT.
// versions:
// 	protoc-gen-go v1.34.2
// 	protoc        (unknown)
// source: budgeting.proto

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
		mi := &file_budgeting_proto_msgTypes[0]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *GetTransactionsRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*GetTransactionsRequest) ProtoMessage() {}

func (x *GetTransactionsRequest) ProtoReflect() protoreflect.Message {
	mi := &file_budgeting_proto_msgTypes[0]
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
	return file_budgeting_proto_rawDescGZIP(), []int{0}
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
		mi := &file_budgeting_proto_msgTypes[1]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *GetTransactionsResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*GetTransactionsResponse) ProtoMessage() {}

func (x *GetTransactionsResponse) ProtoReflect() protoreflect.Message {
	mi := &file_budgeting_proto_msgTypes[1]
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
	return file_budgeting_proto_rawDescGZIP(), []int{1}
}

func (x *GetTransactionsResponse) GetTransactions() []*TransactionResponse {
	if x != nil {
		return x.Transactions
	}
	return nil
}

type GetUncategorizedTransactionRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	UserId string `protobuf:"bytes,1,opt,name=userId,proto3" json:"userId,omitempty"`
}

func (x *GetUncategorizedTransactionRequest) Reset() {
	*x = GetUncategorizedTransactionRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_budgeting_proto_msgTypes[2]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *GetUncategorizedTransactionRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*GetUncategorizedTransactionRequest) ProtoMessage() {}

func (x *GetUncategorizedTransactionRequest) ProtoReflect() protoreflect.Message {
	mi := &file_budgeting_proto_msgTypes[2]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use GetUncategorizedTransactionRequest.ProtoReflect.Descriptor instead.
func (*GetUncategorizedTransactionRequest) Descriptor() ([]byte, []int) {
	return file_budgeting_proto_rawDescGZIP(), []int{2}
}

func (x *GetUncategorizedTransactionRequest) GetUserId() string {
	if x != nil {
		return x.UserId
	}
	return ""
}

type GetUncategorizedTransactionResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id                   string                                      `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
	Date                 *timestamppb.Timestamp                      `protobuf:"bytes,2,opt,name=date,proto3" json:"date,omitempty"`
	TransactionAmount    float64                                     `protobuf:"fixed64,3,opt,name=transactionAmount,proto3" json:"transactionAmount,omitempty"`
	Currency             string                                      `protobuf:"bytes,4,opt,name=currency,proto3" json:"currency,omitempty"`
	PartyName            string                                      `protobuf:"bytes,5,opt,name=partyName,proto3" json:"partyName,omitempty"`
	PartyIban            string                                      `protobuf:"bytes,6,opt,name=partyIban,proto3" json:"partyIban,omitempty"`
	Description          string                                      `protobuf:"bytes,7,opt,name=description,proto3" json:"description,omitempty"`
	MatchingTransactions []*MatchingUncategorizedTransactionResponse `protobuf:"bytes,8,rep,name=matchingTransactions,proto3" json:"matchingTransactions,omitempty"`
}

func (x *GetUncategorizedTransactionResponse) Reset() {
	*x = GetUncategorizedTransactionResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_budgeting_proto_msgTypes[3]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *GetUncategorizedTransactionResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*GetUncategorizedTransactionResponse) ProtoMessage() {}

func (x *GetUncategorizedTransactionResponse) ProtoReflect() protoreflect.Message {
	mi := &file_budgeting_proto_msgTypes[3]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use GetUncategorizedTransactionResponse.ProtoReflect.Descriptor instead.
func (*GetUncategorizedTransactionResponse) Descriptor() ([]byte, []int) {
	return file_budgeting_proto_rawDescGZIP(), []int{3}
}

func (x *GetUncategorizedTransactionResponse) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

func (x *GetUncategorizedTransactionResponse) GetDate() *timestamppb.Timestamp {
	if x != nil {
		return x.Date
	}
	return nil
}

func (x *GetUncategorizedTransactionResponse) GetTransactionAmount() float64 {
	if x != nil {
		return x.TransactionAmount
	}
	return 0
}

func (x *GetUncategorizedTransactionResponse) GetCurrency() string {
	if x != nil {
		return x.Currency
	}
	return ""
}

func (x *GetUncategorizedTransactionResponse) GetPartyName() string {
	if x != nil {
		return x.PartyName
	}
	return ""
}

func (x *GetUncategorizedTransactionResponse) GetPartyIban() string {
	if x != nil {
		return x.PartyIban
	}
	return ""
}

func (x *GetUncategorizedTransactionResponse) GetDescription() string {
	if x != nil {
		return x.Description
	}
	return ""
}

func (x *GetUncategorizedTransactionResponse) GetMatchingTransactions() []*MatchingUncategorizedTransactionResponse {
	if x != nil {
		return x.MatchingTransactions
	}
	return nil
}

type MatchingUncategorizedTransactionResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id                string                 `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
	Date              *timestamppb.Timestamp `protobuf:"bytes,2,opt,name=date,proto3" json:"date,omitempty"`
	TransactionAmount float64                `protobuf:"fixed64,3,opt,name=transactionAmount,proto3" json:"transactionAmount,omitempty"`
}

func (x *MatchingUncategorizedTransactionResponse) Reset() {
	*x = MatchingUncategorizedTransactionResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_budgeting_proto_msgTypes[4]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *MatchingUncategorizedTransactionResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*MatchingUncategorizedTransactionResponse) ProtoMessage() {}

func (x *MatchingUncategorizedTransactionResponse) ProtoReflect() protoreflect.Message {
	mi := &file_budgeting_proto_msgTypes[4]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use MatchingUncategorizedTransactionResponse.ProtoReflect.Descriptor instead.
func (*MatchingUncategorizedTransactionResponse) Descriptor() ([]byte, []int) {
	return file_budgeting_proto_rawDescGZIP(), []int{4}
}

func (x *MatchingUncategorizedTransactionResponse) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

func (x *MatchingUncategorizedTransactionResponse) GetDate() *timestamppb.Timestamp {
	if x != nil {
		return x.Date
	}
	return nil
}

func (x *MatchingUncategorizedTransactionResponse) GetTransactionAmount() float64 {
	if x != nil {
		return x.TransactionAmount
	}
	return 0
}

type CategorizeTransactionAndContinueRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	UserId         string   `protobuf:"bytes,1,opt,name=userId,proto3" json:"userId,omitempty"`
	TransactionIds []string `protobuf:"bytes,2,rep,name=transactionIds,proto3" json:"transactionIds,omitempty"`
	CategoryId     string   `protobuf:"bytes,3,opt,name=categoryId,proto3" json:"categoryId,omitempty"`
}

func (x *CategorizeTransactionAndContinueRequest) Reset() {
	*x = CategorizeTransactionAndContinueRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_budgeting_proto_msgTypes[5]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *CategorizeTransactionAndContinueRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*CategorizeTransactionAndContinueRequest) ProtoMessage() {}

func (x *CategorizeTransactionAndContinueRequest) ProtoReflect() protoreflect.Message {
	mi := &file_budgeting_proto_msgTypes[5]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use CategorizeTransactionAndContinueRequest.ProtoReflect.Descriptor instead.
func (*CategorizeTransactionAndContinueRequest) Descriptor() ([]byte, []int) {
	return file_budgeting_proto_rawDescGZIP(), []int{5}
}

func (x *CategorizeTransactionAndContinueRequest) GetUserId() string {
	if x != nil {
		return x.UserId
	}
	return ""
}

func (x *CategorizeTransactionAndContinueRequest) GetTransactionIds() []string {
	if x != nil {
		return x.TransactionIds
	}
	return nil
}

func (x *CategorizeTransactionAndContinueRequest) GetCategoryId() string {
	if x != nil {
		return x.CategoryId
	}
	return ""
}

type TransactionResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id                       string                 `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
	AccountId                string                 `protobuf:"bytes,2,opt,name=accountId,proto3" json:"accountId,omitempty"`
	Date                     *timestamppb.Timestamp `protobuf:"bytes,3,opt,name=date,proto3" json:"date,omitempty"`
	TransactionAmount        float64                `protobuf:"fixed64,4,opt,name=transactionAmount,proto3" json:"transactionAmount,omitempty"`
	Currency                 string                 `protobuf:"bytes,5,opt,name=currency,proto3" json:"currency,omitempty"`
	PartyName                string                 `protobuf:"bytes,6,opt,name=partyName,proto3" json:"partyName,omitempty"`
	PartyIban                string                 `protobuf:"bytes,7,opt,name=partyIban,proto3" json:"partyIban,omitempty"`
	Description              string                 `protobuf:"bytes,8,opt,name=description,proto3" json:"description,omitempty"`
	TransactionCategoryLabel string                 `protobuf:"bytes,9,opt,name=transactionCategoryLabel,proto3" json:"transactionCategoryLabel,omitempty"`
	TransactionCategoryId    string                 `protobuf:"bytes,10,opt,name=transactionCategoryId,proto3" json:"transactionCategoryId,omitempty"`
	BalanceAfterTransaction  float64                `protobuf:"fixed64,11,opt,name=balanceAfterTransaction,proto3" json:"balanceAfterTransaction,omitempty"`
}

func (x *TransactionResponse) Reset() {
	*x = TransactionResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_budgeting_proto_msgTypes[6]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *TransactionResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*TransactionResponse) ProtoMessage() {}

func (x *TransactionResponse) ProtoReflect() protoreflect.Message {
	mi := &file_budgeting_proto_msgTypes[6]
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
	return file_budgeting_proto_rawDescGZIP(), []int{6}
}

func (x *TransactionResponse) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

func (x *TransactionResponse) GetAccountId() string {
	if x != nil {
		return x.AccountId
	}
	return ""
}

func (x *TransactionResponse) GetDate() *timestamppb.Timestamp {
	if x != nil {
		return x.Date
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

func (x *TransactionResponse) GetPartyName() string {
	if x != nil {
		return x.PartyName
	}
	return ""
}

func (x *TransactionResponse) GetPartyIban() string {
	if x != nil {
		return x.PartyIban
	}
	return ""
}

func (x *TransactionResponse) GetDescription() string {
	if x != nil {
		return x.Description
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

func (x *TransactionResponse) GetBalanceAfterTransaction() float64 {
	if x != nil {
		return x.BalanceAfterTransaction
	}
	return 0
}

type GetTransactionCategoriesRequest struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields
}

func (x *GetTransactionCategoriesRequest) Reset() {
	*x = GetTransactionCategoriesRequest{}
	if protoimpl.UnsafeEnabled {
		mi := &file_budgeting_proto_msgTypes[7]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *GetTransactionCategoriesRequest) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*GetTransactionCategoriesRequest) ProtoMessage() {}

func (x *GetTransactionCategoriesRequest) ProtoReflect() protoreflect.Message {
	mi := &file_budgeting_proto_msgTypes[7]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use GetTransactionCategoriesRequest.ProtoReflect.Descriptor instead.
func (*GetTransactionCategoriesRequest) Descriptor() ([]byte, []int) {
	return file_budgeting_proto_rawDescGZIP(), []int{7}
}

type GetTransactionCategoriesResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Categories []*TransactionCategoryResponse `protobuf:"bytes,1,rep,name=categories,proto3" json:"categories,omitempty"`
}

func (x *GetTransactionCategoriesResponse) Reset() {
	*x = GetTransactionCategoriesResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_budgeting_proto_msgTypes[8]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *GetTransactionCategoriesResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*GetTransactionCategoriesResponse) ProtoMessage() {}

func (x *GetTransactionCategoriesResponse) ProtoReflect() protoreflect.Message {
	mi := &file_budgeting_proto_msgTypes[8]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use GetTransactionCategoriesResponse.ProtoReflect.Descriptor instead.
func (*GetTransactionCategoriesResponse) Descriptor() ([]byte, []int) {
	return file_budgeting_proto_rawDescGZIP(), []int{8}
}

func (x *GetTransactionCategoriesResponse) GetCategories() []*TransactionCategoryResponse {
	if x != nil {
		return x.Categories
	}
	return nil
}

type TransactionCategoryResponse struct {
	state         protoimpl.MessageState
	sizeCache     protoimpl.SizeCache
	unknownFields protoimpl.UnknownFields

	Id    string `protobuf:"bytes,1,opt,name=id,proto3" json:"id,omitempty"`
	Label string `protobuf:"bytes,2,opt,name=label,proto3" json:"label,omitempty"`
}

func (x *TransactionCategoryResponse) Reset() {
	*x = TransactionCategoryResponse{}
	if protoimpl.UnsafeEnabled {
		mi := &file_budgeting_proto_msgTypes[9]
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		ms.StoreMessageInfo(mi)
	}
}

func (x *TransactionCategoryResponse) String() string {
	return protoimpl.X.MessageStringOf(x)
}

func (*TransactionCategoryResponse) ProtoMessage() {}

func (x *TransactionCategoryResponse) ProtoReflect() protoreflect.Message {
	mi := &file_budgeting_proto_msgTypes[9]
	if protoimpl.UnsafeEnabled && x != nil {
		ms := protoimpl.X.MessageStateOf(protoimpl.Pointer(x))
		if ms.LoadMessageInfo() == nil {
			ms.StoreMessageInfo(mi)
		}
		return ms
	}
	return mi.MessageOf(x)
}

// Deprecated: Use TransactionCategoryResponse.ProtoReflect.Descriptor instead.
func (*TransactionCategoryResponse) Descriptor() ([]byte, []int) {
	return file_budgeting_proto_rawDescGZIP(), []int{9}
}

func (x *TransactionCategoryResponse) GetId() string {
	if x != nil {
		return x.Id
	}
	return ""
}

func (x *TransactionCategoryResponse) GetLabel() string {
	if x != nil {
		return x.Label
	}
	return ""
}

var File_budgeting_proto protoreflect.FileDescriptor

var file_budgeting_proto_rawDesc = []byte{
	0x0a, 0x0f, 0x62, 0x75, 0x64, 0x67, 0x65, 0x74, 0x69, 0x6e, 0x67, 0x2e, 0x70, 0x72, 0x6f, 0x74,
	0x6f, 0x1a, 0x1b, 0x62, 0x75, 0x66, 0x2f, 0x76, 0x61, 0x6c, 0x69, 0x64, 0x61, 0x74, 0x65, 0x2f,
	0x76, 0x61, 0x6c, 0x69, 0x64, 0x61, 0x74, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x1a, 0x1f,
	0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2f, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2f,
	0x74, 0x69, 0x6d, 0x65, 0x73, 0x74, 0x61, 0x6d, 0x70, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x22,
	0x68, 0x0a, 0x16, 0x47, 0x65, 0x74, 0x54, 0x72, 0x61, 0x6e, 0x73, 0x61, 0x63, 0x74, 0x69, 0x6f,
	0x6e, 0x73, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x20, 0x0a, 0x06, 0x75, 0x73, 0x65,
	0x72, 0x49, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x42, 0x08, 0xba, 0x48, 0x05, 0x72, 0x03,
	0xb0, 0x01, 0x01, 0x52, 0x06, 0x75, 0x73, 0x65, 0x72, 0x49, 0x64, 0x12, 0x14, 0x0a, 0x05, 0x6c,
	0x69, 0x6d, 0x69, 0x74, 0x18, 0x02, 0x20, 0x01, 0x28, 0x03, 0x52, 0x05, 0x6c, 0x69, 0x6d, 0x69,
	0x74, 0x12, 0x16, 0x0a, 0x06, 0x6f, 0x66, 0x66, 0x73, 0x65, 0x74, 0x18, 0x03, 0x20, 0x01, 0x28,
	0x03, 0x52, 0x06, 0x6f, 0x66, 0x66, 0x73, 0x65, 0x74, 0x22, 0x53, 0x0a, 0x17, 0x47, 0x65, 0x74,
	0x54, 0x72, 0x61, 0x6e, 0x73, 0x61, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x73, 0x52, 0x65, 0x73, 0x70,
	0x6f, 0x6e, 0x73, 0x65, 0x12, 0x38, 0x0a, 0x0c, 0x74, 0x72, 0x61, 0x6e, 0x73, 0x61, 0x63, 0x74,
	0x69, 0x6f, 0x6e, 0x73, 0x18, 0x01, 0x20, 0x03, 0x28, 0x0b, 0x32, 0x14, 0x2e, 0x54, 0x72, 0x61,
	0x6e, 0x73, 0x61, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65,
	0x52, 0x0c, 0x74, 0x72, 0x61, 0x6e, 0x73, 0x61, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x73, 0x22, 0x46,
	0x0a, 0x22, 0x47, 0x65, 0x74, 0x55, 0x6e, 0x63, 0x61, 0x74, 0x65, 0x67, 0x6f, 0x72, 0x69, 0x7a,
	0x65, 0x64, 0x54, 0x72, 0x61, 0x6e, 0x73, 0x61, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x52, 0x65, 0x71,
	0x75, 0x65, 0x73, 0x74, 0x12, 0x20, 0x0a, 0x06, 0x75, 0x73, 0x65, 0x72, 0x49, 0x64, 0x18, 0x01,
	0x20, 0x01, 0x28, 0x09, 0x42, 0x08, 0xba, 0x48, 0x05, 0x72, 0x03, 0xb0, 0x01, 0x01, 0x52, 0x06,
	0x75, 0x73, 0x65, 0x72, 0x49, 0x64, 0x22, 0xec, 0x02, 0x0a, 0x23, 0x47, 0x65, 0x74, 0x55, 0x6e,
	0x63, 0x61, 0x74, 0x65, 0x67, 0x6f, 0x72, 0x69, 0x7a, 0x65, 0x64, 0x54, 0x72, 0x61, 0x6e, 0x73,
	0x61, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x0e,
	0x0a, 0x02, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x02, 0x69, 0x64, 0x12, 0x2e,
	0x0a, 0x04, 0x64, 0x61, 0x74, 0x65, 0x18, 0x02, 0x20, 0x01, 0x28, 0x0b, 0x32, 0x1a, 0x2e, 0x67,
	0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2e, 0x54,
	0x69, 0x6d, 0x65, 0x73, 0x74, 0x61, 0x6d, 0x70, 0x52, 0x04, 0x64, 0x61, 0x74, 0x65, 0x12, 0x2c,
	0x0a, 0x11, 0x74, 0x72, 0x61, 0x6e, 0x73, 0x61, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x41, 0x6d, 0x6f,
	0x75, 0x6e, 0x74, 0x18, 0x03, 0x20, 0x01, 0x28, 0x01, 0x52, 0x11, 0x74, 0x72, 0x61, 0x6e, 0x73,
	0x61, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x41, 0x6d, 0x6f, 0x75, 0x6e, 0x74, 0x12, 0x1a, 0x0a, 0x08,
	0x63, 0x75, 0x72, 0x72, 0x65, 0x6e, 0x63, 0x79, 0x18, 0x04, 0x20, 0x01, 0x28, 0x09, 0x52, 0x08,
	0x63, 0x75, 0x72, 0x72, 0x65, 0x6e, 0x63, 0x79, 0x12, 0x1c, 0x0a, 0x09, 0x70, 0x61, 0x72, 0x74,
	0x79, 0x4e, 0x61, 0x6d, 0x65, 0x18, 0x05, 0x20, 0x01, 0x28, 0x09, 0x52, 0x09, 0x70, 0x61, 0x72,
	0x74, 0x79, 0x4e, 0x61, 0x6d, 0x65, 0x12, 0x1c, 0x0a, 0x09, 0x70, 0x61, 0x72, 0x74, 0x79, 0x49,
	0x62, 0x61, 0x6e, 0x18, 0x06, 0x20, 0x01, 0x28, 0x09, 0x52, 0x09, 0x70, 0x61, 0x72, 0x74, 0x79,
	0x49, 0x62, 0x61, 0x6e, 0x12, 0x20, 0x0a, 0x0b, 0x64, 0x65, 0x73, 0x63, 0x72, 0x69, 0x70, 0x74,
	0x69, 0x6f, 0x6e, 0x18, 0x07, 0x20, 0x01, 0x28, 0x09, 0x52, 0x0b, 0x64, 0x65, 0x73, 0x63, 0x72,
	0x69, 0x70, 0x74, 0x69, 0x6f, 0x6e, 0x12, 0x5d, 0x0a, 0x14, 0x6d, 0x61, 0x74, 0x63, 0x68, 0x69,
	0x6e, 0x67, 0x54, 0x72, 0x61, 0x6e, 0x73, 0x61, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x73, 0x18, 0x08,
	0x20, 0x03, 0x28, 0x0b, 0x32, 0x29, 0x2e, 0x4d, 0x61, 0x74, 0x63, 0x68, 0x69, 0x6e, 0x67, 0x55,
	0x6e, 0x63, 0x61, 0x74, 0x65, 0x67, 0x6f, 0x72, 0x69, 0x7a, 0x65, 0x64, 0x54, 0x72, 0x61, 0x6e,
	0x73, 0x61, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x52,
	0x14, 0x6d, 0x61, 0x74, 0x63, 0x68, 0x69, 0x6e, 0x67, 0x54, 0x72, 0x61, 0x6e, 0x73, 0x61, 0x63,
	0x74, 0x69, 0x6f, 0x6e, 0x73, 0x22, 0x98, 0x01, 0x0a, 0x28, 0x4d, 0x61, 0x74, 0x63, 0x68, 0x69,
	0x6e, 0x67, 0x55, 0x6e, 0x63, 0x61, 0x74, 0x65, 0x67, 0x6f, 0x72, 0x69, 0x7a, 0x65, 0x64, 0x54,
	0x72, 0x61, 0x6e, 0x73, 0x61, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e,
	0x73, 0x65, 0x12, 0x0e, 0x0a, 0x02, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x02,
	0x69, 0x64, 0x12, 0x2e, 0x0a, 0x04, 0x64, 0x61, 0x74, 0x65, 0x18, 0x02, 0x20, 0x01, 0x28, 0x0b,
	0x32, 0x1a, 0x2e, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2e, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62,
	0x75, 0x66, 0x2e, 0x54, 0x69, 0x6d, 0x65, 0x73, 0x74, 0x61, 0x6d, 0x70, 0x52, 0x04, 0x64, 0x61,
	0x74, 0x65, 0x12, 0x2c, 0x0a, 0x11, 0x74, 0x72, 0x61, 0x6e, 0x73, 0x61, 0x63, 0x74, 0x69, 0x6f,
	0x6e, 0x41, 0x6d, 0x6f, 0x75, 0x6e, 0x74, 0x18, 0x03, 0x20, 0x01, 0x28, 0x01, 0x52, 0x11, 0x74,
	0x72, 0x61, 0x6e, 0x73, 0x61, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x41, 0x6d, 0x6f, 0x75, 0x6e, 0x74,
	0x22, 0x9d, 0x01, 0x0a, 0x27, 0x43, 0x61, 0x74, 0x65, 0x67, 0x6f, 0x72, 0x69, 0x7a, 0x65, 0x54,
	0x72, 0x61, 0x6e, 0x73, 0x61, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x41, 0x6e, 0x64, 0x43, 0x6f, 0x6e,
	0x74, 0x69, 0x6e, 0x75, 0x65, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x12, 0x20, 0x0a, 0x06,
	0x75, 0x73, 0x65, 0x72, 0x49, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x42, 0x08, 0xba, 0x48,
	0x05, 0x72, 0x03, 0xb0, 0x01, 0x01, 0x52, 0x06, 0x75, 0x73, 0x65, 0x72, 0x49, 0x64, 0x12, 0x26,
	0x0a, 0x0e, 0x74, 0x72, 0x61, 0x6e, 0x73, 0x61, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x49, 0x64, 0x73,
	0x18, 0x02, 0x20, 0x03, 0x28, 0x09, 0x52, 0x0e, 0x74, 0x72, 0x61, 0x6e, 0x73, 0x61, 0x63, 0x74,
	0x69, 0x6f, 0x6e, 0x49, 0x64, 0x73, 0x12, 0x28, 0x0a, 0x0a, 0x63, 0x61, 0x74, 0x65, 0x67, 0x6f,
	0x72, 0x79, 0x49, 0x64, 0x18, 0x03, 0x20, 0x01, 0x28, 0x09, 0x42, 0x08, 0xba, 0x48, 0x05, 0x72,
	0x03, 0xb0, 0x01, 0x01, 0x52, 0x0a, 0x63, 0x61, 0x74, 0x65, 0x67, 0x6f, 0x72, 0x79, 0x49, 0x64,
	0x22, 0xc7, 0x03, 0x0a, 0x13, 0x54, 0x72, 0x61, 0x6e, 0x73, 0x61, 0x63, 0x74, 0x69, 0x6f, 0x6e,
	0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x0e, 0x0a, 0x02, 0x69, 0x64, 0x18, 0x01,
	0x20, 0x01, 0x28, 0x09, 0x52, 0x02, 0x69, 0x64, 0x12, 0x1c, 0x0a, 0x09, 0x61, 0x63, 0x63, 0x6f,
	0x75, 0x6e, 0x74, 0x49, 0x64, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x09, 0x61, 0x63, 0x63,
	0x6f, 0x75, 0x6e, 0x74, 0x49, 0x64, 0x12, 0x2e, 0x0a, 0x04, 0x64, 0x61, 0x74, 0x65, 0x18, 0x03,
	0x20, 0x01, 0x28, 0x0b, 0x32, 0x1a, 0x2e, 0x67, 0x6f, 0x6f, 0x67, 0x6c, 0x65, 0x2e, 0x70, 0x72,
	0x6f, 0x74, 0x6f, 0x62, 0x75, 0x66, 0x2e, 0x54, 0x69, 0x6d, 0x65, 0x73, 0x74, 0x61, 0x6d, 0x70,
	0x52, 0x04, 0x64, 0x61, 0x74, 0x65, 0x12, 0x2c, 0x0a, 0x11, 0x74, 0x72, 0x61, 0x6e, 0x73, 0x61,
	0x63, 0x74, 0x69, 0x6f, 0x6e, 0x41, 0x6d, 0x6f, 0x75, 0x6e, 0x74, 0x18, 0x04, 0x20, 0x01, 0x28,
	0x01, 0x52, 0x11, 0x74, 0x72, 0x61, 0x6e, 0x73, 0x61, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x41, 0x6d,
	0x6f, 0x75, 0x6e, 0x74, 0x12, 0x1a, 0x0a, 0x08, 0x63, 0x75, 0x72, 0x72, 0x65, 0x6e, 0x63, 0x79,
	0x18, 0x05, 0x20, 0x01, 0x28, 0x09, 0x52, 0x08, 0x63, 0x75, 0x72, 0x72, 0x65, 0x6e, 0x63, 0x79,
	0x12, 0x1c, 0x0a, 0x09, 0x70, 0x61, 0x72, 0x74, 0x79, 0x4e, 0x61, 0x6d, 0x65, 0x18, 0x06, 0x20,
	0x01, 0x28, 0x09, 0x52, 0x09, 0x70, 0x61, 0x72, 0x74, 0x79, 0x4e, 0x61, 0x6d, 0x65, 0x12, 0x1c,
	0x0a, 0x09, 0x70, 0x61, 0x72, 0x74, 0x79, 0x49, 0x62, 0x61, 0x6e, 0x18, 0x07, 0x20, 0x01, 0x28,
	0x09, 0x52, 0x09, 0x70, 0x61, 0x72, 0x74, 0x79, 0x49, 0x62, 0x61, 0x6e, 0x12, 0x20, 0x0a, 0x0b,
	0x64, 0x65, 0x73, 0x63, 0x72, 0x69, 0x70, 0x74, 0x69, 0x6f, 0x6e, 0x18, 0x08, 0x20, 0x01, 0x28,
	0x09, 0x52, 0x0b, 0x64, 0x65, 0x73, 0x63, 0x72, 0x69, 0x70, 0x74, 0x69, 0x6f, 0x6e, 0x12, 0x3a,
	0x0a, 0x18, 0x74, 0x72, 0x61, 0x6e, 0x73, 0x61, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x43, 0x61, 0x74,
	0x65, 0x67, 0x6f, 0x72, 0x79, 0x4c, 0x61, 0x62, 0x65, 0x6c, 0x18, 0x09, 0x20, 0x01, 0x28, 0x09,
	0x52, 0x18, 0x74, 0x72, 0x61, 0x6e, 0x73, 0x61, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x43, 0x61, 0x74,
	0x65, 0x67, 0x6f, 0x72, 0x79, 0x4c, 0x61, 0x62, 0x65, 0x6c, 0x12, 0x34, 0x0a, 0x15, 0x74, 0x72,
	0x61, 0x6e, 0x73, 0x61, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x43, 0x61, 0x74, 0x65, 0x67, 0x6f, 0x72,
	0x79, 0x49, 0x64, 0x18, 0x0a, 0x20, 0x01, 0x28, 0x09, 0x52, 0x15, 0x74, 0x72, 0x61, 0x6e, 0x73,
	0x61, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x43, 0x61, 0x74, 0x65, 0x67, 0x6f, 0x72, 0x79, 0x49, 0x64,
	0x12, 0x38, 0x0a, 0x17, 0x62, 0x61, 0x6c, 0x61, 0x6e, 0x63, 0x65, 0x41, 0x66, 0x74, 0x65, 0x72,
	0x54, 0x72, 0x61, 0x6e, 0x73, 0x61, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x18, 0x0b, 0x20, 0x01, 0x28,
	0x01, 0x52, 0x17, 0x62, 0x61, 0x6c, 0x61, 0x6e, 0x63, 0x65, 0x41, 0x66, 0x74, 0x65, 0x72, 0x54,
	0x72, 0x61, 0x6e, 0x73, 0x61, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x22, 0x21, 0x0a, 0x1f, 0x47, 0x65,
	0x74, 0x54, 0x72, 0x61, 0x6e, 0x73, 0x61, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x43, 0x61, 0x74, 0x65,
	0x67, 0x6f, 0x72, 0x69, 0x65, 0x73, 0x52, 0x65, 0x71, 0x75, 0x65, 0x73, 0x74, 0x22, 0x60, 0x0a,
	0x20, 0x47, 0x65, 0x74, 0x54, 0x72, 0x61, 0x6e, 0x73, 0x61, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x43,
	0x61, 0x74, 0x65, 0x67, 0x6f, 0x72, 0x69, 0x65, 0x73, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73,
	0x65, 0x12, 0x3c, 0x0a, 0x0a, 0x63, 0x61, 0x74, 0x65, 0x67, 0x6f, 0x72, 0x69, 0x65, 0x73, 0x18,
	0x01, 0x20, 0x03, 0x28, 0x0b, 0x32, 0x1c, 0x2e, 0x54, 0x72, 0x61, 0x6e, 0x73, 0x61, 0x63, 0x74,
	0x69, 0x6f, 0x6e, 0x43, 0x61, 0x74, 0x65, 0x67, 0x6f, 0x72, 0x79, 0x52, 0x65, 0x73, 0x70, 0x6f,
	0x6e, 0x73, 0x65, 0x52, 0x0a, 0x63, 0x61, 0x74, 0x65, 0x67, 0x6f, 0x72, 0x69, 0x65, 0x73, 0x22,
	0x43, 0x0a, 0x1b, 0x54, 0x72, 0x61, 0x6e, 0x73, 0x61, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x43, 0x61,
	0x74, 0x65, 0x67, 0x6f, 0x72, 0x79, 0x52, 0x65, 0x73, 0x70, 0x6f, 0x6e, 0x73, 0x65, 0x12, 0x0e,
	0x0a, 0x02, 0x69, 0x64, 0x18, 0x01, 0x20, 0x01, 0x28, 0x09, 0x52, 0x02, 0x69, 0x64, 0x12, 0x14,
	0x0a, 0x05, 0x6c, 0x61, 0x62, 0x65, 0x6c, 0x18, 0x02, 0x20, 0x01, 0x28, 0x09, 0x52, 0x05, 0x6c,
	0x61, 0x62, 0x65, 0x6c, 0x42, 0x21, 0x5a, 0x1f, 0x70, 0x65, 0x72, 0x73, 0x6f, 0x6e, 0x61, 0x6c,
	0x66, 0x69, 0x6e, 0x61, 0x6e, 0x63, 0x65, 0x2f, 0x67, 0x65, 0x6e, 0x65, 0x72, 0x61, 0x74, 0x65,
	0x64, 0x2f, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x62, 0x06, 0x70, 0x72, 0x6f, 0x74, 0x6f, 0x33,
}

var (
	file_budgeting_proto_rawDescOnce sync.Once
	file_budgeting_proto_rawDescData = file_budgeting_proto_rawDesc
)

func file_budgeting_proto_rawDescGZIP() []byte {
	file_budgeting_proto_rawDescOnce.Do(func() {
		file_budgeting_proto_rawDescData = protoimpl.X.CompressGZIP(file_budgeting_proto_rawDescData)
	})
	return file_budgeting_proto_rawDescData
}

var file_budgeting_proto_msgTypes = make([]protoimpl.MessageInfo, 10)
var file_budgeting_proto_goTypes = []any{
	(*GetTransactionsRequest)(nil),                   // 0: GetTransactionsRequest
	(*GetTransactionsResponse)(nil),                  // 1: GetTransactionsResponse
	(*GetUncategorizedTransactionRequest)(nil),       // 2: GetUncategorizedTransactionRequest
	(*GetUncategorizedTransactionResponse)(nil),      // 3: GetUncategorizedTransactionResponse
	(*MatchingUncategorizedTransactionResponse)(nil), // 4: MatchingUncategorizedTransactionResponse
	(*CategorizeTransactionAndContinueRequest)(nil),  // 5: CategorizeTransactionAndContinueRequest
	(*TransactionResponse)(nil),                      // 6: TransactionResponse
	(*GetTransactionCategoriesRequest)(nil),          // 7: GetTransactionCategoriesRequest
	(*GetTransactionCategoriesResponse)(nil),         // 8: GetTransactionCategoriesResponse
	(*TransactionCategoryResponse)(nil),              // 9: TransactionCategoryResponse
	(*timestamppb.Timestamp)(nil),                    // 10: google.protobuf.Timestamp
}
var file_budgeting_proto_depIdxs = []int32{
	6,  // 0: GetTransactionsResponse.transactions:type_name -> TransactionResponse
	10, // 1: GetUncategorizedTransactionResponse.date:type_name -> google.protobuf.Timestamp
	4,  // 2: GetUncategorizedTransactionResponse.matchingTransactions:type_name -> MatchingUncategorizedTransactionResponse
	10, // 3: MatchingUncategorizedTransactionResponse.date:type_name -> google.protobuf.Timestamp
	10, // 4: TransactionResponse.date:type_name -> google.protobuf.Timestamp
	9,  // 5: GetTransactionCategoriesResponse.categories:type_name -> TransactionCategoryResponse
	6,  // [6:6] is the sub-list for method output_type
	6,  // [6:6] is the sub-list for method input_type
	6,  // [6:6] is the sub-list for extension type_name
	6,  // [6:6] is the sub-list for extension extendee
	0,  // [0:6] is the sub-list for field type_name
}

func init() { file_budgeting_proto_init() }
func file_budgeting_proto_init() {
	if File_budgeting_proto != nil {
		return
	}
	if !protoimpl.UnsafeEnabled {
		file_budgeting_proto_msgTypes[0].Exporter = func(v any, i int) any {
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
		file_budgeting_proto_msgTypes[1].Exporter = func(v any, i int) any {
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
		file_budgeting_proto_msgTypes[2].Exporter = func(v any, i int) any {
			switch v := v.(*GetUncategorizedTransactionRequest); i {
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
		file_budgeting_proto_msgTypes[3].Exporter = func(v any, i int) any {
			switch v := v.(*GetUncategorizedTransactionResponse); i {
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
		file_budgeting_proto_msgTypes[4].Exporter = func(v any, i int) any {
			switch v := v.(*MatchingUncategorizedTransactionResponse); i {
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
		file_budgeting_proto_msgTypes[5].Exporter = func(v any, i int) any {
			switch v := v.(*CategorizeTransactionAndContinueRequest); i {
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
		file_budgeting_proto_msgTypes[6].Exporter = func(v any, i int) any {
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
		file_budgeting_proto_msgTypes[7].Exporter = func(v any, i int) any {
			switch v := v.(*GetTransactionCategoriesRequest); i {
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
		file_budgeting_proto_msgTypes[8].Exporter = func(v any, i int) any {
			switch v := v.(*GetTransactionCategoriesResponse); i {
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
		file_budgeting_proto_msgTypes[9].Exporter = func(v any, i int) any {
			switch v := v.(*TransactionCategoryResponse); i {
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
			RawDescriptor: file_budgeting_proto_rawDesc,
			NumEnums:      0,
			NumMessages:   10,
			NumExtensions: 0,
			NumServices:   0,
		},
		GoTypes:           file_budgeting_proto_goTypes,
		DependencyIndexes: file_budgeting_proto_depIdxs,
		MessageInfos:      file_budgeting_proto_msgTypes,
	}.Build()
	File_budgeting_proto = out.File
	file_budgeting_proto_rawDesc = nil
	file_budgeting_proto_goTypes = nil
	file_budgeting_proto_depIdxs = nil
}
