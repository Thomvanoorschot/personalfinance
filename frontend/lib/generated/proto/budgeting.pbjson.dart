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
    {'1': 'totalCount', '3': 2, '4': 1, '5': 3, '10': 'totalCount'},
  ],
};

/// Descriptor for `GetTransactionsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTransactionsResponseDescriptor = $convert.base64Decode(
    'ChdHZXRUcmFuc2FjdGlvbnNSZXNwb25zZRI4Cgx0cmFuc2FjdGlvbnMYASADKAsyFC5UcmFuc2'
    'FjdGlvblJlc3BvbnNlUgx0cmFuc2FjdGlvbnMSHgoKdG90YWxDb3VudBgCIAEoA1IKdG90YWxD'
    'b3VudA==');

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
    {'1': 'transactionCategorySlug', '3': 9, '4': 1, '5': 11, '6': '.google.protobuf.StringValue', '10': 'transactionCategorySlug'},
    {'1': 'transactionCategoryGroupSlug', '3': 10, '4': 1, '5': 11, '6': '.google.protobuf.StringValue', '10': 'transactionCategoryGroupSlug'},
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
    'lwdGlvbhJWChd0cmFuc2FjdGlvbkNhdGVnb3J5U2x1ZxgJIAEoCzIcLmdvb2dsZS5wcm90b2J1'
    'Zi5TdHJpbmdWYWx1ZVIXdHJhbnNhY3Rpb25DYXRlZ29yeVNsdWcSYAocdHJhbnNhY3Rpb25DYX'
    'RlZ29yeUdyb3VwU2x1ZxgKIAEoCzIcLmdvb2dsZS5wcm90b2J1Zi5TdHJpbmdWYWx1ZVIcdHJh'
    'bnNhY3Rpb25DYXRlZ29yeUdyb3VwU2x1ZxI4ChdiYWxhbmNlQWZ0ZXJUcmFuc2FjdGlvbhgLIA'
    'EoAVIXYmFsYW5jZUFmdGVyVHJhbnNhY3Rpb24=');

@$core.Deprecated('Use getTransactionCategoryGroupsRequestDescriptor instead')
const GetTransactionCategoryGroupsRequest$json = {
  '1': 'GetTransactionCategoryGroupsRequest',
};

/// Descriptor for `GetTransactionCategoryGroupsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTransactionCategoryGroupsRequestDescriptor = $convert.base64Decode(
    'CiNHZXRUcmFuc2FjdGlvbkNhdGVnb3J5R3JvdXBzUmVxdWVzdA==');

@$core.Deprecated('Use getTransactionCategoryGroupsResponseDescriptor instead')
const GetTransactionCategoryGroupsResponse$json = {
  '1': 'GetTransactionCategoryGroupsResponse',
  '2': [
    {'1': 'groups', '3': 1, '4': 3, '5': 11, '6': '.TransactionCategoryGroupResponse', '10': 'groups'},
  ],
};

/// Descriptor for `GetTransactionCategoryGroupsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTransactionCategoryGroupsResponseDescriptor = $convert.base64Decode(
    'CiRHZXRUcmFuc2FjdGlvbkNhdGVnb3J5R3JvdXBzUmVzcG9uc2USOQoGZ3JvdXBzGAEgAygLMi'
    'EuVHJhbnNhY3Rpb25DYXRlZ29yeUdyb3VwUmVzcG9uc2VSBmdyb3Vwcw==');

@$core.Deprecated('Use transactionCategoryGroupResponseDescriptor instead')
const TransactionCategoryGroupResponse$json = {
  '1': 'TransactionCategoryGroupResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'slug', '3': 2, '4': 1, '5': 9, '10': 'slug'},
    {'1': 'label', '3': 3, '4': 1, '5': 9, '10': 'label'},
    {'1': 'categories', '3': 4, '4': 3, '5': 11, '6': '.TransactionCategoryResponse', '10': 'categories'},
  ],
};

/// Descriptor for `TransactionCategoryGroupResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionCategoryGroupResponseDescriptor = $convert.base64Decode(
    'CiBUcmFuc2FjdGlvbkNhdGVnb3J5R3JvdXBSZXNwb25zZRIOCgJpZBgBIAEoCVICaWQSEgoEc2'
    'x1ZxgCIAEoCVIEc2x1ZxIUCgVsYWJlbBgDIAEoCVIFbGFiZWwSPAoKY2F0ZWdvcmllcxgEIAMo'
    'CzIcLlRyYW5zYWN0aW9uQ2F0ZWdvcnlSZXNwb25zZVIKY2F0ZWdvcmllcw==');

@$core.Deprecated('Use transactionCategoryResponseDescriptor instead')
const TransactionCategoryResponse$json = {
  '1': 'TransactionCategoryResponse',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'slug', '3': 2, '4': 1, '5': 9, '10': 'slug'},
    {'1': 'label', '3': 3, '4': 1, '5': 9, '10': 'label'},
  ],
};

/// Descriptor for `TransactionCategoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionCategoryResponseDescriptor = $convert.base64Decode(
    'ChtUcmFuc2FjdGlvbkNhdGVnb3J5UmVzcG9uc2USDgoCaWQYASABKAlSAmlkEhIKBHNsdWcYAi'
    'ABKAlSBHNsdWcSFAoFbGFiZWwYAyABKAlSBWxhYmVs');

@$core.Deprecated('Use getCategorizedTransactionResultsRequestDescriptor instead')
const GetCategorizedTransactionResultsRequest$json = {
  '1': 'GetCategorizedTransactionResultsRequest',
  '2': [
    {'1': 'start', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'start'},
    {'1': 'end', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'end'},
  ],
};

/// Descriptor for `GetCategorizedTransactionResultsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCategorizedTransactionResultsRequestDescriptor = $convert.base64Decode(
    'CidHZXRDYXRlZ29yaXplZFRyYW5zYWN0aW9uUmVzdWx0c1JlcXVlc3QSMAoFc3RhcnQYASABKA'
    'syGi5nb29nbGUucHJvdG9idWYuVGltZXN0YW1wUgVzdGFydBIsCgNlbmQYAiABKAsyGi5nb29n'
    'bGUucHJvdG9idWYuVGltZXN0YW1wUgNlbmQ=');

@$core.Deprecated('Use getCategorizedTransactionResultsResponseDescriptor instead')
const GetCategorizedTransactionResultsResponse$json = {
  '1': 'GetCategorizedTransactionResultsResponse',
  '2': [
    {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.GetCategorizedTransactionResultResponse', '10': 'results'},
  ],
};

/// Descriptor for `GetCategorizedTransactionResultsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCategorizedTransactionResultsResponseDescriptor = $convert.base64Decode(
    'CihHZXRDYXRlZ29yaXplZFRyYW5zYWN0aW9uUmVzdWx0c1Jlc3BvbnNlEkIKB3Jlc3VsdHMYAS'
    'ADKAsyKC5HZXRDYXRlZ29yaXplZFRyYW5zYWN0aW9uUmVzdWx0UmVzcG9uc2VSB3Jlc3VsdHM=');

@$core.Deprecated('Use getCategorizedTransactionResultResponseDescriptor instead')
const GetCategorizedTransactionResultResponse$json = {
  '1': 'GetCategorizedTransactionResultResponse',
  '2': [
    {'1': 'slug', '3': 1, '4': 1, '5': 9, '10': 'slug'},
    {'1': 'count', '3': 2, '4': 1, '5': 3, '10': 'count'},
    {'1': 'percentage', '3': 3, '4': 1, '5': 1, '10': 'percentage'},
    {'1': 'categories', '3': 4, '4': 3, '5': 11, '6': '.GetCategorizedTransactionResult', '10': 'categories'},
  ],
};

/// Descriptor for `GetCategorizedTransactionResultResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCategorizedTransactionResultResponseDescriptor = $convert.base64Decode(
    'CidHZXRDYXRlZ29yaXplZFRyYW5zYWN0aW9uUmVzdWx0UmVzcG9uc2USEgoEc2x1ZxgBIAEoCV'
    'IEc2x1ZxIUCgVjb3VudBgCIAEoA1IFY291bnQSHgoKcGVyY2VudGFnZRgDIAEoAVIKcGVyY2Vu'
    'dGFnZRJACgpjYXRlZ29yaWVzGAQgAygLMiAuR2V0Q2F0ZWdvcml6ZWRUcmFuc2FjdGlvblJlc3'
    'VsdFIKY2F0ZWdvcmllcw==');

@$core.Deprecated('Use getCategorizedTransactionResultDescriptor instead')
const GetCategorizedTransactionResult$json = {
  '1': 'GetCategorizedTransactionResult',
  '2': [
    {'1': 'slug', '3': 1, '4': 1, '5': 9, '10': 'slug'},
    {'1': 'count', '3': 2, '4': 1, '5': 3, '10': 'count'},
    {'1': 'percentage', '3': 3, '4': 1, '5': 1, '10': 'percentage'},
  ],
};

/// Descriptor for `GetCategorizedTransactionResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCategorizedTransactionResultDescriptor = $convert.base64Decode(
    'Ch9HZXRDYXRlZ29yaXplZFRyYW5zYWN0aW9uUmVzdWx0EhIKBHNsdWcYASABKAlSBHNsdWcSFA'
    'oFY291bnQYAiABKANSBWNvdW50Eh4KCnBlcmNlbnRhZ2UYAyABKAFSCnBlcmNlbnRhZ2U=');

@$core.Deprecated('Use getTransactionByIdRequestDescriptor instead')
const GetTransactionByIdRequest$json = {
  '1': 'GetTransactionByIdRequest',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'userId'},
    {'1': 'transactionId', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'transactionId'},
  ],
};

/// Descriptor for `GetTransactionByIdRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTransactionByIdRequestDescriptor = $convert.base64Decode(
    'ChlHZXRUcmFuc2FjdGlvbkJ5SWRSZXF1ZXN0EiAKBnVzZXJJZBgBIAEoCUIIukgFcgOwAQFSBn'
    'VzZXJJZBIuCg10cmFuc2FjdGlvbklkGAIgASgJQgi6SAVyA7ABAVINdHJhbnNhY3Rpb25JZA==');

@$core.Deprecated('Use getInAndOutgoingTransactionAmountsPerPeriodRequestDescriptor instead')
const GetInAndOutgoingTransactionAmountsPerPeriodRequest$json = {
  '1': 'GetInAndOutgoingTransactionAmountsPerPeriodRequest',
  '2': [
    {'1': 'period', '3': 1, '4': 1, '5': 14, '6': '.GetInAndOutgoingTransactionAmountsPerPeriodRequest.Period', '10': 'period'},
    {'1': 'limit', '3': 2, '4': 1, '5': 3, '10': 'limit'},
    {'1': 'offset', '3': 3, '4': 1, '5': 3, '10': 'offset'},
  ],
  '4': [GetInAndOutgoingTransactionAmountsPerPeriodRequest_Period$json],
};

@$core.Deprecated('Use getInAndOutgoingTransactionAmountsPerPeriodRequestDescriptor instead')
const GetInAndOutgoingTransactionAmountsPerPeriodRequest_Period$json = {
  '1': 'Period',
  '2': [
    {'1': 'day', '2': 0},
    {'1': 'week', '2': 1},
    {'1': 'month', '2': 2},
  ],
};

/// Descriptor for `GetInAndOutgoingTransactionAmountsPerPeriodRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getInAndOutgoingTransactionAmountsPerPeriodRequestDescriptor = $convert.base64Decode(
    'CjJHZXRJbkFuZE91dGdvaW5nVHJhbnNhY3Rpb25BbW91bnRzUGVyUGVyaW9kUmVxdWVzdBJSCg'
    'ZwZXJpb2QYASABKA4yOi5HZXRJbkFuZE91dGdvaW5nVHJhbnNhY3Rpb25BbW91bnRzUGVyUGVy'
    'aW9kUmVxdWVzdC5QZXJpb2RSBnBlcmlvZBIUCgVsaW1pdBgCIAEoA1IFbGltaXQSFgoGb2Zmc2'
    'V0GAMgASgDUgZvZmZzZXQiJgoGUGVyaW9kEgcKA2RheRAAEggKBHdlZWsQARIJCgVtb250aBAC');

@$core.Deprecated('Use getInAndOutgoingTransactionAmountsPerPeriodResponseDescriptor instead')
const GetInAndOutgoingTransactionAmountsPerPeriodResponse$json = {
  '1': 'GetInAndOutgoingTransactionAmountsPerPeriodResponse',
  '2': [
    {'1': 'periods', '3': 1, '4': 3, '5': 11, '6': '.InAndOutgoingTransactionAmountPeriod', '10': 'periods'},
  ],
};

/// Descriptor for `GetInAndOutgoingTransactionAmountsPerPeriodResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getInAndOutgoingTransactionAmountsPerPeriodResponseDescriptor = $convert.base64Decode(
    'CjNHZXRJbkFuZE91dGdvaW5nVHJhbnNhY3Rpb25BbW91bnRzUGVyUGVyaW9kUmVzcG9uc2USPw'
    'oHcGVyaW9kcxgBIAMoCzIlLkluQW5kT3V0Z29pbmdUcmFuc2FjdGlvbkFtb3VudFBlcmlvZFIH'
    'cGVyaW9kcw==');

@$core.Deprecated('Use inAndOutgoingTransactionAmountPeriodDescriptor instead')
const InAndOutgoingTransactionAmountPeriod$json = {
  '1': 'InAndOutgoingTransactionAmountPeriod',
  '2': [
    {'1': 'startOfPeriod', '3': 1, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '10': 'startOfPeriod'},
    {'1': 'ingoingAmount', '3': 2, '4': 1, '5': 1, '10': 'ingoingAmount'},
    {'1': 'outgoingAmount', '3': 3, '4': 1, '5': 1, '10': 'outgoingAmount'},
  ],
};

/// Descriptor for `InAndOutgoingTransactionAmountPeriod`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inAndOutgoingTransactionAmountPeriodDescriptor = $convert.base64Decode(
    'CiRJbkFuZE91dGdvaW5nVHJhbnNhY3Rpb25BbW91bnRQZXJpb2QSQAoNc3RhcnRPZlBlcmlvZB'
    'gBIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSDXN0YXJ0T2ZQZXJpb2QSJAoNaW5n'
    'b2luZ0Ftb3VudBgCIAEoAVINaW5nb2luZ0Ftb3VudBImCg5vdXRnb2luZ0Ftb3VudBgDIAEoAV'
    'IOb3V0Z29pbmdBbW91bnQ=');

@$core.Deprecated('Use associateTransactionRequestDescriptor instead')
const AssociateTransactionRequest$json = {
  '1': 'AssociateTransactionRequest',
  '2': [
    {'1': 'transactionId', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'transactionId'},
    {'1': 'associatedTransactionId', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'associatedTransactionId'},
  ],
};

/// Descriptor for `AssociateTransactionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List associateTransactionRequestDescriptor = $convert.base64Decode(
    'ChtBc3NvY2lhdGVUcmFuc2FjdGlvblJlcXVlc3QSLgoNdHJhbnNhY3Rpb25JZBgBIAEoCUIIuk'
    'gFcgOwAQFSDXRyYW5zYWN0aW9uSWQSQgoXYXNzb2NpYXRlZFRyYW5zYWN0aW9uSWQYAiABKAlC'
    'CLpIBXIDsAEBUhdhc3NvY2lhdGVkVHJhbnNhY3Rpb25JZA==');

@$core.Deprecated('Use associateTransactionResponseDescriptor instead')
const AssociateTransactionResponse$json = {
  '1': 'AssociateTransactionResponse',
};

/// Descriptor for `AssociateTransactionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List associateTransactionResponseDescriptor = $convert.base64Decode(
    'ChxBc3NvY2lhdGVUcmFuc2FjdGlvblJlc3BvbnNl');

