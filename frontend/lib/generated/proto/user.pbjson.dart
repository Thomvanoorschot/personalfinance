//
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use registerUnverifiedUserRequestDescriptor instead')
const RegisterUnverifiedUserRequest$json = {
  '1': 'RegisterUnverifiedUserRequest',
  '2': [
    {'1': 'uniqueDeviceId', '3': 1, '4': 1, '5': 9, '10': 'uniqueDeviceId'},
  ],
};

/// Descriptor for `RegisterUnverifiedUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerUnverifiedUserRequestDescriptor = $convert.base64Decode(
    'Ch1SZWdpc3RlclVudmVyaWZpZWRVc2VyUmVxdWVzdBImCg51bmlxdWVEZXZpY2VJZBgBIAEoCV'
    'IOdW5pcXVlRGV2aWNlSWQ=');

@$core.Deprecated('Use registerUnverifiedUserResponseDescriptor instead')
const RegisterUnverifiedUserResponse$json = {
  '1': 'RegisterUnverifiedUserResponse',
  '2': [
    {'1': 'userId', '3': 1, '4': 1, '5': 9, '8': {}, '10': 'userId'},
  ],
};

/// Descriptor for `RegisterUnverifiedUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List registerUnverifiedUserResponseDescriptor = $convert.base64Decode(
    'Ch5SZWdpc3RlclVudmVyaWZpZWRVc2VyUmVzcG9uc2USIAoGdXNlcklkGAEgASgJQgi6SAVyA7'
    'ABAVIGdXNlcklk');

@$core.Deprecated('Use linkUserRequestDescriptor instead')
const LinkUserRequest$json = {
  '1': 'LinkUserRequest',
  '2': [
    {'1': 'uniqueDeviceId', '3': 1, '4': 1, '5': 9, '10': 'uniqueDeviceId'},
    {'1': 'email', '3': 2, '4': 1, '5': 9, '8': {}, '10': 'email'},
  ],
};

/// Descriptor for `LinkUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List linkUserRequestDescriptor = $convert.base64Decode(
    'Cg9MaW5rVXNlclJlcXVlc3QSJgoOdW5pcXVlRGV2aWNlSWQYASABKAlSDnVuaXF1ZURldmljZU'
    'lkEh0KBWVtYWlsGAIgASgJQge6SARyAmABUgVlbWFpbA==');

@$core.Deprecated('Use linkUserResponseDescriptor instead')
const LinkUserResponse$json = {
  '1': 'LinkUserResponse',
};

/// Descriptor for `LinkUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List linkUserResponseDescriptor = $convert.base64Decode(
    'ChBMaW5rVXNlclJlc3BvbnNl');

