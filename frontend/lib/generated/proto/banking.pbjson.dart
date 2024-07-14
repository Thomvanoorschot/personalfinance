//
//  Generated code. Do not modify.
//  source: banking.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use getBanksRequestDescriptor instead')
const GetBanksRequest$json = {
  '1': 'GetBanksRequest',
  '2': [
    {'1': 'countryCode', '3': 1, '4': 1, '5': 9, '10': 'countryCode'},
  ],
};

/// Descriptor for `GetBanksRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBanksRequestDescriptor = $convert.base64Decode(
    'Cg9HZXRCYW5rc1JlcXVlc3QSIAoLY291bnRyeUNvZGUYASABKAlSC2NvdW50cnlDb2Rl');

@$core.Deprecated('Use getBanksResponseDescriptor instead')
const GetBanksResponse$json = {
  '1': 'GetBanksResponse',
  '2': [
    {'1': 'banks', '3': 1, '4': 3, '5': 11, '6': '.BankResponse', '10': 'banks'},
  ],
};

/// Descriptor for `GetBanksResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBanksResponseDescriptor = $convert.base64Decode(
    'ChBHZXRCYW5rc1Jlc3BvbnNlEiMKBWJhbmtzGAEgAygLMg0uQmFua1Jlc3BvbnNlUgViYW5rcw'
    '==');

@$core.Deprecated('Use bankResponseDescriptor instead')
const BankResponse$json = {
  '1': 'BankResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'iconURL', '3': 3, '4': 1, '5': 9, '10': 'iconURL'},
  ],
};

/// Descriptor for `BankResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bankResponseDescriptor = $convert.base64Decode(
    'CgxCYW5rUmVzcG9uc2USDgoCaWQYASABKAlSAmlkEhIKBG5hbWUYAiABKAlSBG5hbWUSGAoHaW'
    'NvblVSTBgDIAEoCVIHaWNvblVSTA==');

@$core.Deprecated('Use createRequisitionRequestDescriptor instead')
const CreateRequisitionRequest$json = {
  '1': 'CreateRequisitionRequest',
  '2': [
    {'1': 'institutionId', '3': 1, '4': 1, '5': 9, '10': 'institutionId'},
  ],
};

/// Descriptor for `CreateRequisitionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createRequisitionRequestDescriptor = $convert.base64Decode(
    'ChhDcmVhdGVSZXF1aXNpdGlvblJlcXVlc3QSJAoNaW5zdGl0dXRpb25JZBgBIAEoCVINaW5zdG'
    'l0dXRpb25JZA==');

@$core.Deprecated('Use createRequisitionResponseDescriptor instead')
const CreateRequisitionResponse$json = {
  '1': 'CreateRequisitionResponse',
  '2': [
    {'1': 'url', '3': 1, '4': 1, '5': 9, '10': 'url'},
  ],
};

/// Descriptor for `CreateRequisitionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createRequisitionResponseDescriptor = $convert.base64Decode(
    'ChlDcmVhdGVSZXF1aXNpdGlvblJlc3BvbnNlEhAKA3VybBgBIAEoCVIDdXJs');

@$core.Deprecated('Use getTransactionsRequestDescriptor instead')
const GetTransactionsRequest$json = {
  '1': 'GetTransactionsRequest',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'userId'},
    {'1': 'limit', '3': 2, '4': 1, '5': 3, '10': 'limit'},
    {'1': 'offset', '3': 3, '4': 1, '5': 3, '10': 'offset'},
  ],
};

/// Descriptor for `GetTransactionsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTransactionsRequestDescriptor = $convert.base64Decode(
    'ChZHZXRUcmFuc2FjdGlvbnNSZXF1ZXN0EiAKBnVzZXJJZBgBIAEoCUIIukgFcgOwAQFSBnVzZX'
    'JJZBIUCgVsaW1pdBgCIAEoA1IFbGltaXQSFgoGb2Zmc2V0GAMgASgDUgZvZmZzZXQ=');

@$core.Deprecated('Use getTransactionsResponseDescriptor instead')
const GetTransactionsResponse$json = {
  '1': 'GetTransactionsResponse',
  '2': [
    {'1': 'transactions', '3': 1, '4': 3, '5': 11, '6': '.TransactionResponse', '10': 'transactions'},
  ],
};

/// Descriptor for `GetTransactionsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTransactionsResponseDescriptor = $convert.base64Decode(
    'ChdHZXRUcmFuc2FjdGlvbnNSZXNwb25zZRI4Cgx0cmFuc2FjdGlvbnMYASADKAsyFC5UcmFuc2'
    'FjdGlvblJlc3BvbnNlUgx0cmFuc2FjdGlvbnM=');

@$core.Deprecated('Use transactionResponseDescriptor instead')
const TransactionResponse$json = {
  '1': 'TransactionResponse',
  '2': [
    {'1': 'accountId', '3': 1, '4': 1, '5': 9, '10': 'accountId'},
    {'1': 'bookingDate', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'bookingDate'},
    {'1': 'transactionAmount', '3': 3, '4': 1, '5': 1, '10': 'transactionAmount'},
    {'1': 'currency', '3': 4, '4': 1, '5': 9, '10': 'currency'},
    {'1': 'creditorName', '3': 5, '4': 1, '5': 9, '10': 'creditorName'},
    {'1': 'creditorIban', '3': 6, '4': 1, '5': 9, '10': 'creditorIban'},
    {'1': 'description', '3': 7, '4': 1, '5': 9, '10': 'description'},
    {'1': 'debtorName', '3': 8, '4': 1, '5': 9, '10': 'debtorName'},
    {'1': 'debtorIban', '3': 9, '4': 1, '5': 9, '10': 'debtorIban'},
    {'1': 'transactionCategoryLabel', '3': 10, '4': 1, '5': 9, '10': 'transactionCategoryLabel'},
    {'1': 'transactionCategoryId', '3': 11, '4': 1, '5': 9, '10': 'transactionCategoryId'},
    {'1': 'balanceAfterTransaction', '3': 12, '4': 1, '5': 9, '10': 'balanceAfterTransaction'},
  ],
};

/// Descriptor for `TransactionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionResponseDescriptor = $convert.base64Decode(
    'ChNUcmFuc2FjdGlvblJlc3BvbnNlEhwKCWFjY291bnRJZBgBIAEoCVIJYWNjb3VudElkEjwKC2'
    'Jvb2tpbmdEYXRlGAIgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFILYm9va2luZ0Rh'
    'dGUSLAoRdHJhbnNhY3Rpb25BbW91bnQYAyABKAFSEXRyYW5zYWN0aW9uQW1vdW50EhoKCGN1cn'
    'JlbmN5GAQgASgJUghjdXJyZW5jeRIiCgxjcmVkaXRvck5hbWUYBSABKAlSDGNyZWRpdG9yTmFt'
    'ZRIiCgxjcmVkaXRvckliYW4YBiABKAlSDGNyZWRpdG9ySWJhbhIgCgtkZXNjcmlwdGlvbhgHIA'
    'EoCVILZGVzY3JpcHRpb24SHgoKZGVidG9yTmFtZRgIIAEoCVIKZGVidG9yTmFtZRIeCgpkZWJ0'
    'b3JJYmFuGAkgASgJUgpkZWJ0b3JJYmFuEjoKGHRyYW5zYWN0aW9uQ2F0ZWdvcnlMYWJlbBgKIA'
    'EoCVIYdHJhbnNhY3Rpb25DYXRlZ29yeUxhYmVsEjQKFXRyYW5zYWN0aW9uQ2F0ZWdvcnlJZBgL'
    'IAEoCVIVdHJhbnNhY3Rpb25DYXRlZ29yeUlkEjgKF2JhbGFuY2VBZnRlclRyYW5zYWN0aW9uGA'
    'wgASgJUhdiYWxhbmNlQWZ0ZXJUcmFuc2FjdGlvbg==');

@$core.Deprecated('Use handleRequisitionRequestDescriptor instead')
const HandleRequisitionRequest$json = {
  '1': 'HandleRequisitionRequest',
  '2': [
    {'1': 'requisitionReference', '3': 1, '4': 1, '5': 9, '10': 'requisitionReference'},
  ],
};

/// Descriptor for `HandleRequisitionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List handleRequisitionRequestDescriptor = $convert.base64Decode(
    'ChhIYW5kbGVSZXF1aXNpdGlvblJlcXVlc3QSMgoUcmVxdWlzaXRpb25SZWZlcmVuY2UYASABKA'
    'lSFHJlcXVpc2l0aW9uUmVmZXJlbmNl');

@$core.Deprecated('Use handleRequisitionResponseDescriptor instead')
const HandleRequisitionResponse$json = {
  '1': 'HandleRequisitionResponse',
};

/// Descriptor for `HandleRequisitionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List handleRequisitionResponseDescriptor = $convert.base64Decode(
    'ChlIYW5kbGVSZXF1aXNpdGlvblJlc3BvbnNl');

@$core.Deprecated('Use getBankAccountsRequestDescriptor instead')
const GetBankAccountsRequest$json = {
  '1': 'GetBankAccountsRequest',
  '2': [
    {'1': 'requisitionReference', '3': 1, '4': 1, '5': 9, '10': 'requisitionReference'},
  ],
};

/// Descriptor for `GetBankAccountsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBankAccountsRequestDescriptor = $convert.base64Decode(
    'ChZHZXRCYW5rQWNjb3VudHNSZXF1ZXN0EjIKFHJlcXVpc2l0aW9uUmVmZXJlbmNlGAEgASgJUh'
    'RyZXF1aXNpdGlvblJlZmVyZW5jZQ==');

@$core.Deprecated('Use getBankAccountsResponseDescriptor instead')
const GetBankAccountsResponse$json = {
  '1': 'GetBankAccountsResponse',
  '2': [
    {'1': 'accounts', '3': 1, '4': 3, '5': 11, '6': '.BankAccountResponse', '10': 'accounts'},
  ],
};

/// Descriptor for `GetBankAccountsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getBankAccountsResponseDescriptor = $convert.base64Decode(
    'ChdHZXRCYW5rQWNjb3VudHNSZXNwb25zZRIwCghhY2NvdW50cxgBIAMoCzIULkJhbmtBY2NvdW'
    '50UmVzcG9uc2VSCGFjY291bnRz');

@$core.Deprecated('Use bankAccountResponseDescriptor instead')
const BankAccountResponse$json = {
  '1': 'BankAccountResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'iban', '3': 2, '4': 1, '5': 9, '10': 'iban'},
    {'1': 'bankName', '3': 3, '4': 1, '5': 9, '10': 'bankName'},
    {'1': 'iconURL', '3': 4, '4': 1, '5': 9, '10': 'iconURL'},
  ],
};

/// Descriptor for `BankAccountResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bankAccountResponseDescriptor = $convert.base64Decode(
    'ChNCYW5rQWNjb3VudFJlc3BvbnNlEg4KAmlkGAEgASgJUgJpZBISCgRpYmFuGAIgASgJUgRpYm'
    'FuEhoKCGJhbmtOYW1lGAMgASgJUghiYW5rTmFtZRIYCgdpY29uVVJMGAQgASgJUgdpY29uVVJM');

