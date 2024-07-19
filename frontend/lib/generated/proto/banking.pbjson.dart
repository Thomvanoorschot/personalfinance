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

