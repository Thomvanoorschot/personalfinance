//
//  Generated code. Do not modify.
//  source: budgeting.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

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

@$core.Deprecated('Use getUncategorizedTransactionRequestDescriptor instead')
const GetUncategorizedTransactionRequest$json = {
  '1': 'GetUncategorizedTransactionRequest',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'userId'},
  ],
};

/// Descriptor for `GetUncategorizedTransactionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUncategorizedTransactionRequestDescriptor = $convert.base64Decode(
    'CiJHZXRVbmNhdGVnb3JpemVkVHJhbnNhY3Rpb25SZXF1ZXN0EiAKBnVzZXJJZBgBIAEoCUIIuk'
    'gFcgOwAQFSBnVzZXJJZA==');

@$core.Deprecated('Use getUncategorizedTransactionResponseDescriptor instead')
const GetUncategorizedTransactionResponse$json = {
  '1': 'GetUncategorizedTransactionResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'date', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'date'},
    {'1': 'transactionAmount', '3': 3, '4': 1, '5': 1, '10': 'transactionAmount'},
    {'1': 'currency', '3': 4, '4': 1, '5': 9, '10': 'currency'},
    {'1': 'partyName', '3': 5, '4': 1, '5': 9, '10': 'partyName'},
    {'1': 'partyIban', '3': 6, '4': 1, '5': 9, '10': 'partyIban'},
    {'1': 'description', '3': 7, '4': 1, '5': 9, '10': 'description'},
    {'1': 'matchingTransactions', '3': 8, '4': 3, '5': 11, '6': '.MatchingUncategorizedTransactionResponse', '10': 'matchingTransactions'},
  ],
};

/// Descriptor for `GetUncategorizedTransactionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUncategorizedTransactionResponseDescriptor = $convert.base64Decode(
    'CiNHZXRVbmNhdGVnb3JpemVkVHJhbnNhY3Rpb25SZXNwb25zZRIOCgJpZBgBIAEoCVICaWQSLg'
    'oEZGF0ZRgCIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSBGRhdGUSLAoRdHJhbnNh'
    'Y3Rpb25BbW91bnQYAyABKAFSEXRyYW5zYWN0aW9uQW1vdW50EhoKCGN1cnJlbmN5GAQgASgJUg'
    'hjdXJyZW5jeRIcCglwYXJ0eU5hbWUYBSABKAlSCXBhcnR5TmFtZRIcCglwYXJ0eUliYW4YBiAB'
    'KAlSCXBhcnR5SWJhbhIgCgtkZXNjcmlwdGlvbhgHIAEoCVILZGVzY3JpcHRpb24SXQoUbWF0Y2'
    'hpbmdUcmFuc2FjdGlvbnMYCCADKAsyKS5NYXRjaGluZ1VuY2F0ZWdvcml6ZWRUcmFuc2FjdGlv'
    'blJlc3BvbnNlUhRtYXRjaGluZ1RyYW5zYWN0aW9ucw==');

@$core.Deprecated('Use matchingUncategorizedTransactionResponseDescriptor instead')
const MatchingUncategorizedTransactionResponse$json = {
  '1': 'MatchingUncategorizedTransactionResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'date', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'date'},
    {'1': 'transactionAmount', '3': 3, '4': 1, '5': 1, '10': 'transactionAmount'},
  ],
};

/// Descriptor for `MatchingUncategorizedTransactionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List matchingUncategorizedTransactionResponseDescriptor = $convert.base64Decode(
    'CihNYXRjaGluZ1VuY2F0ZWdvcml6ZWRUcmFuc2FjdGlvblJlc3BvbnNlEg4KAmlkGAEgASgJUg'
    'JpZBIuCgRkYXRlGAIgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIEZGF0ZRIsChF0'
    'cmFuc2FjdGlvbkFtb3VudBgDIAEoAVIRdHJhbnNhY3Rpb25BbW91bnQ=');

@$core.Deprecated('Use categorizeTransactionAndContinueRequestDescriptor instead')
const CategorizeTransactionAndContinueRequest$json = {
  '1': 'CategorizeTransactionAndContinueRequest',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'userId'},
    {'1': 'transactionIds', '3': 2, '4': 3, '5': 9, '10': 'transactionIds'},
    {'1': 'categoryId', '3': 3, '4': 1, '5': 9, '8': {}, '10': 'categoryId'},
  ],
};

/// Descriptor for `CategorizeTransactionAndContinueRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List categorizeTransactionAndContinueRequestDescriptor = $convert.base64Decode(
    'CidDYXRlZ29yaXplVHJhbnNhY3Rpb25BbmRDb250aW51ZVJlcXVlc3QSIAoGdXNlcklkGAEgAS'
    'gJQgi6SAVyA7ABAVIGdXNlcklkEiYKDnRyYW5zYWN0aW9uSWRzGAIgAygJUg50cmFuc2FjdGlv'
    'bklkcxIoCgpjYXRlZ29yeUlkGAMgASgJQgi6SAVyA7ABAVIKY2F0ZWdvcnlJZA==');

@$core.Deprecated('Use transactionResponseDescriptor instead')
const TransactionResponse$json = {
  '1': 'TransactionResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'accountId', '3': 2, '4': 1, '5': 9, '10': 'accountId'},
    {'1': 'date', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'date'},
    {'1': 'transactionAmount', '3': 4, '4': 1, '5': 1, '10': 'transactionAmount'},
    {'1': 'currency', '3': 5, '4': 1, '5': 9, '10': 'currency'},
    {'1': 'partyName', '3': 6, '4': 1, '5': 9, '10': 'partyName'},
    {'1': 'partyIban', '3': 7, '4': 1, '5': 9, '10': 'partyIban'},
    {'1': 'description', '3': 8, '4': 1, '5': 9, '10': 'description'},
    {'1': 'transactionCategoryLabel', '3': 9, '4': 1, '5': 9, '10': 'transactionCategoryLabel'},
    {'1': 'transactionCategoryId', '3': 10, '4': 1, '5': 9, '10': 'transactionCategoryId'},
    {'1': 'balanceAfterTransaction', '3': 11, '4': 1, '5': 1, '10': 'balanceAfterTransaction'},
  ],
};

/// Descriptor for `TransactionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionResponseDescriptor = $convert.base64Decode(
    'ChNUcmFuc2FjdGlvblJlc3BvbnNlEg4KAmlkGAEgASgJUgJpZBIcCglhY2NvdW50SWQYAiABKA'
    'lSCWFjY291bnRJZBIuCgRkYXRlGAMgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcFIE'
    'ZGF0ZRIsChF0cmFuc2FjdGlvbkFtb3VudBgEIAEoAVIRdHJhbnNhY3Rpb25BbW91bnQSGgoIY3'
    'VycmVuY3kYBSABKAlSCGN1cnJlbmN5EhwKCXBhcnR5TmFtZRgGIAEoCVIJcGFydHlOYW1lEhwK'
    'CXBhcnR5SWJhbhgHIAEoCVIJcGFydHlJYmFuEiAKC2Rlc2NyaXB0aW9uGAggASgJUgtkZXNjcm'
    'lwdGlvbhI6Chh0cmFuc2FjdGlvbkNhdGVnb3J5TGFiZWwYCSABKAlSGHRyYW5zYWN0aW9uQ2F0'
    'ZWdvcnlMYWJlbBI0ChV0cmFuc2FjdGlvbkNhdGVnb3J5SWQYCiABKAlSFXRyYW5zYWN0aW9uQ2'
    'F0ZWdvcnlJZBI4ChdiYWxhbmNlQWZ0ZXJUcmFuc2FjdGlvbhgLIAEoAVIXYmFsYW5jZUFmdGVy'
    'VHJhbnNhY3Rpb24=');

@$core.Deprecated('Use getTransactionCategoriesRequestDescriptor instead')
const GetTransactionCategoriesRequest$json = {
  '1': 'GetTransactionCategoriesRequest',
};

/// Descriptor for `GetTransactionCategoriesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTransactionCategoriesRequestDescriptor = $convert.base64Decode(
    'Ch9HZXRUcmFuc2FjdGlvbkNhdGVnb3JpZXNSZXF1ZXN0');

@$core.Deprecated('Use getTransactionCategoriesResponseDescriptor instead')
const GetTransactionCategoriesResponse$json = {
  '1': 'GetTransactionCategoriesResponse',
  '2': [
    {'1': 'categories', '3': 1, '4': 3, '5': 11, '6': '.TransactionCategoryResponse', '10': 'categories'},
  ],
};

/// Descriptor for `GetTransactionCategoriesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTransactionCategoriesResponseDescriptor = $convert.base64Decode(
    'CiBHZXRUcmFuc2FjdGlvbkNhdGVnb3JpZXNSZXNwb25zZRI8CgpjYXRlZ29yaWVzGAEgAygLMh'
    'wuVHJhbnNhY3Rpb25DYXRlZ29yeVJlc3BvbnNlUgpjYXRlZ29yaWVz');

@$core.Deprecated('Use transactionCategoryResponseDescriptor instead')
const TransactionCategoryResponse$json = {
  '1': 'TransactionCategoryResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'label', '3': 2, '4': 1, '5': 9, '10': 'label'},
  ],
};

/// Descriptor for `TransactionCategoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionCategoryResponseDescriptor = $convert.base64Decode(
    'ChtUcmFuc2FjdGlvbkNhdGVnb3J5UmVzcG9uc2USDgoCaWQYASABKAlSAmlkEhQKBWxhYmVsGA'
    'IgASgJUgVsYWJlbA==');

