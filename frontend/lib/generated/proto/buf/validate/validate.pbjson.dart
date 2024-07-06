//
//  Generated code. Do not modify.
//  source: buf/validate/validate.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use ignoreDescriptor instead')
const Ignore$json = {
  '1': 'Ignore',
  '2': [
    {'1': 'IGNORE_UNSPECIFIED', '2': 0},
    {'1': 'IGNORE_IF_UNPOPULATED', '2': 1},
    {'1': 'IGNORE_IF_DEFAULT_VALUE', '2': 2},
    {'1': 'IGNORE_ALWAYS', '2': 3},
    {
      '1': 'IGNORE_EMPTY',
      '2': 1,
      '3': {'1': true},
    },
    {
      '1': 'IGNORE_DEFAULT',
      '2': 2,
      '3': {'1': true},
    },
  ],
  '3': {'2': true},
};

/// Descriptor for `Ignore`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List ignoreDescriptor = $convert.base64Decode(
    'CgZJZ25vcmUSFgoSSUdOT1JFX1VOU1BFQ0lGSUVEEAASGQoVSUdOT1JFX0lGX1VOUE9QVUxBVE'
    'VEEAESGwoXSUdOT1JFX0lGX0RFRkFVTFRfVkFMVUUQAhIRCg1JR05PUkVfQUxXQVlTEAMSFAoM'
    'SUdOT1JFX0VNUFRZEAEaAggBEhYKDklHTk9SRV9ERUZBVUxUEAIaAggBGgIQAQ==');

@$core.Deprecated('Use knownRegexDescriptor instead')
const KnownRegex$json = {
  '1': 'KnownRegex',
  '2': [
    {'1': 'KNOWN_REGEX_UNSPECIFIED', '2': 0},
    {'1': 'KNOWN_REGEX_HTTP_HEADER_NAME', '2': 1},
    {'1': 'KNOWN_REGEX_HTTP_HEADER_VALUE', '2': 2},
  ],
};

/// Descriptor for `KnownRegex`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List knownRegexDescriptor = $convert.base64Decode(
    'CgpLbm93blJlZ2V4EhsKF0tOT1dOX1JFR0VYX1VOU1BFQ0lGSUVEEAASIAocS05PV05fUkVHRV'
    'hfSFRUUF9IRUFERVJfTkFNRRABEiEKHUtOT1dOX1JFR0VYX0hUVFBfSEVBREVSX1ZBTFVFEAI=');

@$core.Deprecated('Use messageConstraintsDescriptor instead')
const MessageConstraints$json = {
  '1': 'MessageConstraints',
  '2': [
    {'1': 'disabled', '3': 1, '4': 1, '5': 8, '9': 0, '10': 'disabled', '17': true},
    {'1': 'cel', '3': 3, '4': 3, '5': 11, '6': '.buf.validate.Constraint', '10': 'cel'},
  ],
  '8': [
    {'1': '_disabled'},
  ],
};

/// Descriptor for `MessageConstraints`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List messageConstraintsDescriptor = $convert.base64Decode(
    'ChJNZXNzYWdlQ29uc3RyYWludHMSHwoIZGlzYWJsZWQYASABKAhIAFIIZGlzYWJsZWSIAQESKg'
    'oDY2VsGAMgAygLMhguYnVmLnZhbGlkYXRlLkNvbnN0cmFpbnRSA2NlbEILCglfZGlzYWJsZWQ=');

@$core.Deprecated('Use oneofConstraintsDescriptor instead')
const OneofConstraints$json = {
  '1': 'OneofConstraints',
  '2': [
    {'1': 'required', '3': 1, '4': 1, '5': 8, '9': 0, '10': 'required', '17': true},
  ],
  '8': [
    {'1': '_required'},
  ],
};

/// Descriptor for `OneofConstraints`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List oneofConstraintsDescriptor = $convert.base64Decode(
    'ChBPbmVvZkNvbnN0cmFpbnRzEh8KCHJlcXVpcmVkGAEgASgISABSCHJlcXVpcmVkiAEBQgsKCV'
    '9yZXF1aXJlZA==');

@$core.Deprecated('Use fieldConstraintsDescriptor instead')
const FieldConstraints$json = {
  '1': 'FieldConstraints',
  '2': [
    {'1': 'cel', '3': 23, '4': 3, '5': 11, '6': '.buf.validate.Constraint', '10': 'cel'},
    {'1': 'required', '3': 25, '4': 1, '5': 8, '10': 'required'},
    {'1': 'ignore', '3': 27, '4': 1, '5': 14, '6': '.buf.validate.Ignore', '10': 'ignore'},
    {'1': 'float', '3': 1, '4': 1, '5': 11, '6': '.buf.validate.FloatRules', '9': 0, '10': 'float'},
    {'1': 'double', '3': 2, '4': 1, '5': 11, '6': '.buf.validate.DoubleRules', '9': 0, '10': 'double'},
    {'1': 'int32', '3': 3, '4': 1, '5': 11, '6': '.buf.validate.Int32Rules', '9': 0, '10': 'int32'},
    {'1': 'int64', '3': 4, '4': 1, '5': 11, '6': '.buf.validate.Int64Rules', '9': 0, '10': 'int64'},
    {'1': 'uint32', '3': 5, '4': 1, '5': 11, '6': '.buf.validate.UInt32Rules', '9': 0, '10': 'uint32'},
    {'1': 'uint64', '3': 6, '4': 1, '5': 11, '6': '.buf.validate.UInt64Rules', '9': 0, '10': 'uint64'},
    {'1': 'sint32', '3': 7, '4': 1, '5': 11, '6': '.buf.validate.SInt32Rules', '9': 0, '10': 'sint32'},
    {'1': 'sint64', '3': 8, '4': 1, '5': 11, '6': '.buf.validate.SInt64Rules', '9': 0, '10': 'sint64'},
    {'1': 'fixed32', '3': 9, '4': 1, '5': 11, '6': '.buf.validate.Fixed32Rules', '9': 0, '10': 'fixed32'},
    {'1': 'fixed64', '3': 10, '4': 1, '5': 11, '6': '.buf.validate.Fixed64Rules', '9': 0, '10': 'fixed64'},
    {'1': 'sfixed32', '3': 11, '4': 1, '5': 11, '6': '.buf.validate.SFixed32Rules', '9': 0, '10': 'sfixed32'},
    {'1': 'sfixed64', '3': 12, '4': 1, '5': 11, '6': '.buf.validate.SFixed64Rules', '9': 0, '10': 'sfixed64'},
    {'1': 'bool', '3': 13, '4': 1, '5': 11, '6': '.buf.validate.BoolRules', '9': 0, '10': 'bool'},
    {'1': 'string', '3': 14, '4': 1, '5': 11, '6': '.buf.validate.StringRules', '9': 0, '10': 'string'},
    {'1': 'bytes', '3': 15, '4': 1, '5': 11, '6': '.buf.validate.BytesRules', '9': 0, '10': 'bytes'},
    {'1': 'enum', '3': 16, '4': 1, '5': 11, '6': '.buf.validate.EnumRules', '9': 0, '10': 'enum'},
    {'1': 'repeated', '3': 18, '4': 1, '5': 11, '6': '.buf.validate.RepeatedRules', '9': 0, '10': 'repeated'},
    {'1': 'map', '3': 19, '4': 1, '5': 11, '6': '.buf.validate.MapRules', '9': 0, '10': 'map'},
    {'1': 'any', '3': 20, '4': 1, '5': 11, '6': '.buf.validate.AnyRules', '9': 0, '10': 'any'},
    {'1': 'duration', '3': 21, '4': 1, '5': 11, '6': '.buf.validate.DurationRules', '9': 0, '10': 'duration'},
    {'1': 'timestamp', '3': 22, '4': 1, '5': 11, '6': '.buf.validate.TimestampRules', '9': 0, '10': 'timestamp'},
    {
      '1': 'skipped',
      '3': 24,
      '4': 1,
      '5': 8,
      '8': {'3': true},
      '10': 'skipped',
    },
    {
      '1': 'ignore_empty',
      '3': 26,
      '4': 1,
      '5': 8,
      '8': {'3': true},
      '10': 'ignoreEmpty',
    },
  ],
  '8': [
    {'1': 'type'},
  ],
};

/// Descriptor for `FieldConstraints`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fieldConstraintsDescriptor = $convert.base64Decode(
    'ChBGaWVsZENvbnN0cmFpbnRzEioKA2NlbBgXIAMoCzIYLmJ1Zi52YWxpZGF0ZS5Db25zdHJhaW'
    '50UgNjZWwSGgoIcmVxdWlyZWQYGSABKAhSCHJlcXVpcmVkEiwKBmlnbm9yZRgbIAEoDjIULmJ1'
    'Zi52YWxpZGF0ZS5JZ25vcmVSBmlnbm9yZRIwCgVmbG9hdBgBIAEoCzIYLmJ1Zi52YWxpZGF0ZS'
    '5GbG9hdFJ1bGVzSABSBWZsb2F0EjMKBmRvdWJsZRgCIAEoCzIZLmJ1Zi52YWxpZGF0ZS5Eb3Vi'
    'bGVSdWxlc0gAUgZkb3VibGUSMAoFaW50MzIYAyABKAsyGC5idWYudmFsaWRhdGUuSW50MzJSdW'
    'xlc0gAUgVpbnQzMhIwCgVpbnQ2NBgEIAEoCzIYLmJ1Zi52YWxpZGF0ZS5JbnQ2NFJ1bGVzSABS'
    'BWludDY0EjMKBnVpbnQzMhgFIAEoCzIZLmJ1Zi52YWxpZGF0ZS5VSW50MzJSdWxlc0gAUgZ1aW'
    '50MzISMwoGdWludDY0GAYgASgLMhkuYnVmLnZhbGlkYXRlLlVJbnQ2NFJ1bGVzSABSBnVpbnQ2'
    'NBIzCgZzaW50MzIYByABKAsyGS5idWYudmFsaWRhdGUuU0ludDMyUnVsZXNIAFIGc2ludDMyEj'
    'MKBnNpbnQ2NBgIIAEoCzIZLmJ1Zi52YWxpZGF0ZS5TSW50NjRSdWxlc0gAUgZzaW50NjQSNgoH'
    'Zml4ZWQzMhgJIAEoCzIaLmJ1Zi52YWxpZGF0ZS5GaXhlZDMyUnVsZXNIAFIHZml4ZWQzMhI2Cg'
    'dmaXhlZDY0GAogASgLMhouYnVmLnZhbGlkYXRlLkZpeGVkNjRSdWxlc0gAUgdmaXhlZDY0EjkK'
    'CHNmaXhlZDMyGAsgASgLMhsuYnVmLnZhbGlkYXRlLlNGaXhlZDMyUnVsZXNIAFIIc2ZpeGVkMz'
    'ISOQoIc2ZpeGVkNjQYDCABKAsyGy5idWYudmFsaWRhdGUuU0ZpeGVkNjRSdWxlc0gAUghzZml4'
    'ZWQ2NBItCgRib29sGA0gASgLMhcuYnVmLnZhbGlkYXRlLkJvb2xSdWxlc0gAUgRib29sEjMKBn'
    'N0cmluZxgOIAEoCzIZLmJ1Zi52YWxpZGF0ZS5TdHJpbmdSdWxlc0gAUgZzdHJpbmcSMAoFYnl0'
    'ZXMYDyABKAsyGC5idWYudmFsaWRhdGUuQnl0ZXNSdWxlc0gAUgVieXRlcxItCgRlbnVtGBAgAS'
    'gLMhcuYnVmLnZhbGlkYXRlLkVudW1SdWxlc0gAUgRlbnVtEjkKCHJlcGVhdGVkGBIgASgLMhsu'
    'YnVmLnZhbGlkYXRlLlJlcGVhdGVkUnVsZXNIAFIIcmVwZWF0ZWQSKgoDbWFwGBMgASgLMhYuYn'
    'VmLnZhbGlkYXRlLk1hcFJ1bGVzSABSA21hcBIqCgNhbnkYFCABKAsyFi5idWYudmFsaWRhdGUu'
    'QW55UnVsZXNIAFIDYW55EjkKCGR1cmF0aW9uGBUgASgLMhsuYnVmLnZhbGlkYXRlLkR1cmF0aW'
    '9uUnVsZXNIAFIIZHVyYXRpb24SPAoJdGltZXN0YW1wGBYgASgLMhwuYnVmLnZhbGlkYXRlLlRp'
    'bWVzdGFtcFJ1bGVzSABSCXRpbWVzdGFtcBIcCgdza2lwcGVkGBggASgIQgIYAVIHc2tpcHBlZB'
    'IlCgxpZ25vcmVfZW1wdHkYGiABKAhCAhgBUgtpZ25vcmVFbXB0eUIGCgR0eXBl');

@$core.Deprecated('Use floatRulesDescriptor instead')
const FloatRules$json = {
  '1': 'FloatRules',
  '2': [
    {'1': 'const', '3': 1, '4': 1, '5': 2, '8': {}, '9': 2, '10': 'const', '17': true},
    {'1': 'lt', '3': 2, '4': 1, '5': 2, '8': {}, '9': 0, '10': 'lt'},
    {'1': 'lte', '3': 3, '4': 1, '5': 2, '8': {}, '9': 0, '10': 'lte'},
    {'1': 'gt', '3': 4, '4': 1, '5': 2, '8': {}, '9': 1, '10': 'gt'},
    {'1': 'gte', '3': 5, '4': 1, '5': 2, '8': {}, '9': 1, '10': 'gte'},
    {'1': 'in', '3': 6, '4': 3, '5': 2, '8': {}, '10': 'in'},
    {'1': 'not_in', '3': 7, '4': 3, '5': 2, '8': {}, '10': 'notIn'},
    {'1': 'finite', '3': 8, '4': 1, '5': 8, '8': {}, '10': 'finite'},
  ],
  '8': [
    {'1': 'less_than'},
    {'1': 'greater_than'},
    {'1': '_const'},
  ],
};

/// Descriptor for `FloatRules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List floatRulesDescriptor = $convert.base64Decode(
    'CgpGbG9hdFJ1bGVzEnUKBWNvbnN0GAEgASgCQlrCSFcKVQoLZmxvYXQuY29uc3QaRnRoaXMgIT'
    '0gcnVsZXMuY29uc3QgPyAndmFsdWUgbXVzdCBlcXVhbCAlcycuZm9ybWF0KFtydWxlcy5jb25z'
    'dF0pIDogJydIAlIFY29uc3SIAQESowEKAmx0GAIgASgCQpABwkiMAQqJAQoIZmxvYXQubHQafS'
    'FoYXMocnVsZXMuZ3RlKSAmJiAhaGFzKHJ1bGVzLmd0KSAmJiAodGhpcy5pc05hbigpIHx8IHRo'
    'aXMgPj0gcnVsZXMubHQpPyAndmFsdWUgbXVzdCBiZSBsZXNzIHRoYW4gJXMnLmZvcm1hdChbcn'
    'VsZXMubHRdKSA6ICcnSABSAmx0ErQBCgNsdGUYAyABKAJCnwHCSJsBCpgBCglmbG9hdC5sdGUa'
    'igEhaGFzKHJ1bGVzLmd0ZSkgJiYgIWhhcyhydWxlcy5ndCkgJiYgKHRoaXMuaXNOYW4oKSB8fC'
    'B0aGlzID4gcnVsZXMubHRlKT8gJ3ZhbHVlIG11c3QgYmUgbGVzcyB0aGFuIG9yIGVxdWFsIHRv'
    'ICVzJy5mb3JtYXQoW3J1bGVzLmx0ZV0pIDogJydIAFIDbHRlEvMHCgJndBgEIAEoAkLgB8JI3A'
    'cKjQEKCGZsb2F0Lmd0GoABIWhhcyhydWxlcy5sdCkgJiYgIWhhcyhydWxlcy5sdGUpICYmICh0'
    'aGlzLmlzTmFuKCkgfHwgdGhpcyA8PSBydWxlcy5ndCk/ICd2YWx1ZSBtdXN0IGJlIGdyZWF0ZX'
    'IgdGhhbiAlcycuZm9ybWF0KFtydWxlcy5ndF0pIDogJycKwwEKC2Zsb2F0Lmd0X2x0GrMBaGFz'
    'KHJ1bGVzLmx0KSAmJiBydWxlcy5sdCA+PSBydWxlcy5ndCAmJiAodGhpcy5pc05hbigpIHx8IH'
    'RoaXMgPj0gcnVsZXMubHQgfHwgdGhpcyA8PSBydWxlcy5ndCk/ICd2YWx1ZSBtdXN0IGJlIGdy'
    'ZWF0ZXIgdGhhbiAlcyBhbmQgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0LCBydWxlcy'
    '5sdF0pIDogJycKzQEKFWZsb2F0Lmd0X2x0X2V4Y2x1c2l2ZRqzAWhhcyhydWxlcy5sdCkgJiYg'
    'cnVsZXMubHQgPCBydWxlcy5ndCAmJiAodGhpcy5pc05hbigpIHx8IChydWxlcy5sdCA8PSB0aG'
    'lzICYmIHRoaXMgPD0gcnVsZXMuZ3QpKT8gJ3ZhbHVlIG11c3QgYmUgZ3JlYXRlciB0aGFuICVz'
    'IG9yIGxlc3MgdGhhbiAlcycuZm9ybWF0KFtydWxlcy5ndCwgcnVsZXMubHRdKSA6ICcnCtMBCg'
    'xmbG9hdC5ndF9sdGUawgFoYXMocnVsZXMubHRlKSAmJiBydWxlcy5sdGUgPj0gcnVsZXMuZ3Qg'
    'JiYgKHRoaXMuaXNOYW4oKSB8fCB0aGlzID4gcnVsZXMubHRlIHx8IHRoaXMgPD0gcnVsZXMuZ3'
    'QpPyAndmFsdWUgbXVzdCBiZSBncmVhdGVyIHRoYW4gJXMgYW5kIGxlc3MgdGhhbiBvciBlcXVh'
    'bCB0byAlcycuZm9ybWF0KFtydWxlcy5ndCwgcnVsZXMubHRlXSkgOiAnJwrdAQoWZmxvYXQuZ3'
    'RfbHRlX2V4Y2x1c2l2ZRrCAWhhcyhydWxlcy5sdGUpICYmIHJ1bGVzLmx0ZSA8IHJ1bGVzLmd0'
    'ICYmICh0aGlzLmlzTmFuKCkgfHwgKHJ1bGVzLmx0ZSA8IHRoaXMgJiYgdGhpcyA8PSBydWxlcy'
    '5ndCkpPyAndmFsdWUgbXVzdCBiZSBncmVhdGVyIHRoYW4gJXMgb3IgbGVzcyB0aGFuIG9yIGVx'
    'dWFsIHRvICVzJy5mb3JtYXQoW3J1bGVzLmd0LCBydWxlcy5sdGVdKSA6ICcnSAFSAmd0Er8ICg'
    'NndGUYBSABKAJCqgjCSKYICpsBCglmbG9hdC5ndGUajQEhaGFzKHJ1bGVzLmx0KSAmJiAhaGFz'
    'KHJ1bGVzLmx0ZSkgJiYgKHRoaXMuaXNOYW4oKSB8fCB0aGlzIDwgcnVsZXMuZ3RlKT8gJ3ZhbH'
    'VlIG11c3QgYmUgZ3JlYXRlciB0aGFuIG9yIGVxdWFsIHRvICVzJy5mb3JtYXQoW3J1bGVzLmd0'
    'ZV0pIDogJycK0gEKDGZsb2F0Lmd0ZV9sdBrBAWhhcyhydWxlcy5sdCkgJiYgcnVsZXMubHQgPj'
    '0gcnVsZXMuZ3RlICYmICh0aGlzLmlzTmFuKCkgfHwgdGhpcyA+PSBydWxlcy5sdCB8fCB0aGlz'
    'IDwgcnVsZXMuZ3RlKT8gJ3ZhbHVlIG11c3QgYmUgZ3JlYXRlciB0aGFuIG9yIGVxdWFsIHRvIC'
    'VzIGFuZCBsZXNzIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMuZ3RlLCBydWxlcy5sdF0pIDogJycK'
    '3AEKFmZsb2F0Lmd0ZV9sdF9leGNsdXNpdmUawQFoYXMocnVsZXMubHQpICYmIHJ1bGVzLmx0ID'
    'wgcnVsZXMuZ3RlICYmICh0aGlzLmlzTmFuKCkgfHwgKHJ1bGVzLmx0IDw9IHRoaXMgJiYgdGhp'
    'cyA8IHJ1bGVzLmd0ZSkpPyAndmFsdWUgbXVzdCBiZSBncmVhdGVyIHRoYW4gb3IgZXF1YWwgdG'
    '8gJXMgb3IgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0ZSwgcnVsZXMubHRdKSA6ICcn'
    'CuIBCg1mbG9hdC5ndGVfbHRlGtABaGFzKHJ1bGVzLmx0ZSkgJiYgcnVsZXMubHRlID49IHJ1bG'
    'VzLmd0ZSAmJiAodGhpcy5pc05hbigpIHx8IHRoaXMgPiBydWxlcy5sdGUgfHwgdGhpcyA8IHJ1'
    'bGVzLmd0ZSk/ICd2YWx1ZSBtdXN0IGJlIGdyZWF0ZXIgdGhhbiBvciBlcXVhbCB0byAlcyBhbm'
    'QgbGVzcyB0aGFuIG9yIGVxdWFsIHRvICVzJy5mb3JtYXQoW3J1bGVzLmd0ZSwgcnVsZXMubHRl'
    'XSkgOiAnJwrsAQoXZmxvYXQuZ3RlX2x0ZV9leGNsdXNpdmUa0AFoYXMocnVsZXMubHRlKSAmJi'
    'BydWxlcy5sdGUgPCBydWxlcy5ndGUgJiYgKHRoaXMuaXNOYW4oKSB8fCAocnVsZXMubHRlIDwg'
    'dGhpcyAmJiB0aGlzIDwgcnVsZXMuZ3RlKSk/ICd2YWx1ZSBtdXN0IGJlIGdyZWF0ZXIgdGhhbi'
    'BvciBlcXVhbCB0byAlcyBvciBsZXNzIHRoYW4gb3IgZXF1YWwgdG8gJXMnLmZvcm1hdChbcnVs'
    'ZXMuZ3RlLCBydWxlcy5sdGVdKSA6ICcnSAFSA2d0ZRJ5CgJpbhgGIAMoAkJpwkhmCmQKCGZsb2'
    'F0LmluGlghKHRoaXMgaW4gZHluKHJ1bGVzKVsnaW4nXSkgPyAndmFsdWUgbXVzdCBiZSBpbiBs'
    'aXN0ICVzJy5mb3JtYXQoW2R5bihydWxlcylbJ2luJ11dKSA6ICcnUgJpbhJ9CgZub3RfaW4YBy'
    'ADKAJCZsJIYwphCgxmbG9hdC5ub3RfaW4aUXRoaXMgaW4gcnVsZXMubm90X2luID8gJ3ZhbHVl'
    'IG11c3Qgbm90IGJlIGluIGxpc3QgJXMnLmZvcm1hdChbcnVsZXMubm90X2luXSkgOiAnJ1IFbm'
    '90SW4SZwoGZmluaXRlGAggASgIQk/CSEwKSgoMZmxvYXQuZmluaXRlGjp0aGlzLmlzTmFuKCkg'
    'fHwgdGhpcy5pc0luZigpID8gJ3ZhbHVlIG11c3QgYmUgZmluaXRlJyA6ICcnUgZmaW5pdGVCCw'
    'oJbGVzc190aGFuQg4KDGdyZWF0ZXJfdGhhbkIICgZfY29uc3Q=');

@$core.Deprecated('Use doubleRulesDescriptor instead')
const DoubleRules$json = {
  '1': 'DoubleRules',
  '2': [
    {'1': 'const', '3': 1, '4': 1, '5': 1, '8': {}, '9': 2, '10': 'const', '17': true},
    {'1': 'lt', '3': 2, '4': 1, '5': 1, '8': {}, '9': 0, '10': 'lt'},
    {'1': 'lte', '3': 3, '4': 1, '5': 1, '8': {}, '9': 0, '10': 'lte'},
    {'1': 'gt', '3': 4, '4': 1, '5': 1, '8': {}, '9': 1, '10': 'gt'},
    {'1': 'gte', '3': 5, '4': 1, '5': 1, '8': {}, '9': 1, '10': 'gte'},
    {'1': 'in', '3': 6, '4': 3, '5': 1, '8': {}, '10': 'in'},
    {'1': 'not_in', '3': 7, '4': 3, '5': 1, '8': {}, '10': 'notIn'},
    {'1': 'finite', '3': 8, '4': 1, '5': 8, '8': {}, '10': 'finite'},
  ],
  '8': [
    {'1': 'less_than'},
    {'1': 'greater_than'},
    {'1': '_const'},
  ],
};

/// Descriptor for `DoubleRules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List doubleRulesDescriptor = $convert.base64Decode(
    'CgtEb3VibGVSdWxlcxJ2CgVjb25zdBgBIAEoAUJbwkhYClYKDGRvdWJsZS5jb25zdBpGdGhpcy'
    'AhPSBydWxlcy5jb25zdCA/ICd2YWx1ZSBtdXN0IGVxdWFsICVzJy5mb3JtYXQoW3J1bGVzLmNv'
    'bnN0XSkgOiAnJ0gCUgVjb25zdIgBARKkAQoCbHQYAiABKAFCkQHCSI0BCooBCglkb3VibGUubH'
    'QafSFoYXMocnVsZXMuZ3RlKSAmJiAhaGFzKHJ1bGVzLmd0KSAmJiAodGhpcy5pc05hbigpIHx8'
    'IHRoaXMgPj0gcnVsZXMubHQpPyAndmFsdWUgbXVzdCBiZSBsZXNzIHRoYW4gJXMnLmZvcm1hdC'
    'hbcnVsZXMubHRdKSA6ICcnSABSAmx0ErUBCgNsdGUYAyABKAFCoAHCSJwBCpkBCgpkb3VibGUu'
    'bHRlGooBIWhhcyhydWxlcy5ndGUpICYmICFoYXMocnVsZXMuZ3QpICYmICh0aGlzLmlzTmFuKC'
    'kgfHwgdGhpcyA+IHJ1bGVzLmx0ZSk/ICd2YWx1ZSBtdXN0IGJlIGxlc3MgdGhhbiBvciBlcXVh'
    'bCB0byAlcycuZm9ybWF0KFtydWxlcy5sdGVdKSA6ICcnSABSA2x0ZRL4BwoCZ3QYBCABKAFC5Q'
    'fCSOEHCo4BCglkb3VibGUuZ3QagAEhaGFzKHJ1bGVzLmx0KSAmJiAhaGFzKHJ1bGVzLmx0ZSkg'
    'JiYgKHRoaXMuaXNOYW4oKSB8fCB0aGlzIDw9IHJ1bGVzLmd0KT8gJ3ZhbHVlIG11c3QgYmUgZ3'
    'JlYXRlciB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0XSkgOiAnJwrEAQoMZG91YmxlLmd0X2x0'
    'GrMBaGFzKHJ1bGVzLmx0KSAmJiBydWxlcy5sdCA+PSBydWxlcy5ndCAmJiAodGhpcy5pc05hbi'
    'gpIHx8IHRoaXMgPj0gcnVsZXMubHQgfHwgdGhpcyA8PSBydWxlcy5ndCk/ICd2YWx1ZSBtdXN0'
    'IGJlIGdyZWF0ZXIgdGhhbiAlcyBhbmQgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0LC'
    'BydWxlcy5sdF0pIDogJycKzgEKFmRvdWJsZS5ndF9sdF9leGNsdXNpdmUaswFoYXMocnVsZXMu'
    'bHQpICYmIHJ1bGVzLmx0IDwgcnVsZXMuZ3QgJiYgKHRoaXMuaXNOYW4oKSB8fCAocnVsZXMubH'
    'QgPD0gdGhpcyAmJiB0aGlzIDw9IHJ1bGVzLmd0KSk/ICd2YWx1ZSBtdXN0IGJlIGdyZWF0ZXIg'
    'dGhhbiAlcyBvciBsZXNzIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMuZ3QsIHJ1bGVzLmx0XSkgOi'
    'AnJwrUAQoNZG91YmxlLmd0X2x0ZRrCAWhhcyhydWxlcy5sdGUpICYmIHJ1bGVzLmx0ZSA+PSBy'
    'dWxlcy5ndCAmJiAodGhpcy5pc05hbigpIHx8IHRoaXMgPiBydWxlcy5sdGUgfHwgdGhpcyA8PS'
    'BydWxlcy5ndCk/ICd2YWx1ZSBtdXN0IGJlIGdyZWF0ZXIgdGhhbiAlcyBhbmQgbGVzcyB0aGFu'
    'IG9yIGVxdWFsIHRvICVzJy5mb3JtYXQoW3J1bGVzLmd0LCBydWxlcy5sdGVdKSA6ICcnCt4BCh'
    'dkb3VibGUuZ3RfbHRlX2V4Y2x1c2l2ZRrCAWhhcyhydWxlcy5sdGUpICYmIHJ1bGVzLmx0ZSA8'
    'IHJ1bGVzLmd0ICYmICh0aGlzLmlzTmFuKCkgfHwgKHJ1bGVzLmx0ZSA8IHRoaXMgJiYgdGhpcy'
    'A8PSBydWxlcy5ndCkpPyAndmFsdWUgbXVzdCBiZSBncmVhdGVyIHRoYW4gJXMgb3IgbGVzcyB0'
    'aGFuIG9yIGVxdWFsIHRvICVzJy5mb3JtYXQoW3J1bGVzLmd0LCBydWxlcy5sdGVdKSA6ICcnSA'
    'FSAmd0EsQICgNndGUYBSABKAFCrwjCSKsICpwBCgpkb3VibGUuZ3RlGo0BIWhhcyhydWxlcy5s'
    'dCkgJiYgIWhhcyhydWxlcy5sdGUpICYmICh0aGlzLmlzTmFuKCkgfHwgdGhpcyA8IHJ1bGVzLm'
    'd0ZSk/ICd2YWx1ZSBtdXN0IGJlIGdyZWF0ZXIgdGhhbiBvciBlcXVhbCB0byAlcycuZm9ybWF0'
    'KFtydWxlcy5ndGVdKSA6ICcnCtMBCg1kb3VibGUuZ3RlX2x0GsEBaGFzKHJ1bGVzLmx0KSAmJi'
    'BydWxlcy5sdCA+PSBydWxlcy5ndGUgJiYgKHRoaXMuaXNOYW4oKSB8fCB0aGlzID49IHJ1bGVz'
    'Lmx0IHx8IHRoaXMgPCBydWxlcy5ndGUpPyAndmFsdWUgbXVzdCBiZSBncmVhdGVyIHRoYW4gb3'
    'IgZXF1YWwgdG8gJXMgYW5kIGxlc3MgdGhhbiAlcycuZm9ybWF0KFtydWxlcy5ndGUsIHJ1bGVz'
    'Lmx0XSkgOiAnJwrdAQoXZG91YmxlLmd0ZV9sdF9leGNsdXNpdmUawQFoYXMocnVsZXMubHQpIC'
    'YmIHJ1bGVzLmx0IDwgcnVsZXMuZ3RlICYmICh0aGlzLmlzTmFuKCkgfHwgKHJ1bGVzLmx0IDw9'
    'IHRoaXMgJiYgdGhpcyA8IHJ1bGVzLmd0ZSkpPyAndmFsdWUgbXVzdCBiZSBncmVhdGVyIHRoYW'
    '4gb3IgZXF1YWwgdG8gJXMgb3IgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0ZSwgcnVs'
    'ZXMubHRdKSA6ICcnCuMBCg5kb3VibGUuZ3RlX2x0ZRrQAWhhcyhydWxlcy5sdGUpICYmIHJ1bG'
    'VzLmx0ZSA+PSBydWxlcy5ndGUgJiYgKHRoaXMuaXNOYW4oKSB8fCB0aGlzID4gcnVsZXMubHRl'
    'IHx8IHRoaXMgPCBydWxlcy5ndGUpPyAndmFsdWUgbXVzdCBiZSBncmVhdGVyIHRoYW4gb3IgZX'
    'F1YWwgdG8gJXMgYW5kIGxlc3MgdGhhbiBvciBlcXVhbCB0byAlcycuZm9ybWF0KFtydWxlcy5n'
    'dGUsIHJ1bGVzLmx0ZV0pIDogJycK7QEKGGRvdWJsZS5ndGVfbHRlX2V4Y2x1c2l2ZRrQAWhhcy'
    'hydWxlcy5sdGUpICYmIHJ1bGVzLmx0ZSA8IHJ1bGVzLmd0ZSAmJiAodGhpcy5pc05hbigpIHx8'
    'IChydWxlcy5sdGUgPCB0aGlzICYmIHRoaXMgPCBydWxlcy5ndGUpKT8gJ3ZhbHVlIG11c3QgYm'
    'UgZ3JlYXRlciB0aGFuIG9yIGVxdWFsIHRvICVzIG9yIGxlc3MgdGhhbiBvciBlcXVhbCB0byAl'
    'cycuZm9ybWF0KFtydWxlcy5ndGUsIHJ1bGVzLmx0ZV0pIDogJydIAVIDZ3RlEnoKAmluGAYgAy'
    'gBQmrCSGcKZQoJZG91YmxlLmluGlghKHRoaXMgaW4gZHluKHJ1bGVzKVsnaW4nXSkgPyAndmFs'
    'dWUgbXVzdCBiZSBpbiBsaXN0ICVzJy5mb3JtYXQoW2R5bihydWxlcylbJ2luJ11dKSA6ICcnUg'
    'JpbhJ+CgZub3RfaW4YByADKAFCZ8JIZApiCg1kb3VibGUubm90X2luGlF0aGlzIGluIHJ1bGVz'
    'Lm5vdF9pbiA/ICd2YWx1ZSBtdXN0IG5vdCBiZSBpbiBsaXN0ICVzJy5mb3JtYXQoW3J1bGVzLm'
    '5vdF9pbl0pIDogJydSBW5vdEluEmgKBmZpbml0ZRgIIAEoCEJQwkhNCksKDWRvdWJsZS5maW5p'
    'dGUaOnRoaXMuaXNOYW4oKSB8fCB0aGlzLmlzSW5mKCkgPyAndmFsdWUgbXVzdCBiZSBmaW5pdG'
    'UnIDogJydSBmZpbml0ZUILCglsZXNzX3RoYW5CDgoMZ3JlYXRlcl90aGFuQggKBl9jb25zdA==');

@$core.Deprecated('Use int32RulesDescriptor instead')
const Int32Rules$json = {
  '1': 'Int32Rules',
  '2': [
    {'1': 'const', '3': 1, '4': 1, '5': 5, '8': {}, '9': 2, '10': 'const', '17': true},
    {'1': 'lt', '3': 2, '4': 1, '5': 5, '8': {}, '9': 0, '10': 'lt'},
    {'1': 'lte', '3': 3, '4': 1, '5': 5, '8': {}, '9': 0, '10': 'lte'},
    {'1': 'gt', '3': 4, '4': 1, '5': 5, '8': {}, '9': 1, '10': 'gt'},
    {'1': 'gte', '3': 5, '4': 1, '5': 5, '8': {}, '9': 1, '10': 'gte'},
    {'1': 'in', '3': 6, '4': 3, '5': 5, '8': {}, '10': 'in'},
    {'1': 'not_in', '3': 7, '4': 3, '5': 5, '8': {}, '10': 'notIn'},
  ],
  '8': [
    {'1': 'less_than'},
    {'1': 'greater_than'},
    {'1': '_const'},
  ],
};

/// Descriptor for `Int32Rules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List int32RulesDescriptor = $convert.base64Decode(
    'CgpJbnQzMlJ1bGVzEnUKBWNvbnN0GAEgASgFQlrCSFcKVQoLaW50MzIuY29uc3QaRnRoaXMgIT'
    '0gcnVsZXMuY29uc3QgPyAndmFsdWUgbXVzdCBlcXVhbCAlcycuZm9ybWF0KFtydWxlcy5jb25z'
    'dF0pIDogJydIAlIFY29uc3SIAQESjgEKAmx0GAIgASgFQnzCSHkKdwoIaW50MzIubHQaayFoYX'
    'MocnVsZXMuZ3RlKSAmJiAhaGFzKHJ1bGVzLmd0KSAmJiB0aGlzID49IHJ1bGVzLmx0PyAndmFs'
    'dWUgbXVzdCBiZSBsZXNzIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMubHRdKSA6ICcnSABSAmx0Eq'
    'EBCgNsdGUYAyABKAVCjAHCSIgBCoUBCglpbnQzMi5sdGUaeCFoYXMocnVsZXMuZ3RlKSAmJiAh'
    'aGFzKHJ1bGVzLmd0KSAmJiB0aGlzID4gcnVsZXMubHRlPyAndmFsdWUgbXVzdCBiZSBsZXNzIH'
    'RoYW4gb3IgZXF1YWwgdG8gJXMnLmZvcm1hdChbcnVsZXMubHRlXSkgOiAnJ0gAUgNsdGUSmwcK'
    'Amd0GAQgASgFQogHwkiEBwp6CghpbnQzMi5ndBpuIWhhcyhydWxlcy5sdCkgJiYgIWhhcyhydW'
    'xlcy5sdGUpICYmIHRoaXMgPD0gcnVsZXMuZ3Q/ICd2YWx1ZSBtdXN0IGJlIGdyZWF0ZXIgdGhh'
    'biAlcycuZm9ybWF0KFtydWxlcy5ndF0pIDogJycKswEKC2ludDMyLmd0X2x0GqMBaGFzKHJ1bG'
    'VzLmx0KSAmJiBydWxlcy5sdCA+PSBydWxlcy5ndCAmJiAodGhpcyA+PSBydWxlcy5sdCB8fCB0'
    'aGlzIDw9IHJ1bGVzLmd0KT8gJ3ZhbHVlIG11c3QgYmUgZ3JlYXRlciB0aGFuICVzIGFuZCBsZX'
    'NzIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMuZ3QsIHJ1bGVzLmx0XSkgOiAnJwq7AQoVaW50MzIu'
    'Z3RfbHRfZXhjbHVzaXZlGqEBaGFzKHJ1bGVzLmx0KSAmJiBydWxlcy5sdCA8IHJ1bGVzLmd0IC'
    'YmIChydWxlcy5sdCA8PSB0aGlzICYmIHRoaXMgPD0gcnVsZXMuZ3QpPyAndmFsdWUgbXVzdCBi'
    'ZSBncmVhdGVyIHRoYW4gJXMgb3IgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0LCBydW'
    'xlcy5sdF0pIDogJycKwwEKDGludDMyLmd0X2x0ZRqyAWhhcyhydWxlcy5sdGUpICYmIHJ1bGVz'
    'Lmx0ZSA+PSBydWxlcy5ndCAmJiAodGhpcyA+IHJ1bGVzLmx0ZSB8fCB0aGlzIDw9IHJ1bGVzLm'
    'd0KT8gJ3ZhbHVlIG11c3QgYmUgZ3JlYXRlciB0aGFuICVzIGFuZCBsZXNzIHRoYW4gb3IgZXF1'
    'YWwgdG8gJXMnLmZvcm1hdChbcnVsZXMuZ3QsIHJ1bGVzLmx0ZV0pIDogJycKywEKFmludDMyLm'
    'd0X2x0ZV9leGNsdXNpdmUasAFoYXMocnVsZXMubHRlKSAmJiBydWxlcy5sdGUgPCBydWxlcy5n'
    'dCAmJiAocnVsZXMubHRlIDwgdGhpcyAmJiB0aGlzIDw9IHJ1bGVzLmd0KT8gJ3ZhbHVlIG11c3'
    'QgYmUgZ3JlYXRlciB0aGFuICVzIG9yIGxlc3MgdGhhbiBvciBlcXVhbCB0byAlcycuZm9ybWF0'
    'KFtydWxlcy5ndCwgcnVsZXMubHRlXSkgOiAnJ0gBUgJndBLoBwoDZ3RlGAUgASgFQtMHwkjPBw'
    'qIAQoJaW50MzIuZ3RlGnshaGFzKHJ1bGVzLmx0KSAmJiAhaGFzKHJ1bGVzLmx0ZSkgJiYgdGhp'
    'cyA8IHJ1bGVzLmd0ZT8gJ3ZhbHVlIG11c3QgYmUgZ3JlYXRlciB0aGFuIG9yIGVxdWFsIHRvIC'
    'VzJy5mb3JtYXQoW3J1bGVzLmd0ZV0pIDogJycKwgEKDGludDMyLmd0ZV9sdBqxAWhhcyhydWxl'
    'cy5sdCkgJiYgcnVsZXMubHQgPj0gcnVsZXMuZ3RlICYmICh0aGlzID49IHJ1bGVzLmx0IHx8IH'
    'RoaXMgPCBydWxlcy5ndGUpPyAndmFsdWUgbXVzdCBiZSBncmVhdGVyIHRoYW4gb3IgZXF1YWwg'
    'dG8gJXMgYW5kIGxlc3MgdGhhbiAlcycuZm9ybWF0KFtydWxlcy5ndGUsIHJ1bGVzLmx0XSkgOi'
    'AnJwrKAQoWaW50MzIuZ3RlX2x0X2V4Y2x1c2l2ZRqvAWhhcyhydWxlcy5sdCkgJiYgcnVsZXMu'
    'bHQgPCBydWxlcy5ndGUgJiYgKHJ1bGVzLmx0IDw9IHRoaXMgJiYgdGhpcyA8IHJ1bGVzLmd0ZS'
    'k/ICd2YWx1ZSBtdXN0IGJlIGdyZWF0ZXIgdGhhbiBvciBlcXVhbCB0byAlcyBvciBsZXNzIHRo'
    'YW4gJXMnLmZvcm1hdChbcnVsZXMuZ3RlLCBydWxlcy5sdF0pIDogJycK0gEKDWludDMyLmd0ZV'
    '9sdGUawAFoYXMocnVsZXMubHRlKSAmJiBydWxlcy5sdGUgPj0gcnVsZXMuZ3RlICYmICh0aGlz'
    'ID4gcnVsZXMubHRlIHx8IHRoaXMgPCBydWxlcy5ndGUpPyAndmFsdWUgbXVzdCBiZSBncmVhdG'
    'VyIHRoYW4gb3IgZXF1YWwgdG8gJXMgYW5kIGxlc3MgdGhhbiBvciBlcXVhbCB0byAlcycuZm9y'
    'bWF0KFtydWxlcy5ndGUsIHJ1bGVzLmx0ZV0pIDogJycK2gEKF2ludDMyLmd0ZV9sdGVfZXhjbH'
    'VzaXZlGr4BaGFzKHJ1bGVzLmx0ZSkgJiYgcnVsZXMubHRlIDwgcnVsZXMuZ3RlICYmIChydWxl'
    'cy5sdGUgPCB0aGlzICYmIHRoaXMgPCBydWxlcy5ndGUpPyAndmFsdWUgbXVzdCBiZSBncmVhdG'
    'VyIHRoYW4gb3IgZXF1YWwgdG8gJXMgb3IgbGVzcyB0aGFuIG9yIGVxdWFsIHRvICVzJy5mb3Jt'
    'YXQoW3J1bGVzLmd0ZSwgcnVsZXMubHRlXSkgOiAnJ0gBUgNndGUSeQoCaW4YBiADKAVCacJIZg'
    'pkCghpbnQzMi5pbhpYISh0aGlzIGluIGR5bihydWxlcylbJ2luJ10pID8gJ3ZhbHVlIG11c3Qg'
    'YmUgaW4gbGlzdCAlcycuZm9ybWF0KFtkeW4ocnVsZXMpWydpbiddXSkgOiAnJ1ICaW4SfQoGbm'
    '90X2luGAcgAygFQmbCSGMKYQoMaW50MzIubm90X2luGlF0aGlzIGluIHJ1bGVzLm5vdF9pbiA/'
    'ICd2YWx1ZSBtdXN0IG5vdCBiZSBpbiBsaXN0ICVzJy5mb3JtYXQoW3J1bGVzLm5vdF9pbl0pID'
    'ogJydSBW5vdEluQgsKCWxlc3NfdGhhbkIOCgxncmVhdGVyX3RoYW5CCAoGX2NvbnN0');

@$core.Deprecated('Use int64RulesDescriptor instead')
const Int64Rules$json = {
  '1': 'Int64Rules',
  '2': [
    {'1': 'const', '3': 1, '4': 1, '5': 3, '8': {}, '9': 2, '10': 'const', '17': true},
    {'1': 'lt', '3': 2, '4': 1, '5': 3, '8': {}, '9': 0, '10': 'lt'},
    {'1': 'lte', '3': 3, '4': 1, '5': 3, '8': {}, '9': 0, '10': 'lte'},
    {'1': 'gt', '3': 4, '4': 1, '5': 3, '8': {}, '9': 1, '10': 'gt'},
    {'1': 'gte', '3': 5, '4': 1, '5': 3, '8': {}, '9': 1, '10': 'gte'},
    {'1': 'in', '3': 6, '4': 3, '5': 3, '8': {}, '10': 'in'},
    {'1': 'not_in', '3': 7, '4': 3, '5': 3, '8': {}, '10': 'notIn'},
  ],
  '8': [
    {'1': 'less_than'},
    {'1': 'greater_than'},
    {'1': '_const'},
  ],
};

/// Descriptor for `Int64Rules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List int64RulesDescriptor = $convert.base64Decode(
    'CgpJbnQ2NFJ1bGVzEnUKBWNvbnN0GAEgASgDQlrCSFcKVQoLaW50NjQuY29uc3QaRnRoaXMgIT'
    '0gcnVsZXMuY29uc3QgPyAndmFsdWUgbXVzdCBlcXVhbCAlcycuZm9ybWF0KFtydWxlcy5jb25z'
    'dF0pIDogJydIAlIFY29uc3SIAQESjgEKAmx0GAIgASgDQnzCSHkKdwoIaW50NjQubHQaayFoYX'
    'MocnVsZXMuZ3RlKSAmJiAhaGFzKHJ1bGVzLmd0KSAmJiB0aGlzID49IHJ1bGVzLmx0PyAndmFs'
    'dWUgbXVzdCBiZSBsZXNzIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMubHRdKSA6ICcnSABSAmx0Eq'
    'EBCgNsdGUYAyABKANCjAHCSIgBCoUBCglpbnQ2NC5sdGUaeCFoYXMocnVsZXMuZ3RlKSAmJiAh'
    'aGFzKHJ1bGVzLmd0KSAmJiB0aGlzID4gcnVsZXMubHRlPyAndmFsdWUgbXVzdCBiZSBsZXNzIH'
    'RoYW4gb3IgZXF1YWwgdG8gJXMnLmZvcm1hdChbcnVsZXMubHRlXSkgOiAnJ0gAUgNsdGUSmwcK'
    'Amd0GAQgASgDQogHwkiEBwp6CghpbnQ2NC5ndBpuIWhhcyhydWxlcy5sdCkgJiYgIWhhcyhydW'
    'xlcy5sdGUpICYmIHRoaXMgPD0gcnVsZXMuZ3Q/ICd2YWx1ZSBtdXN0IGJlIGdyZWF0ZXIgdGhh'
    'biAlcycuZm9ybWF0KFtydWxlcy5ndF0pIDogJycKswEKC2ludDY0Lmd0X2x0GqMBaGFzKHJ1bG'
    'VzLmx0KSAmJiBydWxlcy5sdCA+PSBydWxlcy5ndCAmJiAodGhpcyA+PSBydWxlcy5sdCB8fCB0'
    'aGlzIDw9IHJ1bGVzLmd0KT8gJ3ZhbHVlIG11c3QgYmUgZ3JlYXRlciB0aGFuICVzIGFuZCBsZX'
    'NzIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMuZ3QsIHJ1bGVzLmx0XSkgOiAnJwq7AQoVaW50NjQu'
    'Z3RfbHRfZXhjbHVzaXZlGqEBaGFzKHJ1bGVzLmx0KSAmJiBydWxlcy5sdCA8IHJ1bGVzLmd0IC'
    'YmIChydWxlcy5sdCA8PSB0aGlzICYmIHRoaXMgPD0gcnVsZXMuZ3QpPyAndmFsdWUgbXVzdCBi'
    'ZSBncmVhdGVyIHRoYW4gJXMgb3IgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0LCBydW'
    'xlcy5sdF0pIDogJycKwwEKDGludDY0Lmd0X2x0ZRqyAWhhcyhydWxlcy5sdGUpICYmIHJ1bGVz'
    'Lmx0ZSA+PSBydWxlcy5ndCAmJiAodGhpcyA+IHJ1bGVzLmx0ZSB8fCB0aGlzIDw9IHJ1bGVzLm'
    'd0KT8gJ3ZhbHVlIG11c3QgYmUgZ3JlYXRlciB0aGFuICVzIGFuZCBsZXNzIHRoYW4gb3IgZXF1'
    'YWwgdG8gJXMnLmZvcm1hdChbcnVsZXMuZ3QsIHJ1bGVzLmx0ZV0pIDogJycKywEKFmludDY0Lm'
    'd0X2x0ZV9leGNsdXNpdmUasAFoYXMocnVsZXMubHRlKSAmJiBydWxlcy5sdGUgPCBydWxlcy5n'
    'dCAmJiAocnVsZXMubHRlIDwgdGhpcyAmJiB0aGlzIDw9IHJ1bGVzLmd0KT8gJ3ZhbHVlIG11c3'
    'QgYmUgZ3JlYXRlciB0aGFuICVzIG9yIGxlc3MgdGhhbiBvciBlcXVhbCB0byAlcycuZm9ybWF0'
    'KFtydWxlcy5ndCwgcnVsZXMubHRlXSkgOiAnJ0gBUgJndBLoBwoDZ3RlGAUgASgDQtMHwkjPBw'
    'qIAQoJaW50NjQuZ3RlGnshaGFzKHJ1bGVzLmx0KSAmJiAhaGFzKHJ1bGVzLmx0ZSkgJiYgdGhp'
    'cyA8IHJ1bGVzLmd0ZT8gJ3ZhbHVlIG11c3QgYmUgZ3JlYXRlciB0aGFuIG9yIGVxdWFsIHRvIC'
    'VzJy5mb3JtYXQoW3J1bGVzLmd0ZV0pIDogJycKwgEKDGludDY0Lmd0ZV9sdBqxAWhhcyhydWxl'
    'cy5sdCkgJiYgcnVsZXMubHQgPj0gcnVsZXMuZ3RlICYmICh0aGlzID49IHJ1bGVzLmx0IHx8IH'
    'RoaXMgPCBydWxlcy5ndGUpPyAndmFsdWUgbXVzdCBiZSBncmVhdGVyIHRoYW4gb3IgZXF1YWwg'
    'dG8gJXMgYW5kIGxlc3MgdGhhbiAlcycuZm9ybWF0KFtydWxlcy5ndGUsIHJ1bGVzLmx0XSkgOi'
    'AnJwrKAQoWaW50NjQuZ3RlX2x0X2V4Y2x1c2l2ZRqvAWhhcyhydWxlcy5sdCkgJiYgcnVsZXMu'
    'bHQgPCBydWxlcy5ndGUgJiYgKHJ1bGVzLmx0IDw9IHRoaXMgJiYgdGhpcyA8IHJ1bGVzLmd0ZS'
    'k/ICd2YWx1ZSBtdXN0IGJlIGdyZWF0ZXIgdGhhbiBvciBlcXVhbCB0byAlcyBvciBsZXNzIHRo'
    'YW4gJXMnLmZvcm1hdChbcnVsZXMuZ3RlLCBydWxlcy5sdF0pIDogJycK0gEKDWludDY0Lmd0ZV'
    '9sdGUawAFoYXMocnVsZXMubHRlKSAmJiBydWxlcy5sdGUgPj0gcnVsZXMuZ3RlICYmICh0aGlz'
    'ID4gcnVsZXMubHRlIHx8IHRoaXMgPCBydWxlcy5ndGUpPyAndmFsdWUgbXVzdCBiZSBncmVhdG'
    'VyIHRoYW4gb3IgZXF1YWwgdG8gJXMgYW5kIGxlc3MgdGhhbiBvciBlcXVhbCB0byAlcycuZm9y'
    'bWF0KFtydWxlcy5ndGUsIHJ1bGVzLmx0ZV0pIDogJycK2gEKF2ludDY0Lmd0ZV9sdGVfZXhjbH'
    'VzaXZlGr4BaGFzKHJ1bGVzLmx0ZSkgJiYgcnVsZXMubHRlIDwgcnVsZXMuZ3RlICYmIChydWxl'
    'cy5sdGUgPCB0aGlzICYmIHRoaXMgPCBydWxlcy5ndGUpPyAndmFsdWUgbXVzdCBiZSBncmVhdG'
    'VyIHRoYW4gb3IgZXF1YWwgdG8gJXMgb3IgbGVzcyB0aGFuIG9yIGVxdWFsIHRvICVzJy5mb3Jt'
    'YXQoW3J1bGVzLmd0ZSwgcnVsZXMubHRlXSkgOiAnJ0gBUgNndGUSeQoCaW4YBiADKANCacJIZg'
    'pkCghpbnQ2NC5pbhpYISh0aGlzIGluIGR5bihydWxlcylbJ2luJ10pID8gJ3ZhbHVlIG11c3Qg'
    'YmUgaW4gbGlzdCAlcycuZm9ybWF0KFtkeW4ocnVsZXMpWydpbiddXSkgOiAnJ1ICaW4SfQoGbm'
    '90X2luGAcgAygDQmbCSGMKYQoMaW50NjQubm90X2luGlF0aGlzIGluIHJ1bGVzLm5vdF9pbiA/'
    'ICd2YWx1ZSBtdXN0IG5vdCBiZSBpbiBsaXN0ICVzJy5mb3JtYXQoW3J1bGVzLm5vdF9pbl0pID'
    'ogJydSBW5vdEluQgsKCWxlc3NfdGhhbkIOCgxncmVhdGVyX3RoYW5CCAoGX2NvbnN0');

@$core.Deprecated('Use uInt32RulesDescriptor instead')
const UInt32Rules$json = {
  '1': 'UInt32Rules',
  '2': [
    {'1': 'const', '3': 1, '4': 1, '5': 13, '8': {}, '9': 2, '10': 'const', '17': true},
    {'1': 'lt', '3': 2, '4': 1, '5': 13, '8': {}, '9': 0, '10': 'lt'},
    {'1': 'lte', '3': 3, '4': 1, '5': 13, '8': {}, '9': 0, '10': 'lte'},
    {'1': 'gt', '3': 4, '4': 1, '5': 13, '8': {}, '9': 1, '10': 'gt'},
    {'1': 'gte', '3': 5, '4': 1, '5': 13, '8': {}, '9': 1, '10': 'gte'},
    {'1': 'in', '3': 6, '4': 3, '5': 13, '8': {}, '10': 'in'},
    {'1': 'not_in', '3': 7, '4': 3, '5': 13, '8': {}, '10': 'notIn'},
  ],
  '8': [
    {'1': 'less_than'},
    {'1': 'greater_than'},
    {'1': '_const'},
  ],
};

/// Descriptor for `UInt32Rules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uInt32RulesDescriptor = $convert.base64Decode(
    'CgtVSW50MzJSdWxlcxJ2CgVjb25zdBgBIAEoDUJbwkhYClYKDHVpbnQzMi5jb25zdBpGdGhpcy'
    'AhPSBydWxlcy5jb25zdCA/ICd2YWx1ZSBtdXN0IGVxdWFsICVzJy5mb3JtYXQoW3J1bGVzLmNv'
    'bnN0XSkgOiAnJ0gCUgVjb25zdIgBARKPAQoCbHQYAiABKA1CfcJIegp4Cgl1aW50MzIubHQaay'
    'FoYXMocnVsZXMuZ3RlKSAmJiAhaGFzKHJ1bGVzLmd0KSAmJiB0aGlzID49IHJ1bGVzLmx0PyAn'
    'dmFsdWUgbXVzdCBiZSBsZXNzIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMubHRdKSA6ICcnSABSAm'
    'x0EqIBCgNsdGUYAyABKA1CjQHCSIkBCoYBCgp1aW50MzIubHRlGnghaGFzKHJ1bGVzLmd0ZSkg'
    'JiYgIWhhcyhydWxlcy5ndCkgJiYgdGhpcyA+IHJ1bGVzLmx0ZT8gJ3ZhbHVlIG11c3QgYmUgbG'
    'VzcyB0aGFuIG9yIGVxdWFsIHRvICVzJy5mb3JtYXQoW3J1bGVzLmx0ZV0pIDogJydIAFIDbHRl'
    'EqAHCgJndBgEIAEoDUKNB8JIiQcKewoJdWludDMyLmd0Gm4haGFzKHJ1bGVzLmx0KSAmJiAhaG'
    'FzKHJ1bGVzLmx0ZSkgJiYgdGhpcyA8PSBydWxlcy5ndD8gJ3ZhbHVlIG11c3QgYmUgZ3JlYXRl'
    'ciB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0XSkgOiAnJwq0AQoMdWludDMyLmd0X2x0GqMBaG'
    'FzKHJ1bGVzLmx0KSAmJiBydWxlcy5sdCA+PSBydWxlcy5ndCAmJiAodGhpcyA+PSBydWxlcy5s'
    'dCB8fCB0aGlzIDw9IHJ1bGVzLmd0KT8gJ3ZhbHVlIG11c3QgYmUgZ3JlYXRlciB0aGFuICVzIG'
    'FuZCBsZXNzIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMuZ3QsIHJ1bGVzLmx0XSkgOiAnJwq8AQoW'
    'dWludDMyLmd0X2x0X2V4Y2x1c2l2ZRqhAWhhcyhydWxlcy5sdCkgJiYgcnVsZXMubHQgPCBydW'
    'xlcy5ndCAmJiAocnVsZXMubHQgPD0gdGhpcyAmJiB0aGlzIDw9IHJ1bGVzLmd0KT8gJ3ZhbHVl'
    'IG11c3QgYmUgZ3JlYXRlciB0aGFuICVzIG9yIGxlc3MgdGhhbiAlcycuZm9ybWF0KFtydWxlcy'
    '5ndCwgcnVsZXMubHRdKSA6ICcnCsQBCg11aW50MzIuZ3RfbHRlGrIBaGFzKHJ1bGVzLmx0ZSkg'
    'JiYgcnVsZXMubHRlID49IHJ1bGVzLmd0ICYmICh0aGlzID4gcnVsZXMubHRlIHx8IHRoaXMgPD'
    '0gcnVsZXMuZ3QpPyAndmFsdWUgbXVzdCBiZSBncmVhdGVyIHRoYW4gJXMgYW5kIGxlc3MgdGhh'
    'biBvciBlcXVhbCB0byAlcycuZm9ybWF0KFtydWxlcy5ndCwgcnVsZXMubHRlXSkgOiAnJwrMAQ'
    'oXdWludDMyLmd0X2x0ZV9leGNsdXNpdmUasAFoYXMocnVsZXMubHRlKSAmJiBydWxlcy5sdGUg'
    'PCBydWxlcy5ndCAmJiAocnVsZXMubHRlIDwgdGhpcyAmJiB0aGlzIDw9IHJ1bGVzLmd0KT8gJ3'
    'ZhbHVlIG11c3QgYmUgZ3JlYXRlciB0aGFuICVzIG9yIGxlc3MgdGhhbiBvciBlcXVhbCB0byAl'
    'cycuZm9ybWF0KFtydWxlcy5ndCwgcnVsZXMubHRlXSkgOiAnJ0gBUgJndBLtBwoDZ3RlGAUgAS'
    'gNQtgHwkjUBwqJAQoKdWludDMyLmd0ZRp7IWhhcyhydWxlcy5sdCkgJiYgIWhhcyhydWxlcy5s'
    'dGUpICYmIHRoaXMgPCBydWxlcy5ndGU/ICd2YWx1ZSBtdXN0IGJlIGdyZWF0ZXIgdGhhbiBvci'
    'BlcXVhbCB0byAlcycuZm9ybWF0KFtydWxlcy5ndGVdKSA6ICcnCsMBCg11aW50MzIuZ3RlX2x0'
    'GrEBaGFzKHJ1bGVzLmx0KSAmJiBydWxlcy5sdCA+PSBydWxlcy5ndGUgJiYgKHRoaXMgPj0gcn'
    'VsZXMubHQgfHwgdGhpcyA8IHJ1bGVzLmd0ZSk/ICd2YWx1ZSBtdXN0IGJlIGdyZWF0ZXIgdGhh'
    'biBvciBlcXVhbCB0byAlcyBhbmQgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0ZSwgcn'
    'VsZXMubHRdKSA6ICcnCssBChd1aW50MzIuZ3RlX2x0X2V4Y2x1c2l2ZRqvAWhhcyhydWxlcy5s'
    'dCkgJiYgcnVsZXMubHQgPCBydWxlcy5ndGUgJiYgKHJ1bGVzLmx0IDw9IHRoaXMgJiYgdGhpcy'
    'A8IHJ1bGVzLmd0ZSk/ICd2YWx1ZSBtdXN0IGJlIGdyZWF0ZXIgdGhhbiBvciBlcXVhbCB0byAl'
    'cyBvciBsZXNzIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMuZ3RlLCBydWxlcy5sdF0pIDogJycK0w'
    'EKDnVpbnQzMi5ndGVfbHRlGsABaGFzKHJ1bGVzLmx0ZSkgJiYgcnVsZXMubHRlID49IHJ1bGVz'
    'Lmd0ZSAmJiAodGhpcyA+IHJ1bGVzLmx0ZSB8fCB0aGlzIDwgcnVsZXMuZ3RlKT8gJ3ZhbHVlIG'
    '11c3QgYmUgZ3JlYXRlciB0aGFuIG9yIGVxdWFsIHRvICVzIGFuZCBsZXNzIHRoYW4gb3IgZXF1'
    'YWwgdG8gJXMnLmZvcm1hdChbcnVsZXMuZ3RlLCBydWxlcy5sdGVdKSA6ICcnCtsBChh1aW50Mz'
    'IuZ3RlX2x0ZV9leGNsdXNpdmUavgFoYXMocnVsZXMubHRlKSAmJiBydWxlcy5sdGUgPCBydWxl'
    'cy5ndGUgJiYgKHJ1bGVzLmx0ZSA8IHRoaXMgJiYgdGhpcyA8IHJ1bGVzLmd0ZSk/ICd2YWx1ZS'
    'BtdXN0IGJlIGdyZWF0ZXIgdGhhbiBvciBlcXVhbCB0byAlcyBvciBsZXNzIHRoYW4gb3IgZXF1'
    'YWwgdG8gJXMnLmZvcm1hdChbcnVsZXMuZ3RlLCBydWxlcy5sdGVdKSA6ICcnSAFSA2d0ZRJ6Cg'
    'JpbhgGIAMoDUJqwkhnCmUKCXVpbnQzMi5pbhpYISh0aGlzIGluIGR5bihydWxlcylbJ2luJ10p'
    'ID8gJ3ZhbHVlIG11c3QgYmUgaW4gbGlzdCAlcycuZm9ybWF0KFtkeW4ocnVsZXMpWydpbiddXS'
    'kgOiAnJ1ICaW4SfgoGbm90X2luGAcgAygNQmfCSGQKYgoNdWludDMyLm5vdF9pbhpRdGhpcyBp'
    'biBydWxlcy5ub3RfaW4gPyAndmFsdWUgbXVzdCBub3QgYmUgaW4gbGlzdCAlcycuZm9ybWF0KF'
    'tydWxlcy5ub3RfaW5dKSA6ICcnUgVub3RJbkILCglsZXNzX3RoYW5CDgoMZ3JlYXRlcl90aGFu'
    'QggKBl9jb25zdA==');

@$core.Deprecated('Use uInt64RulesDescriptor instead')
const UInt64Rules$json = {
  '1': 'UInt64Rules',
  '2': [
    {'1': 'const', '3': 1, '4': 1, '5': 4, '8': {}, '9': 2, '10': 'const', '17': true},
    {'1': 'lt', '3': 2, '4': 1, '5': 4, '8': {}, '9': 0, '10': 'lt'},
    {'1': 'lte', '3': 3, '4': 1, '5': 4, '8': {}, '9': 0, '10': 'lte'},
    {'1': 'gt', '3': 4, '4': 1, '5': 4, '8': {}, '9': 1, '10': 'gt'},
    {'1': 'gte', '3': 5, '4': 1, '5': 4, '8': {}, '9': 1, '10': 'gte'},
    {'1': 'in', '3': 6, '4': 3, '5': 4, '8': {}, '10': 'in'},
    {'1': 'not_in', '3': 7, '4': 3, '5': 4, '8': {}, '10': 'notIn'},
  ],
  '8': [
    {'1': 'less_than'},
    {'1': 'greater_than'},
    {'1': '_const'},
  ],
};

/// Descriptor for `UInt64Rules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uInt64RulesDescriptor = $convert.base64Decode(
    'CgtVSW50NjRSdWxlcxJ2CgVjb25zdBgBIAEoBEJbwkhYClYKDHVpbnQ2NC5jb25zdBpGdGhpcy'
    'AhPSBydWxlcy5jb25zdCA/ICd2YWx1ZSBtdXN0IGVxdWFsICVzJy5mb3JtYXQoW3J1bGVzLmNv'
    'bnN0XSkgOiAnJ0gCUgVjb25zdIgBARKPAQoCbHQYAiABKARCfcJIegp4Cgl1aW50NjQubHQaay'
    'FoYXMocnVsZXMuZ3RlKSAmJiAhaGFzKHJ1bGVzLmd0KSAmJiB0aGlzID49IHJ1bGVzLmx0PyAn'
    'dmFsdWUgbXVzdCBiZSBsZXNzIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMubHRdKSA6ICcnSABSAm'
    'x0EqIBCgNsdGUYAyABKARCjQHCSIkBCoYBCgp1aW50NjQubHRlGnghaGFzKHJ1bGVzLmd0ZSkg'
    'JiYgIWhhcyhydWxlcy5ndCkgJiYgdGhpcyA+IHJ1bGVzLmx0ZT8gJ3ZhbHVlIG11c3QgYmUgbG'
    'VzcyB0aGFuIG9yIGVxdWFsIHRvICVzJy5mb3JtYXQoW3J1bGVzLmx0ZV0pIDogJydIAFIDbHRl'
    'EqAHCgJndBgEIAEoBEKNB8JIiQcKewoJdWludDY0Lmd0Gm4haGFzKHJ1bGVzLmx0KSAmJiAhaG'
    'FzKHJ1bGVzLmx0ZSkgJiYgdGhpcyA8PSBydWxlcy5ndD8gJ3ZhbHVlIG11c3QgYmUgZ3JlYXRl'
    'ciB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0XSkgOiAnJwq0AQoMdWludDY0Lmd0X2x0GqMBaG'
    'FzKHJ1bGVzLmx0KSAmJiBydWxlcy5sdCA+PSBydWxlcy5ndCAmJiAodGhpcyA+PSBydWxlcy5s'
    'dCB8fCB0aGlzIDw9IHJ1bGVzLmd0KT8gJ3ZhbHVlIG11c3QgYmUgZ3JlYXRlciB0aGFuICVzIG'
    'FuZCBsZXNzIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMuZ3QsIHJ1bGVzLmx0XSkgOiAnJwq8AQoW'
    'dWludDY0Lmd0X2x0X2V4Y2x1c2l2ZRqhAWhhcyhydWxlcy5sdCkgJiYgcnVsZXMubHQgPCBydW'
    'xlcy5ndCAmJiAocnVsZXMubHQgPD0gdGhpcyAmJiB0aGlzIDw9IHJ1bGVzLmd0KT8gJ3ZhbHVl'
    'IG11c3QgYmUgZ3JlYXRlciB0aGFuICVzIG9yIGxlc3MgdGhhbiAlcycuZm9ybWF0KFtydWxlcy'
    '5ndCwgcnVsZXMubHRdKSA6ICcnCsQBCg11aW50NjQuZ3RfbHRlGrIBaGFzKHJ1bGVzLmx0ZSkg'
    'JiYgcnVsZXMubHRlID49IHJ1bGVzLmd0ICYmICh0aGlzID4gcnVsZXMubHRlIHx8IHRoaXMgPD'
    '0gcnVsZXMuZ3QpPyAndmFsdWUgbXVzdCBiZSBncmVhdGVyIHRoYW4gJXMgYW5kIGxlc3MgdGhh'
    'biBvciBlcXVhbCB0byAlcycuZm9ybWF0KFtydWxlcy5ndCwgcnVsZXMubHRlXSkgOiAnJwrMAQ'
    'oXdWludDY0Lmd0X2x0ZV9leGNsdXNpdmUasAFoYXMocnVsZXMubHRlKSAmJiBydWxlcy5sdGUg'
    'PCBydWxlcy5ndCAmJiAocnVsZXMubHRlIDwgdGhpcyAmJiB0aGlzIDw9IHJ1bGVzLmd0KT8gJ3'
    'ZhbHVlIG11c3QgYmUgZ3JlYXRlciB0aGFuICVzIG9yIGxlc3MgdGhhbiBvciBlcXVhbCB0byAl'
    'cycuZm9ybWF0KFtydWxlcy5ndCwgcnVsZXMubHRlXSkgOiAnJ0gBUgJndBLtBwoDZ3RlGAUgAS'
    'gEQtgHwkjUBwqJAQoKdWludDY0Lmd0ZRp7IWhhcyhydWxlcy5sdCkgJiYgIWhhcyhydWxlcy5s'
    'dGUpICYmIHRoaXMgPCBydWxlcy5ndGU/ICd2YWx1ZSBtdXN0IGJlIGdyZWF0ZXIgdGhhbiBvci'
    'BlcXVhbCB0byAlcycuZm9ybWF0KFtydWxlcy5ndGVdKSA6ICcnCsMBCg11aW50NjQuZ3RlX2x0'
    'GrEBaGFzKHJ1bGVzLmx0KSAmJiBydWxlcy5sdCA+PSBydWxlcy5ndGUgJiYgKHRoaXMgPj0gcn'
    'VsZXMubHQgfHwgdGhpcyA8IHJ1bGVzLmd0ZSk/ICd2YWx1ZSBtdXN0IGJlIGdyZWF0ZXIgdGhh'
    'biBvciBlcXVhbCB0byAlcyBhbmQgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0ZSwgcn'
    'VsZXMubHRdKSA6ICcnCssBChd1aW50NjQuZ3RlX2x0X2V4Y2x1c2l2ZRqvAWhhcyhydWxlcy5s'
    'dCkgJiYgcnVsZXMubHQgPCBydWxlcy5ndGUgJiYgKHJ1bGVzLmx0IDw9IHRoaXMgJiYgdGhpcy'
    'A8IHJ1bGVzLmd0ZSk/ICd2YWx1ZSBtdXN0IGJlIGdyZWF0ZXIgdGhhbiBvciBlcXVhbCB0byAl'
    'cyBvciBsZXNzIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMuZ3RlLCBydWxlcy5sdF0pIDogJycK0w'
    'EKDnVpbnQ2NC5ndGVfbHRlGsABaGFzKHJ1bGVzLmx0ZSkgJiYgcnVsZXMubHRlID49IHJ1bGVz'
    'Lmd0ZSAmJiAodGhpcyA+IHJ1bGVzLmx0ZSB8fCB0aGlzIDwgcnVsZXMuZ3RlKT8gJ3ZhbHVlIG'
    '11c3QgYmUgZ3JlYXRlciB0aGFuIG9yIGVxdWFsIHRvICVzIGFuZCBsZXNzIHRoYW4gb3IgZXF1'
    'YWwgdG8gJXMnLmZvcm1hdChbcnVsZXMuZ3RlLCBydWxlcy5sdGVdKSA6ICcnCtsBChh1aW50Nj'
    'QuZ3RlX2x0ZV9leGNsdXNpdmUavgFoYXMocnVsZXMubHRlKSAmJiBydWxlcy5sdGUgPCBydWxl'
    'cy5ndGUgJiYgKHJ1bGVzLmx0ZSA8IHRoaXMgJiYgdGhpcyA8IHJ1bGVzLmd0ZSk/ICd2YWx1ZS'
    'BtdXN0IGJlIGdyZWF0ZXIgdGhhbiBvciBlcXVhbCB0byAlcyBvciBsZXNzIHRoYW4gb3IgZXF1'
    'YWwgdG8gJXMnLmZvcm1hdChbcnVsZXMuZ3RlLCBydWxlcy5sdGVdKSA6ICcnSAFSA2d0ZRJ6Cg'
    'JpbhgGIAMoBEJqwkhnCmUKCXVpbnQ2NC5pbhpYISh0aGlzIGluIGR5bihydWxlcylbJ2luJ10p'
    'ID8gJ3ZhbHVlIG11c3QgYmUgaW4gbGlzdCAlcycuZm9ybWF0KFtkeW4ocnVsZXMpWydpbiddXS'
    'kgOiAnJ1ICaW4SfgoGbm90X2luGAcgAygEQmfCSGQKYgoNdWludDY0Lm5vdF9pbhpRdGhpcyBp'
    'biBydWxlcy5ub3RfaW4gPyAndmFsdWUgbXVzdCBub3QgYmUgaW4gbGlzdCAlcycuZm9ybWF0KF'
    'tydWxlcy5ub3RfaW5dKSA6ICcnUgVub3RJbkILCglsZXNzX3RoYW5CDgoMZ3JlYXRlcl90aGFu'
    'QggKBl9jb25zdA==');

@$core.Deprecated('Use sInt32RulesDescriptor instead')
const SInt32Rules$json = {
  '1': 'SInt32Rules',
  '2': [
    {'1': 'const', '3': 1, '4': 1, '5': 17, '8': {}, '9': 2, '10': 'const', '17': true},
    {'1': 'lt', '3': 2, '4': 1, '5': 17, '8': {}, '9': 0, '10': 'lt'},
    {'1': 'lte', '3': 3, '4': 1, '5': 17, '8': {}, '9': 0, '10': 'lte'},
    {'1': 'gt', '3': 4, '4': 1, '5': 17, '8': {}, '9': 1, '10': 'gt'},
    {'1': 'gte', '3': 5, '4': 1, '5': 17, '8': {}, '9': 1, '10': 'gte'},
    {'1': 'in', '3': 6, '4': 3, '5': 17, '8': {}, '10': 'in'},
    {'1': 'not_in', '3': 7, '4': 3, '5': 17, '8': {}, '10': 'notIn'},
  ],
  '8': [
    {'1': 'less_than'},
    {'1': 'greater_than'},
    {'1': '_const'},
  ],
};

/// Descriptor for `SInt32Rules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sInt32RulesDescriptor = $convert.base64Decode(
    'CgtTSW50MzJSdWxlcxJ2CgVjb25zdBgBIAEoEUJbwkhYClYKDHNpbnQzMi5jb25zdBpGdGhpcy'
    'AhPSBydWxlcy5jb25zdCA/ICd2YWx1ZSBtdXN0IGVxdWFsICVzJy5mb3JtYXQoW3J1bGVzLmNv'
    'bnN0XSkgOiAnJ0gCUgVjb25zdIgBARKPAQoCbHQYAiABKBFCfcJIegp4CglzaW50MzIubHQaay'
    'FoYXMocnVsZXMuZ3RlKSAmJiAhaGFzKHJ1bGVzLmd0KSAmJiB0aGlzID49IHJ1bGVzLmx0PyAn'
    'dmFsdWUgbXVzdCBiZSBsZXNzIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMubHRdKSA6ICcnSABSAm'
    'x0EqIBCgNsdGUYAyABKBFCjQHCSIkBCoYBCgpzaW50MzIubHRlGnghaGFzKHJ1bGVzLmd0ZSkg'
    'JiYgIWhhcyhydWxlcy5ndCkgJiYgdGhpcyA+IHJ1bGVzLmx0ZT8gJ3ZhbHVlIG11c3QgYmUgbG'
    'VzcyB0aGFuIG9yIGVxdWFsIHRvICVzJy5mb3JtYXQoW3J1bGVzLmx0ZV0pIDogJydIAFIDbHRl'
    'EqAHCgJndBgEIAEoEUKNB8JIiQcKewoJc2ludDMyLmd0Gm4haGFzKHJ1bGVzLmx0KSAmJiAhaG'
    'FzKHJ1bGVzLmx0ZSkgJiYgdGhpcyA8PSBydWxlcy5ndD8gJ3ZhbHVlIG11c3QgYmUgZ3JlYXRl'
    'ciB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0XSkgOiAnJwq0AQoMc2ludDMyLmd0X2x0GqMBaG'
    'FzKHJ1bGVzLmx0KSAmJiBydWxlcy5sdCA+PSBydWxlcy5ndCAmJiAodGhpcyA+PSBydWxlcy5s'
    'dCB8fCB0aGlzIDw9IHJ1bGVzLmd0KT8gJ3ZhbHVlIG11c3QgYmUgZ3JlYXRlciB0aGFuICVzIG'
    'FuZCBsZXNzIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMuZ3QsIHJ1bGVzLmx0XSkgOiAnJwq8AQoW'
    'c2ludDMyLmd0X2x0X2V4Y2x1c2l2ZRqhAWhhcyhydWxlcy5sdCkgJiYgcnVsZXMubHQgPCBydW'
    'xlcy5ndCAmJiAocnVsZXMubHQgPD0gdGhpcyAmJiB0aGlzIDw9IHJ1bGVzLmd0KT8gJ3ZhbHVl'
    'IG11c3QgYmUgZ3JlYXRlciB0aGFuICVzIG9yIGxlc3MgdGhhbiAlcycuZm9ybWF0KFtydWxlcy'
    '5ndCwgcnVsZXMubHRdKSA6ICcnCsQBCg1zaW50MzIuZ3RfbHRlGrIBaGFzKHJ1bGVzLmx0ZSkg'
    'JiYgcnVsZXMubHRlID49IHJ1bGVzLmd0ICYmICh0aGlzID4gcnVsZXMubHRlIHx8IHRoaXMgPD'
    '0gcnVsZXMuZ3QpPyAndmFsdWUgbXVzdCBiZSBncmVhdGVyIHRoYW4gJXMgYW5kIGxlc3MgdGhh'
    'biBvciBlcXVhbCB0byAlcycuZm9ybWF0KFtydWxlcy5ndCwgcnVsZXMubHRlXSkgOiAnJwrMAQ'
    'oXc2ludDMyLmd0X2x0ZV9leGNsdXNpdmUasAFoYXMocnVsZXMubHRlKSAmJiBydWxlcy5sdGUg'
    'PCBydWxlcy5ndCAmJiAocnVsZXMubHRlIDwgdGhpcyAmJiB0aGlzIDw9IHJ1bGVzLmd0KT8gJ3'
    'ZhbHVlIG11c3QgYmUgZ3JlYXRlciB0aGFuICVzIG9yIGxlc3MgdGhhbiBvciBlcXVhbCB0byAl'
    'cycuZm9ybWF0KFtydWxlcy5ndCwgcnVsZXMubHRlXSkgOiAnJ0gBUgJndBLtBwoDZ3RlGAUgAS'
    'gRQtgHwkjUBwqJAQoKc2ludDMyLmd0ZRp7IWhhcyhydWxlcy5sdCkgJiYgIWhhcyhydWxlcy5s'
    'dGUpICYmIHRoaXMgPCBydWxlcy5ndGU/ICd2YWx1ZSBtdXN0IGJlIGdyZWF0ZXIgdGhhbiBvci'
    'BlcXVhbCB0byAlcycuZm9ybWF0KFtydWxlcy5ndGVdKSA6ICcnCsMBCg1zaW50MzIuZ3RlX2x0'
    'GrEBaGFzKHJ1bGVzLmx0KSAmJiBydWxlcy5sdCA+PSBydWxlcy5ndGUgJiYgKHRoaXMgPj0gcn'
    'VsZXMubHQgfHwgdGhpcyA8IHJ1bGVzLmd0ZSk/ICd2YWx1ZSBtdXN0IGJlIGdyZWF0ZXIgdGhh'
    'biBvciBlcXVhbCB0byAlcyBhbmQgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0ZSwgcn'
    'VsZXMubHRdKSA6ICcnCssBChdzaW50MzIuZ3RlX2x0X2V4Y2x1c2l2ZRqvAWhhcyhydWxlcy5s'
    'dCkgJiYgcnVsZXMubHQgPCBydWxlcy5ndGUgJiYgKHJ1bGVzLmx0IDw9IHRoaXMgJiYgdGhpcy'
    'A8IHJ1bGVzLmd0ZSk/ICd2YWx1ZSBtdXN0IGJlIGdyZWF0ZXIgdGhhbiBvciBlcXVhbCB0byAl'
    'cyBvciBsZXNzIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMuZ3RlLCBydWxlcy5sdF0pIDogJycK0w'
    'EKDnNpbnQzMi5ndGVfbHRlGsABaGFzKHJ1bGVzLmx0ZSkgJiYgcnVsZXMubHRlID49IHJ1bGVz'
    'Lmd0ZSAmJiAodGhpcyA+IHJ1bGVzLmx0ZSB8fCB0aGlzIDwgcnVsZXMuZ3RlKT8gJ3ZhbHVlIG'
    '11c3QgYmUgZ3JlYXRlciB0aGFuIG9yIGVxdWFsIHRvICVzIGFuZCBsZXNzIHRoYW4gb3IgZXF1'
    'YWwgdG8gJXMnLmZvcm1hdChbcnVsZXMuZ3RlLCBydWxlcy5sdGVdKSA6ICcnCtsBChhzaW50Mz'
    'IuZ3RlX2x0ZV9leGNsdXNpdmUavgFoYXMocnVsZXMubHRlKSAmJiBydWxlcy5sdGUgPCBydWxl'
    'cy5ndGUgJiYgKHJ1bGVzLmx0ZSA8IHRoaXMgJiYgdGhpcyA8IHJ1bGVzLmd0ZSk/ICd2YWx1ZS'
    'BtdXN0IGJlIGdyZWF0ZXIgdGhhbiBvciBlcXVhbCB0byAlcyBvciBsZXNzIHRoYW4gb3IgZXF1'
    'YWwgdG8gJXMnLmZvcm1hdChbcnVsZXMuZ3RlLCBydWxlcy5sdGVdKSA6ICcnSAFSA2d0ZRJ6Cg'
    'JpbhgGIAMoEUJqwkhnCmUKCXNpbnQzMi5pbhpYISh0aGlzIGluIGR5bihydWxlcylbJ2luJ10p'
    'ID8gJ3ZhbHVlIG11c3QgYmUgaW4gbGlzdCAlcycuZm9ybWF0KFtkeW4ocnVsZXMpWydpbiddXS'
    'kgOiAnJ1ICaW4SfgoGbm90X2luGAcgAygRQmfCSGQKYgoNc2ludDMyLm5vdF9pbhpRdGhpcyBp'
    'biBydWxlcy5ub3RfaW4gPyAndmFsdWUgbXVzdCBub3QgYmUgaW4gbGlzdCAlcycuZm9ybWF0KF'
    'tydWxlcy5ub3RfaW5dKSA6ICcnUgVub3RJbkILCglsZXNzX3RoYW5CDgoMZ3JlYXRlcl90aGFu'
    'QggKBl9jb25zdA==');

@$core.Deprecated('Use sInt64RulesDescriptor instead')
const SInt64Rules$json = {
  '1': 'SInt64Rules',
  '2': [
    {'1': 'const', '3': 1, '4': 1, '5': 18, '8': {}, '9': 2, '10': 'const', '17': true},
    {'1': 'lt', '3': 2, '4': 1, '5': 18, '8': {}, '9': 0, '10': 'lt'},
    {'1': 'lte', '3': 3, '4': 1, '5': 18, '8': {}, '9': 0, '10': 'lte'},
    {'1': 'gt', '3': 4, '4': 1, '5': 18, '8': {}, '9': 1, '10': 'gt'},
    {'1': 'gte', '3': 5, '4': 1, '5': 18, '8': {}, '9': 1, '10': 'gte'},
    {'1': 'in', '3': 6, '4': 3, '5': 18, '8': {}, '10': 'in'},
    {'1': 'not_in', '3': 7, '4': 3, '5': 18, '8': {}, '10': 'notIn'},
  ],
  '8': [
    {'1': 'less_than'},
    {'1': 'greater_than'},
    {'1': '_const'},
  ],
};

/// Descriptor for `SInt64Rules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sInt64RulesDescriptor = $convert.base64Decode(
    'CgtTSW50NjRSdWxlcxJ2CgVjb25zdBgBIAEoEkJbwkhYClYKDHNpbnQ2NC5jb25zdBpGdGhpcy'
    'AhPSBydWxlcy5jb25zdCA/ICd2YWx1ZSBtdXN0IGVxdWFsICVzJy5mb3JtYXQoW3J1bGVzLmNv'
    'bnN0XSkgOiAnJ0gCUgVjb25zdIgBARKPAQoCbHQYAiABKBJCfcJIegp4CglzaW50NjQubHQaay'
    'FoYXMocnVsZXMuZ3RlKSAmJiAhaGFzKHJ1bGVzLmd0KSAmJiB0aGlzID49IHJ1bGVzLmx0PyAn'
    'dmFsdWUgbXVzdCBiZSBsZXNzIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMubHRdKSA6ICcnSABSAm'
    'x0EqIBCgNsdGUYAyABKBJCjQHCSIkBCoYBCgpzaW50NjQubHRlGnghaGFzKHJ1bGVzLmd0ZSkg'
    'JiYgIWhhcyhydWxlcy5ndCkgJiYgdGhpcyA+IHJ1bGVzLmx0ZT8gJ3ZhbHVlIG11c3QgYmUgbG'
    'VzcyB0aGFuIG9yIGVxdWFsIHRvICVzJy5mb3JtYXQoW3J1bGVzLmx0ZV0pIDogJydIAFIDbHRl'
    'EqAHCgJndBgEIAEoEkKNB8JIiQcKewoJc2ludDY0Lmd0Gm4haGFzKHJ1bGVzLmx0KSAmJiAhaG'
    'FzKHJ1bGVzLmx0ZSkgJiYgdGhpcyA8PSBydWxlcy5ndD8gJ3ZhbHVlIG11c3QgYmUgZ3JlYXRl'
    'ciB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0XSkgOiAnJwq0AQoMc2ludDY0Lmd0X2x0GqMBaG'
    'FzKHJ1bGVzLmx0KSAmJiBydWxlcy5sdCA+PSBydWxlcy5ndCAmJiAodGhpcyA+PSBydWxlcy5s'
    'dCB8fCB0aGlzIDw9IHJ1bGVzLmd0KT8gJ3ZhbHVlIG11c3QgYmUgZ3JlYXRlciB0aGFuICVzIG'
    'FuZCBsZXNzIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMuZ3QsIHJ1bGVzLmx0XSkgOiAnJwq8AQoW'
    'c2ludDY0Lmd0X2x0X2V4Y2x1c2l2ZRqhAWhhcyhydWxlcy5sdCkgJiYgcnVsZXMubHQgPCBydW'
    'xlcy5ndCAmJiAocnVsZXMubHQgPD0gdGhpcyAmJiB0aGlzIDw9IHJ1bGVzLmd0KT8gJ3ZhbHVl'
    'IG11c3QgYmUgZ3JlYXRlciB0aGFuICVzIG9yIGxlc3MgdGhhbiAlcycuZm9ybWF0KFtydWxlcy'
    '5ndCwgcnVsZXMubHRdKSA6ICcnCsQBCg1zaW50NjQuZ3RfbHRlGrIBaGFzKHJ1bGVzLmx0ZSkg'
    'JiYgcnVsZXMubHRlID49IHJ1bGVzLmd0ICYmICh0aGlzID4gcnVsZXMubHRlIHx8IHRoaXMgPD'
    '0gcnVsZXMuZ3QpPyAndmFsdWUgbXVzdCBiZSBncmVhdGVyIHRoYW4gJXMgYW5kIGxlc3MgdGhh'
    'biBvciBlcXVhbCB0byAlcycuZm9ybWF0KFtydWxlcy5ndCwgcnVsZXMubHRlXSkgOiAnJwrMAQ'
    'oXc2ludDY0Lmd0X2x0ZV9leGNsdXNpdmUasAFoYXMocnVsZXMubHRlKSAmJiBydWxlcy5sdGUg'
    'PCBydWxlcy5ndCAmJiAocnVsZXMubHRlIDwgdGhpcyAmJiB0aGlzIDw9IHJ1bGVzLmd0KT8gJ3'
    'ZhbHVlIG11c3QgYmUgZ3JlYXRlciB0aGFuICVzIG9yIGxlc3MgdGhhbiBvciBlcXVhbCB0byAl'
    'cycuZm9ybWF0KFtydWxlcy5ndCwgcnVsZXMubHRlXSkgOiAnJ0gBUgJndBLtBwoDZ3RlGAUgAS'
    'gSQtgHwkjUBwqJAQoKc2ludDY0Lmd0ZRp7IWhhcyhydWxlcy5sdCkgJiYgIWhhcyhydWxlcy5s'
    'dGUpICYmIHRoaXMgPCBydWxlcy5ndGU/ICd2YWx1ZSBtdXN0IGJlIGdyZWF0ZXIgdGhhbiBvci'
    'BlcXVhbCB0byAlcycuZm9ybWF0KFtydWxlcy5ndGVdKSA6ICcnCsMBCg1zaW50NjQuZ3RlX2x0'
    'GrEBaGFzKHJ1bGVzLmx0KSAmJiBydWxlcy5sdCA+PSBydWxlcy5ndGUgJiYgKHRoaXMgPj0gcn'
    'VsZXMubHQgfHwgdGhpcyA8IHJ1bGVzLmd0ZSk/ICd2YWx1ZSBtdXN0IGJlIGdyZWF0ZXIgdGhh'
    'biBvciBlcXVhbCB0byAlcyBhbmQgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0ZSwgcn'
    'VsZXMubHRdKSA6ICcnCssBChdzaW50NjQuZ3RlX2x0X2V4Y2x1c2l2ZRqvAWhhcyhydWxlcy5s'
    'dCkgJiYgcnVsZXMubHQgPCBydWxlcy5ndGUgJiYgKHJ1bGVzLmx0IDw9IHRoaXMgJiYgdGhpcy'
    'A8IHJ1bGVzLmd0ZSk/ICd2YWx1ZSBtdXN0IGJlIGdyZWF0ZXIgdGhhbiBvciBlcXVhbCB0byAl'
    'cyBvciBsZXNzIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMuZ3RlLCBydWxlcy5sdF0pIDogJycK0w'
    'EKDnNpbnQ2NC5ndGVfbHRlGsABaGFzKHJ1bGVzLmx0ZSkgJiYgcnVsZXMubHRlID49IHJ1bGVz'
    'Lmd0ZSAmJiAodGhpcyA+IHJ1bGVzLmx0ZSB8fCB0aGlzIDwgcnVsZXMuZ3RlKT8gJ3ZhbHVlIG'
    '11c3QgYmUgZ3JlYXRlciB0aGFuIG9yIGVxdWFsIHRvICVzIGFuZCBsZXNzIHRoYW4gb3IgZXF1'
    'YWwgdG8gJXMnLmZvcm1hdChbcnVsZXMuZ3RlLCBydWxlcy5sdGVdKSA6ICcnCtsBChhzaW50Nj'
    'QuZ3RlX2x0ZV9leGNsdXNpdmUavgFoYXMocnVsZXMubHRlKSAmJiBydWxlcy5sdGUgPCBydWxl'
    'cy5ndGUgJiYgKHJ1bGVzLmx0ZSA8IHRoaXMgJiYgdGhpcyA8IHJ1bGVzLmd0ZSk/ICd2YWx1ZS'
    'BtdXN0IGJlIGdyZWF0ZXIgdGhhbiBvciBlcXVhbCB0byAlcyBvciBsZXNzIHRoYW4gb3IgZXF1'
    'YWwgdG8gJXMnLmZvcm1hdChbcnVsZXMuZ3RlLCBydWxlcy5sdGVdKSA6ICcnSAFSA2d0ZRJ6Cg'
    'JpbhgGIAMoEkJqwkhnCmUKCXNpbnQ2NC5pbhpYISh0aGlzIGluIGR5bihydWxlcylbJ2luJ10p'
    'ID8gJ3ZhbHVlIG11c3QgYmUgaW4gbGlzdCAlcycuZm9ybWF0KFtkeW4ocnVsZXMpWydpbiddXS'
    'kgOiAnJ1ICaW4SfgoGbm90X2luGAcgAygSQmfCSGQKYgoNc2ludDY0Lm5vdF9pbhpRdGhpcyBp'
    'biBydWxlcy5ub3RfaW4gPyAndmFsdWUgbXVzdCBub3QgYmUgaW4gbGlzdCAlcycuZm9ybWF0KF'
    'tydWxlcy5ub3RfaW5dKSA6ICcnUgVub3RJbkILCglsZXNzX3RoYW5CDgoMZ3JlYXRlcl90aGFu'
    'QggKBl9jb25zdA==');

@$core.Deprecated('Use fixed32RulesDescriptor instead')
const Fixed32Rules$json = {
  '1': 'Fixed32Rules',
  '2': [
    {'1': 'const', '3': 1, '4': 1, '5': 7, '8': {}, '9': 2, '10': 'const', '17': true},
    {'1': 'lt', '3': 2, '4': 1, '5': 7, '8': {}, '9': 0, '10': 'lt'},
    {'1': 'lte', '3': 3, '4': 1, '5': 7, '8': {}, '9': 0, '10': 'lte'},
    {'1': 'gt', '3': 4, '4': 1, '5': 7, '8': {}, '9': 1, '10': 'gt'},
    {'1': 'gte', '3': 5, '4': 1, '5': 7, '8': {}, '9': 1, '10': 'gte'},
    {'1': 'in', '3': 6, '4': 3, '5': 7, '8': {}, '10': 'in'},
    {'1': 'not_in', '3': 7, '4': 3, '5': 7, '8': {}, '10': 'notIn'},
  ],
  '8': [
    {'1': 'less_than'},
    {'1': 'greater_than'},
    {'1': '_const'},
  ],
};

/// Descriptor for `Fixed32Rules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fixed32RulesDescriptor = $convert.base64Decode(
    'CgxGaXhlZDMyUnVsZXMSdwoFY29uc3QYASABKAdCXMJIWQpXCg1maXhlZDMyLmNvbnN0GkZ0aG'
    'lzICE9IHJ1bGVzLmNvbnN0ID8gJ3ZhbHVlIG11c3QgZXF1YWwgJXMnLmZvcm1hdChbcnVsZXMu'
    'Y29uc3RdKSA6ICcnSAJSBWNvbnN0iAEBEpABCgJsdBgCIAEoB0J+wkh7CnkKCmZpeGVkMzIubH'
    'QaayFoYXMocnVsZXMuZ3RlKSAmJiAhaGFzKHJ1bGVzLmd0KSAmJiB0aGlzID49IHJ1bGVzLmx0'
    'PyAndmFsdWUgbXVzdCBiZSBsZXNzIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMubHRdKSA6ICcnSA'
    'BSAmx0EqMBCgNsdGUYAyABKAdCjgHCSIoBCocBCgtmaXhlZDMyLmx0ZRp4IWhhcyhydWxlcy5n'
    'dGUpICYmICFoYXMocnVsZXMuZ3QpICYmIHRoaXMgPiBydWxlcy5sdGU/ICd2YWx1ZSBtdXN0IG'
    'JlIGxlc3MgdGhhbiBvciBlcXVhbCB0byAlcycuZm9ybWF0KFtydWxlcy5sdGVdKSA6ICcnSABS'
    'A2x0ZRKlBwoCZ3QYBCABKAdCkgfCSI4HCnwKCmZpeGVkMzIuZ3QabiFoYXMocnVsZXMubHQpIC'
    'YmICFoYXMocnVsZXMubHRlKSAmJiB0aGlzIDw9IHJ1bGVzLmd0PyAndmFsdWUgbXVzdCBiZSBn'
    'cmVhdGVyIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMuZ3RdKSA6ICcnCrUBCg1maXhlZDMyLmd0X2'
    'x0GqMBaGFzKHJ1bGVzLmx0KSAmJiBydWxlcy5sdCA+PSBydWxlcy5ndCAmJiAodGhpcyA+PSBy'
    'dWxlcy5sdCB8fCB0aGlzIDw9IHJ1bGVzLmd0KT8gJ3ZhbHVlIG11c3QgYmUgZ3JlYXRlciB0aG'
    'FuICVzIGFuZCBsZXNzIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMuZ3QsIHJ1bGVzLmx0XSkgOiAn'
    'Jwq9AQoXZml4ZWQzMi5ndF9sdF9leGNsdXNpdmUaoQFoYXMocnVsZXMubHQpICYmIHJ1bGVzLm'
    'x0IDwgcnVsZXMuZ3QgJiYgKHJ1bGVzLmx0IDw9IHRoaXMgJiYgdGhpcyA8PSBydWxlcy5ndCk/'
    'ICd2YWx1ZSBtdXN0IGJlIGdyZWF0ZXIgdGhhbiAlcyBvciBsZXNzIHRoYW4gJXMnLmZvcm1hdC'
    'hbcnVsZXMuZ3QsIHJ1bGVzLmx0XSkgOiAnJwrFAQoOZml4ZWQzMi5ndF9sdGUasgFoYXMocnVs'
    'ZXMubHRlKSAmJiBydWxlcy5sdGUgPj0gcnVsZXMuZ3QgJiYgKHRoaXMgPiBydWxlcy5sdGUgfH'
    'wgdGhpcyA8PSBydWxlcy5ndCk/ICd2YWx1ZSBtdXN0IGJlIGdyZWF0ZXIgdGhhbiAlcyBhbmQg'
    'bGVzcyB0aGFuIG9yIGVxdWFsIHRvICVzJy5mb3JtYXQoW3J1bGVzLmd0LCBydWxlcy5sdGVdKS'
    'A6ICcnCs0BChhmaXhlZDMyLmd0X2x0ZV9leGNsdXNpdmUasAFoYXMocnVsZXMubHRlKSAmJiBy'
    'dWxlcy5sdGUgPCBydWxlcy5ndCAmJiAocnVsZXMubHRlIDwgdGhpcyAmJiB0aGlzIDw9IHJ1bG'
    'VzLmd0KT8gJ3ZhbHVlIG11c3QgYmUgZ3JlYXRlciB0aGFuICVzIG9yIGxlc3MgdGhhbiBvciBl'
    'cXVhbCB0byAlcycuZm9ybWF0KFtydWxlcy5ndCwgcnVsZXMubHRlXSkgOiAnJ0gBUgJndBLyBw'
    'oDZ3RlGAUgASgHQt0HwkjZBwqKAQoLZml4ZWQzMi5ndGUaeyFoYXMocnVsZXMubHQpICYmICFo'
    'YXMocnVsZXMubHRlKSAmJiB0aGlzIDwgcnVsZXMuZ3RlPyAndmFsdWUgbXVzdCBiZSBncmVhdG'
    'VyIHRoYW4gb3IgZXF1YWwgdG8gJXMnLmZvcm1hdChbcnVsZXMuZ3RlXSkgOiAnJwrEAQoOZml4'
    'ZWQzMi5ndGVfbHQasQFoYXMocnVsZXMubHQpICYmIHJ1bGVzLmx0ID49IHJ1bGVzLmd0ZSAmJi'
    'AodGhpcyA+PSBydWxlcy5sdCB8fCB0aGlzIDwgcnVsZXMuZ3RlKT8gJ3ZhbHVlIG11c3QgYmUg'
    'Z3JlYXRlciB0aGFuIG9yIGVxdWFsIHRvICVzIGFuZCBsZXNzIHRoYW4gJXMnLmZvcm1hdChbcn'
    'VsZXMuZ3RlLCBydWxlcy5sdF0pIDogJycKzAEKGGZpeGVkMzIuZ3RlX2x0X2V4Y2x1c2l2ZRqv'
    'AWhhcyhydWxlcy5sdCkgJiYgcnVsZXMubHQgPCBydWxlcy5ndGUgJiYgKHJ1bGVzLmx0IDw9IH'
    'RoaXMgJiYgdGhpcyA8IHJ1bGVzLmd0ZSk/ICd2YWx1ZSBtdXN0IGJlIGdyZWF0ZXIgdGhhbiBv'
    'ciBlcXVhbCB0byAlcyBvciBsZXNzIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMuZ3RlLCBydWxlcy'
    '5sdF0pIDogJycK1AEKD2ZpeGVkMzIuZ3RlX2x0ZRrAAWhhcyhydWxlcy5sdGUpICYmIHJ1bGVz'
    'Lmx0ZSA+PSBydWxlcy5ndGUgJiYgKHRoaXMgPiBydWxlcy5sdGUgfHwgdGhpcyA8IHJ1bGVzLm'
    'd0ZSk/ICd2YWx1ZSBtdXN0IGJlIGdyZWF0ZXIgdGhhbiBvciBlcXVhbCB0byAlcyBhbmQgbGVz'
    'cyB0aGFuIG9yIGVxdWFsIHRvICVzJy5mb3JtYXQoW3J1bGVzLmd0ZSwgcnVsZXMubHRlXSkgOi'
    'AnJwrcAQoZZml4ZWQzMi5ndGVfbHRlX2V4Y2x1c2l2ZRq+AWhhcyhydWxlcy5sdGUpICYmIHJ1'
    'bGVzLmx0ZSA8IHJ1bGVzLmd0ZSAmJiAocnVsZXMubHRlIDwgdGhpcyAmJiB0aGlzIDwgcnVsZX'
    'MuZ3RlKT8gJ3ZhbHVlIG11c3QgYmUgZ3JlYXRlciB0aGFuIG9yIGVxdWFsIHRvICVzIG9yIGxl'
    'c3MgdGhhbiBvciBlcXVhbCB0byAlcycuZm9ybWF0KFtydWxlcy5ndGUsIHJ1bGVzLmx0ZV0pID'
    'ogJydIAVIDZ3RlEnsKAmluGAYgAygHQmvCSGgKZgoKZml4ZWQzMi5pbhpYISh0aGlzIGluIGR5'
    'bihydWxlcylbJ2luJ10pID8gJ3ZhbHVlIG11c3QgYmUgaW4gbGlzdCAlcycuZm9ybWF0KFtkeW'
    '4ocnVsZXMpWydpbiddXSkgOiAnJ1ICaW4SfwoGbm90X2luGAcgAygHQmjCSGUKYwoOZml4ZWQz'
    'Mi5ub3RfaW4aUXRoaXMgaW4gcnVsZXMubm90X2luID8gJ3ZhbHVlIG11c3Qgbm90IGJlIGluIG'
    'xpc3QgJXMnLmZvcm1hdChbcnVsZXMubm90X2luXSkgOiAnJ1IFbm90SW5CCwoJbGVzc190aGFu'
    'Qg4KDGdyZWF0ZXJfdGhhbkIICgZfY29uc3Q=');

@$core.Deprecated('Use fixed64RulesDescriptor instead')
const Fixed64Rules$json = {
  '1': 'Fixed64Rules',
  '2': [
    {'1': 'const', '3': 1, '4': 1, '5': 6, '8': {}, '9': 2, '10': 'const', '17': true},
    {'1': 'lt', '3': 2, '4': 1, '5': 6, '8': {}, '9': 0, '10': 'lt'},
    {'1': 'lte', '3': 3, '4': 1, '5': 6, '8': {}, '9': 0, '10': 'lte'},
    {'1': 'gt', '3': 4, '4': 1, '5': 6, '8': {}, '9': 1, '10': 'gt'},
    {'1': 'gte', '3': 5, '4': 1, '5': 6, '8': {}, '9': 1, '10': 'gte'},
    {'1': 'in', '3': 6, '4': 3, '5': 6, '8': {}, '10': 'in'},
    {'1': 'not_in', '3': 7, '4': 3, '5': 6, '8': {}, '10': 'notIn'},
  ],
  '8': [
    {'1': 'less_than'},
    {'1': 'greater_than'},
    {'1': '_const'},
  ],
};

/// Descriptor for `Fixed64Rules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fixed64RulesDescriptor = $convert.base64Decode(
    'CgxGaXhlZDY0UnVsZXMSdwoFY29uc3QYASABKAZCXMJIWQpXCg1maXhlZDY0LmNvbnN0GkZ0aG'
    'lzICE9IHJ1bGVzLmNvbnN0ID8gJ3ZhbHVlIG11c3QgZXF1YWwgJXMnLmZvcm1hdChbcnVsZXMu'
    'Y29uc3RdKSA6ICcnSAJSBWNvbnN0iAEBEpABCgJsdBgCIAEoBkJ+wkh7CnkKCmZpeGVkNjQubH'
    'QaayFoYXMocnVsZXMuZ3RlKSAmJiAhaGFzKHJ1bGVzLmd0KSAmJiB0aGlzID49IHJ1bGVzLmx0'
    'PyAndmFsdWUgbXVzdCBiZSBsZXNzIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMubHRdKSA6ICcnSA'
    'BSAmx0EqMBCgNsdGUYAyABKAZCjgHCSIoBCocBCgtmaXhlZDY0Lmx0ZRp4IWhhcyhydWxlcy5n'
    'dGUpICYmICFoYXMocnVsZXMuZ3QpICYmIHRoaXMgPiBydWxlcy5sdGU/ICd2YWx1ZSBtdXN0IG'
    'JlIGxlc3MgdGhhbiBvciBlcXVhbCB0byAlcycuZm9ybWF0KFtydWxlcy5sdGVdKSA6ICcnSABS'
    'A2x0ZRKlBwoCZ3QYBCABKAZCkgfCSI4HCnwKCmZpeGVkNjQuZ3QabiFoYXMocnVsZXMubHQpIC'
    'YmICFoYXMocnVsZXMubHRlKSAmJiB0aGlzIDw9IHJ1bGVzLmd0PyAndmFsdWUgbXVzdCBiZSBn'
    'cmVhdGVyIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMuZ3RdKSA6ICcnCrUBCg1maXhlZDY0Lmd0X2'
    'x0GqMBaGFzKHJ1bGVzLmx0KSAmJiBydWxlcy5sdCA+PSBydWxlcy5ndCAmJiAodGhpcyA+PSBy'
    'dWxlcy5sdCB8fCB0aGlzIDw9IHJ1bGVzLmd0KT8gJ3ZhbHVlIG11c3QgYmUgZ3JlYXRlciB0aG'
    'FuICVzIGFuZCBsZXNzIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMuZ3QsIHJ1bGVzLmx0XSkgOiAn'
    'Jwq9AQoXZml4ZWQ2NC5ndF9sdF9leGNsdXNpdmUaoQFoYXMocnVsZXMubHQpICYmIHJ1bGVzLm'
    'x0IDwgcnVsZXMuZ3QgJiYgKHJ1bGVzLmx0IDw9IHRoaXMgJiYgdGhpcyA8PSBydWxlcy5ndCk/'
    'ICd2YWx1ZSBtdXN0IGJlIGdyZWF0ZXIgdGhhbiAlcyBvciBsZXNzIHRoYW4gJXMnLmZvcm1hdC'
    'hbcnVsZXMuZ3QsIHJ1bGVzLmx0XSkgOiAnJwrFAQoOZml4ZWQ2NC5ndF9sdGUasgFoYXMocnVs'
    'ZXMubHRlKSAmJiBydWxlcy5sdGUgPj0gcnVsZXMuZ3QgJiYgKHRoaXMgPiBydWxlcy5sdGUgfH'
    'wgdGhpcyA8PSBydWxlcy5ndCk/ICd2YWx1ZSBtdXN0IGJlIGdyZWF0ZXIgdGhhbiAlcyBhbmQg'
    'bGVzcyB0aGFuIG9yIGVxdWFsIHRvICVzJy5mb3JtYXQoW3J1bGVzLmd0LCBydWxlcy5sdGVdKS'
    'A6ICcnCs0BChhmaXhlZDY0Lmd0X2x0ZV9leGNsdXNpdmUasAFoYXMocnVsZXMubHRlKSAmJiBy'
    'dWxlcy5sdGUgPCBydWxlcy5ndCAmJiAocnVsZXMubHRlIDwgdGhpcyAmJiB0aGlzIDw9IHJ1bG'
    'VzLmd0KT8gJ3ZhbHVlIG11c3QgYmUgZ3JlYXRlciB0aGFuICVzIG9yIGxlc3MgdGhhbiBvciBl'
    'cXVhbCB0byAlcycuZm9ybWF0KFtydWxlcy5ndCwgcnVsZXMubHRlXSkgOiAnJ0gBUgJndBLyBw'
    'oDZ3RlGAUgASgGQt0HwkjZBwqKAQoLZml4ZWQ2NC5ndGUaeyFoYXMocnVsZXMubHQpICYmICFo'
    'YXMocnVsZXMubHRlKSAmJiB0aGlzIDwgcnVsZXMuZ3RlPyAndmFsdWUgbXVzdCBiZSBncmVhdG'
    'VyIHRoYW4gb3IgZXF1YWwgdG8gJXMnLmZvcm1hdChbcnVsZXMuZ3RlXSkgOiAnJwrEAQoOZml4'
    'ZWQ2NC5ndGVfbHQasQFoYXMocnVsZXMubHQpICYmIHJ1bGVzLmx0ID49IHJ1bGVzLmd0ZSAmJi'
    'AodGhpcyA+PSBydWxlcy5sdCB8fCB0aGlzIDwgcnVsZXMuZ3RlKT8gJ3ZhbHVlIG11c3QgYmUg'
    'Z3JlYXRlciB0aGFuIG9yIGVxdWFsIHRvICVzIGFuZCBsZXNzIHRoYW4gJXMnLmZvcm1hdChbcn'
    'VsZXMuZ3RlLCBydWxlcy5sdF0pIDogJycKzAEKGGZpeGVkNjQuZ3RlX2x0X2V4Y2x1c2l2ZRqv'
    'AWhhcyhydWxlcy5sdCkgJiYgcnVsZXMubHQgPCBydWxlcy5ndGUgJiYgKHJ1bGVzLmx0IDw9IH'
    'RoaXMgJiYgdGhpcyA8IHJ1bGVzLmd0ZSk/ICd2YWx1ZSBtdXN0IGJlIGdyZWF0ZXIgdGhhbiBv'
    'ciBlcXVhbCB0byAlcyBvciBsZXNzIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMuZ3RlLCBydWxlcy'
    '5sdF0pIDogJycK1AEKD2ZpeGVkNjQuZ3RlX2x0ZRrAAWhhcyhydWxlcy5sdGUpICYmIHJ1bGVz'
    'Lmx0ZSA+PSBydWxlcy5ndGUgJiYgKHRoaXMgPiBydWxlcy5sdGUgfHwgdGhpcyA8IHJ1bGVzLm'
    'd0ZSk/ICd2YWx1ZSBtdXN0IGJlIGdyZWF0ZXIgdGhhbiBvciBlcXVhbCB0byAlcyBhbmQgbGVz'
    'cyB0aGFuIG9yIGVxdWFsIHRvICVzJy5mb3JtYXQoW3J1bGVzLmd0ZSwgcnVsZXMubHRlXSkgOi'
    'AnJwrcAQoZZml4ZWQ2NC5ndGVfbHRlX2V4Y2x1c2l2ZRq+AWhhcyhydWxlcy5sdGUpICYmIHJ1'
    'bGVzLmx0ZSA8IHJ1bGVzLmd0ZSAmJiAocnVsZXMubHRlIDwgdGhpcyAmJiB0aGlzIDwgcnVsZX'
    'MuZ3RlKT8gJ3ZhbHVlIG11c3QgYmUgZ3JlYXRlciB0aGFuIG9yIGVxdWFsIHRvICVzIG9yIGxl'
    'c3MgdGhhbiBvciBlcXVhbCB0byAlcycuZm9ybWF0KFtydWxlcy5ndGUsIHJ1bGVzLmx0ZV0pID'
    'ogJydIAVIDZ3RlEnsKAmluGAYgAygGQmvCSGgKZgoKZml4ZWQ2NC5pbhpYISh0aGlzIGluIGR5'
    'bihydWxlcylbJ2luJ10pID8gJ3ZhbHVlIG11c3QgYmUgaW4gbGlzdCAlcycuZm9ybWF0KFtkeW'
    '4ocnVsZXMpWydpbiddXSkgOiAnJ1ICaW4SfwoGbm90X2luGAcgAygGQmjCSGUKYwoOZml4ZWQ2'
    'NC5ub3RfaW4aUXRoaXMgaW4gcnVsZXMubm90X2luID8gJ3ZhbHVlIG11c3Qgbm90IGJlIGluIG'
    'xpc3QgJXMnLmZvcm1hdChbcnVsZXMubm90X2luXSkgOiAnJ1IFbm90SW5CCwoJbGVzc190aGFu'
    'Qg4KDGdyZWF0ZXJfdGhhbkIICgZfY29uc3Q=');

@$core.Deprecated('Use sFixed32RulesDescriptor instead')
const SFixed32Rules$json = {
  '1': 'SFixed32Rules',
  '2': [
    {'1': 'const', '3': 1, '4': 1, '5': 15, '8': {}, '9': 2, '10': 'const', '17': true},
    {'1': 'lt', '3': 2, '4': 1, '5': 15, '8': {}, '9': 0, '10': 'lt'},
    {'1': 'lte', '3': 3, '4': 1, '5': 15, '8': {}, '9': 0, '10': 'lte'},
    {'1': 'gt', '3': 4, '4': 1, '5': 15, '8': {}, '9': 1, '10': 'gt'},
    {'1': 'gte', '3': 5, '4': 1, '5': 15, '8': {}, '9': 1, '10': 'gte'},
    {'1': 'in', '3': 6, '4': 3, '5': 15, '8': {}, '10': 'in'},
    {'1': 'not_in', '3': 7, '4': 3, '5': 15, '8': {}, '10': 'notIn'},
  ],
  '8': [
    {'1': 'less_than'},
    {'1': 'greater_than'},
    {'1': '_const'},
  ],
};

/// Descriptor for `SFixed32Rules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sFixed32RulesDescriptor = $convert.base64Decode(
    'Cg1TRml4ZWQzMlJ1bGVzEngKBWNvbnN0GAEgASgPQl3CSFoKWAoOc2ZpeGVkMzIuY29uc3QaRn'
    'RoaXMgIT0gcnVsZXMuY29uc3QgPyAndmFsdWUgbXVzdCBlcXVhbCAlcycuZm9ybWF0KFtydWxl'
    'cy5jb25zdF0pIDogJydIAlIFY29uc3SIAQESkQEKAmx0GAIgASgPQn/CSHwKegoLc2ZpeGVkMz'
    'IubHQaayFoYXMocnVsZXMuZ3RlKSAmJiAhaGFzKHJ1bGVzLmd0KSAmJiB0aGlzID49IHJ1bGVz'
    'Lmx0PyAndmFsdWUgbXVzdCBiZSBsZXNzIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMubHRdKSA6IC'
    'cnSABSAmx0EqQBCgNsdGUYAyABKA9CjwHCSIsBCogBCgxzZml4ZWQzMi5sdGUaeCFoYXMocnVs'
    'ZXMuZ3RlKSAmJiAhaGFzKHJ1bGVzLmd0KSAmJiB0aGlzID4gcnVsZXMubHRlPyAndmFsdWUgbX'
    'VzdCBiZSBsZXNzIHRoYW4gb3IgZXF1YWwgdG8gJXMnLmZvcm1hdChbcnVsZXMubHRlXSkgOiAn'
    'J0gAUgNsdGUSqgcKAmd0GAQgASgPQpcHwkiTBwp9CgtzZml4ZWQzMi5ndBpuIWhhcyhydWxlcy'
    '5sdCkgJiYgIWhhcyhydWxlcy5sdGUpICYmIHRoaXMgPD0gcnVsZXMuZ3Q/ICd2YWx1ZSBtdXN0'
    'IGJlIGdyZWF0ZXIgdGhhbiAlcycuZm9ybWF0KFtydWxlcy5ndF0pIDogJycKtgEKDnNmaXhlZD'
    'MyLmd0X2x0GqMBaGFzKHJ1bGVzLmx0KSAmJiBydWxlcy5sdCA+PSBydWxlcy5ndCAmJiAodGhp'
    'cyA+PSBydWxlcy5sdCB8fCB0aGlzIDw9IHJ1bGVzLmd0KT8gJ3ZhbHVlIG11c3QgYmUgZ3JlYX'
    'RlciB0aGFuICVzIGFuZCBsZXNzIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMuZ3QsIHJ1bGVzLmx0'
    'XSkgOiAnJwq+AQoYc2ZpeGVkMzIuZ3RfbHRfZXhjbHVzaXZlGqEBaGFzKHJ1bGVzLmx0KSAmJi'
    'BydWxlcy5sdCA8IHJ1bGVzLmd0ICYmIChydWxlcy5sdCA8PSB0aGlzICYmIHRoaXMgPD0gcnVs'
    'ZXMuZ3QpPyAndmFsdWUgbXVzdCBiZSBncmVhdGVyIHRoYW4gJXMgb3IgbGVzcyB0aGFuICVzJy'
    '5mb3JtYXQoW3J1bGVzLmd0LCBydWxlcy5sdF0pIDogJycKxgEKD3NmaXhlZDMyLmd0X2x0ZRqy'
    'AWhhcyhydWxlcy5sdGUpICYmIHJ1bGVzLmx0ZSA+PSBydWxlcy5ndCAmJiAodGhpcyA+IHJ1bG'
    'VzLmx0ZSB8fCB0aGlzIDw9IHJ1bGVzLmd0KT8gJ3ZhbHVlIG11c3QgYmUgZ3JlYXRlciB0aGFu'
    'ICVzIGFuZCBsZXNzIHRoYW4gb3IgZXF1YWwgdG8gJXMnLmZvcm1hdChbcnVsZXMuZ3QsIHJ1bG'
    'VzLmx0ZV0pIDogJycKzgEKGXNmaXhlZDMyLmd0X2x0ZV9leGNsdXNpdmUasAFoYXMocnVsZXMu'
    'bHRlKSAmJiBydWxlcy5sdGUgPCBydWxlcy5ndCAmJiAocnVsZXMubHRlIDwgdGhpcyAmJiB0aG'
    'lzIDw9IHJ1bGVzLmd0KT8gJ3ZhbHVlIG11c3QgYmUgZ3JlYXRlciB0aGFuICVzIG9yIGxlc3Mg'
    'dGhhbiBvciBlcXVhbCB0byAlcycuZm9ybWF0KFtydWxlcy5ndCwgcnVsZXMubHRlXSkgOiAnJ0'
    'gBUgJndBL3BwoDZ3RlGAUgASgPQuIHwkjeBwqLAQoMc2ZpeGVkMzIuZ3RlGnshaGFzKHJ1bGVz'
    'Lmx0KSAmJiAhaGFzKHJ1bGVzLmx0ZSkgJiYgdGhpcyA8IHJ1bGVzLmd0ZT8gJ3ZhbHVlIG11c3'
    'QgYmUgZ3JlYXRlciB0aGFuIG9yIGVxdWFsIHRvICVzJy5mb3JtYXQoW3J1bGVzLmd0ZV0pIDog'
    'JycKxQEKD3NmaXhlZDMyLmd0ZV9sdBqxAWhhcyhydWxlcy5sdCkgJiYgcnVsZXMubHQgPj0gcn'
    'VsZXMuZ3RlICYmICh0aGlzID49IHJ1bGVzLmx0IHx8IHRoaXMgPCBydWxlcy5ndGUpPyAndmFs'
    'dWUgbXVzdCBiZSBncmVhdGVyIHRoYW4gb3IgZXF1YWwgdG8gJXMgYW5kIGxlc3MgdGhhbiAlcy'
    'cuZm9ybWF0KFtydWxlcy5ndGUsIHJ1bGVzLmx0XSkgOiAnJwrNAQoZc2ZpeGVkMzIuZ3RlX2x0'
    'X2V4Y2x1c2l2ZRqvAWhhcyhydWxlcy5sdCkgJiYgcnVsZXMubHQgPCBydWxlcy5ndGUgJiYgKH'
    'J1bGVzLmx0IDw9IHRoaXMgJiYgdGhpcyA8IHJ1bGVzLmd0ZSk/ICd2YWx1ZSBtdXN0IGJlIGdy'
    'ZWF0ZXIgdGhhbiBvciBlcXVhbCB0byAlcyBvciBsZXNzIHRoYW4gJXMnLmZvcm1hdChbcnVsZX'
    'MuZ3RlLCBydWxlcy5sdF0pIDogJycK1QEKEHNmaXhlZDMyLmd0ZV9sdGUawAFoYXMocnVsZXMu'
    'bHRlKSAmJiBydWxlcy5sdGUgPj0gcnVsZXMuZ3RlICYmICh0aGlzID4gcnVsZXMubHRlIHx8IH'
    'RoaXMgPCBydWxlcy5ndGUpPyAndmFsdWUgbXVzdCBiZSBncmVhdGVyIHRoYW4gb3IgZXF1YWwg'
    'dG8gJXMgYW5kIGxlc3MgdGhhbiBvciBlcXVhbCB0byAlcycuZm9ybWF0KFtydWxlcy5ndGUsIH'
    'J1bGVzLmx0ZV0pIDogJycK3QEKGnNmaXhlZDMyLmd0ZV9sdGVfZXhjbHVzaXZlGr4BaGFzKHJ1'
    'bGVzLmx0ZSkgJiYgcnVsZXMubHRlIDwgcnVsZXMuZ3RlICYmIChydWxlcy5sdGUgPCB0aGlzIC'
    'YmIHRoaXMgPCBydWxlcy5ndGUpPyAndmFsdWUgbXVzdCBiZSBncmVhdGVyIHRoYW4gb3IgZXF1'
    'YWwgdG8gJXMgb3IgbGVzcyB0aGFuIG9yIGVxdWFsIHRvICVzJy5mb3JtYXQoW3J1bGVzLmd0ZS'
    'wgcnVsZXMubHRlXSkgOiAnJ0gBUgNndGUSfAoCaW4YBiADKA9CbMJIaQpnCgtzZml4ZWQzMi5p'
    'bhpYISh0aGlzIGluIGR5bihydWxlcylbJ2luJ10pID8gJ3ZhbHVlIG11c3QgYmUgaW4gbGlzdC'
    'AlcycuZm9ybWF0KFtkeW4ocnVsZXMpWydpbiddXSkgOiAnJ1ICaW4SgAEKBm5vdF9pbhgHIAMo'
    'D0JpwkhmCmQKD3NmaXhlZDMyLm5vdF9pbhpRdGhpcyBpbiBydWxlcy5ub3RfaW4gPyAndmFsdW'
    'UgbXVzdCBub3QgYmUgaW4gbGlzdCAlcycuZm9ybWF0KFtydWxlcy5ub3RfaW5dKSA6ICcnUgVu'
    'b3RJbkILCglsZXNzX3RoYW5CDgoMZ3JlYXRlcl90aGFuQggKBl9jb25zdA==');

@$core.Deprecated('Use sFixed64RulesDescriptor instead')
const SFixed64Rules$json = {
  '1': 'SFixed64Rules',
  '2': [
    {'1': 'const', '3': 1, '4': 1, '5': 16, '8': {}, '9': 2, '10': 'const', '17': true},
    {'1': 'lt', '3': 2, '4': 1, '5': 16, '8': {}, '9': 0, '10': 'lt'},
    {'1': 'lte', '3': 3, '4': 1, '5': 16, '8': {}, '9': 0, '10': 'lte'},
    {'1': 'gt', '3': 4, '4': 1, '5': 16, '8': {}, '9': 1, '10': 'gt'},
    {'1': 'gte', '3': 5, '4': 1, '5': 16, '8': {}, '9': 1, '10': 'gte'},
    {'1': 'in', '3': 6, '4': 3, '5': 16, '8': {}, '10': 'in'},
    {'1': 'not_in', '3': 7, '4': 3, '5': 16, '8': {}, '10': 'notIn'},
  ],
  '8': [
    {'1': 'less_than'},
    {'1': 'greater_than'},
    {'1': '_const'},
  ],
};

/// Descriptor for `SFixed64Rules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sFixed64RulesDescriptor = $convert.base64Decode(
    'Cg1TRml4ZWQ2NFJ1bGVzEngKBWNvbnN0GAEgASgQQl3CSFoKWAoOc2ZpeGVkNjQuY29uc3QaRn'
    'RoaXMgIT0gcnVsZXMuY29uc3QgPyAndmFsdWUgbXVzdCBlcXVhbCAlcycuZm9ybWF0KFtydWxl'
    'cy5jb25zdF0pIDogJydIAlIFY29uc3SIAQESkQEKAmx0GAIgASgQQn/CSHwKegoLc2ZpeGVkNj'
    'QubHQaayFoYXMocnVsZXMuZ3RlKSAmJiAhaGFzKHJ1bGVzLmd0KSAmJiB0aGlzID49IHJ1bGVz'
    'Lmx0PyAndmFsdWUgbXVzdCBiZSBsZXNzIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMubHRdKSA6IC'
    'cnSABSAmx0EqQBCgNsdGUYAyABKBBCjwHCSIsBCogBCgxzZml4ZWQ2NC5sdGUaeCFoYXMocnVs'
    'ZXMuZ3RlKSAmJiAhaGFzKHJ1bGVzLmd0KSAmJiB0aGlzID4gcnVsZXMubHRlPyAndmFsdWUgbX'
    'VzdCBiZSBsZXNzIHRoYW4gb3IgZXF1YWwgdG8gJXMnLmZvcm1hdChbcnVsZXMubHRlXSkgOiAn'
    'J0gAUgNsdGUSqgcKAmd0GAQgASgQQpcHwkiTBwp9CgtzZml4ZWQ2NC5ndBpuIWhhcyhydWxlcy'
    '5sdCkgJiYgIWhhcyhydWxlcy5sdGUpICYmIHRoaXMgPD0gcnVsZXMuZ3Q/ICd2YWx1ZSBtdXN0'
    'IGJlIGdyZWF0ZXIgdGhhbiAlcycuZm9ybWF0KFtydWxlcy5ndF0pIDogJycKtgEKDnNmaXhlZD'
    'Y0Lmd0X2x0GqMBaGFzKHJ1bGVzLmx0KSAmJiBydWxlcy5sdCA+PSBydWxlcy5ndCAmJiAodGhp'
    'cyA+PSBydWxlcy5sdCB8fCB0aGlzIDw9IHJ1bGVzLmd0KT8gJ3ZhbHVlIG11c3QgYmUgZ3JlYX'
    'RlciB0aGFuICVzIGFuZCBsZXNzIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMuZ3QsIHJ1bGVzLmx0'
    'XSkgOiAnJwq+AQoYc2ZpeGVkNjQuZ3RfbHRfZXhjbHVzaXZlGqEBaGFzKHJ1bGVzLmx0KSAmJi'
    'BydWxlcy5sdCA8IHJ1bGVzLmd0ICYmIChydWxlcy5sdCA8PSB0aGlzICYmIHRoaXMgPD0gcnVs'
    'ZXMuZ3QpPyAndmFsdWUgbXVzdCBiZSBncmVhdGVyIHRoYW4gJXMgb3IgbGVzcyB0aGFuICVzJy'
    '5mb3JtYXQoW3J1bGVzLmd0LCBydWxlcy5sdF0pIDogJycKxgEKD3NmaXhlZDY0Lmd0X2x0ZRqy'
    'AWhhcyhydWxlcy5sdGUpICYmIHJ1bGVzLmx0ZSA+PSBydWxlcy5ndCAmJiAodGhpcyA+IHJ1bG'
    'VzLmx0ZSB8fCB0aGlzIDw9IHJ1bGVzLmd0KT8gJ3ZhbHVlIG11c3QgYmUgZ3JlYXRlciB0aGFu'
    'ICVzIGFuZCBsZXNzIHRoYW4gb3IgZXF1YWwgdG8gJXMnLmZvcm1hdChbcnVsZXMuZ3QsIHJ1bG'
    'VzLmx0ZV0pIDogJycKzgEKGXNmaXhlZDY0Lmd0X2x0ZV9leGNsdXNpdmUasAFoYXMocnVsZXMu'
    'bHRlKSAmJiBydWxlcy5sdGUgPCBydWxlcy5ndCAmJiAocnVsZXMubHRlIDwgdGhpcyAmJiB0aG'
    'lzIDw9IHJ1bGVzLmd0KT8gJ3ZhbHVlIG11c3QgYmUgZ3JlYXRlciB0aGFuICVzIG9yIGxlc3Mg'
    'dGhhbiBvciBlcXVhbCB0byAlcycuZm9ybWF0KFtydWxlcy5ndCwgcnVsZXMubHRlXSkgOiAnJ0'
    'gBUgJndBL3BwoDZ3RlGAUgASgQQuIHwkjeBwqLAQoMc2ZpeGVkNjQuZ3RlGnshaGFzKHJ1bGVz'
    'Lmx0KSAmJiAhaGFzKHJ1bGVzLmx0ZSkgJiYgdGhpcyA8IHJ1bGVzLmd0ZT8gJ3ZhbHVlIG11c3'
    'QgYmUgZ3JlYXRlciB0aGFuIG9yIGVxdWFsIHRvICVzJy5mb3JtYXQoW3J1bGVzLmd0ZV0pIDog'
    'JycKxQEKD3NmaXhlZDY0Lmd0ZV9sdBqxAWhhcyhydWxlcy5sdCkgJiYgcnVsZXMubHQgPj0gcn'
    'VsZXMuZ3RlICYmICh0aGlzID49IHJ1bGVzLmx0IHx8IHRoaXMgPCBydWxlcy5ndGUpPyAndmFs'
    'dWUgbXVzdCBiZSBncmVhdGVyIHRoYW4gb3IgZXF1YWwgdG8gJXMgYW5kIGxlc3MgdGhhbiAlcy'
    'cuZm9ybWF0KFtydWxlcy5ndGUsIHJ1bGVzLmx0XSkgOiAnJwrNAQoZc2ZpeGVkNjQuZ3RlX2x0'
    'X2V4Y2x1c2l2ZRqvAWhhcyhydWxlcy5sdCkgJiYgcnVsZXMubHQgPCBydWxlcy5ndGUgJiYgKH'
    'J1bGVzLmx0IDw9IHRoaXMgJiYgdGhpcyA8IHJ1bGVzLmd0ZSk/ICd2YWx1ZSBtdXN0IGJlIGdy'
    'ZWF0ZXIgdGhhbiBvciBlcXVhbCB0byAlcyBvciBsZXNzIHRoYW4gJXMnLmZvcm1hdChbcnVsZX'
    'MuZ3RlLCBydWxlcy5sdF0pIDogJycK1QEKEHNmaXhlZDY0Lmd0ZV9sdGUawAFoYXMocnVsZXMu'
    'bHRlKSAmJiBydWxlcy5sdGUgPj0gcnVsZXMuZ3RlICYmICh0aGlzID4gcnVsZXMubHRlIHx8IH'
    'RoaXMgPCBydWxlcy5ndGUpPyAndmFsdWUgbXVzdCBiZSBncmVhdGVyIHRoYW4gb3IgZXF1YWwg'
    'dG8gJXMgYW5kIGxlc3MgdGhhbiBvciBlcXVhbCB0byAlcycuZm9ybWF0KFtydWxlcy5ndGUsIH'
    'J1bGVzLmx0ZV0pIDogJycK3QEKGnNmaXhlZDY0Lmd0ZV9sdGVfZXhjbHVzaXZlGr4BaGFzKHJ1'
    'bGVzLmx0ZSkgJiYgcnVsZXMubHRlIDwgcnVsZXMuZ3RlICYmIChydWxlcy5sdGUgPCB0aGlzIC'
    'YmIHRoaXMgPCBydWxlcy5ndGUpPyAndmFsdWUgbXVzdCBiZSBncmVhdGVyIHRoYW4gb3IgZXF1'
    'YWwgdG8gJXMgb3IgbGVzcyB0aGFuIG9yIGVxdWFsIHRvICVzJy5mb3JtYXQoW3J1bGVzLmd0ZS'
    'wgcnVsZXMubHRlXSkgOiAnJ0gBUgNndGUSfAoCaW4YBiADKBBCbMJIaQpnCgtzZml4ZWQ2NC5p'
    'bhpYISh0aGlzIGluIGR5bihydWxlcylbJ2luJ10pID8gJ3ZhbHVlIG11c3QgYmUgaW4gbGlzdC'
    'AlcycuZm9ybWF0KFtkeW4ocnVsZXMpWydpbiddXSkgOiAnJ1ICaW4SgAEKBm5vdF9pbhgHIAMo'
    'EEJpwkhmCmQKD3NmaXhlZDY0Lm5vdF9pbhpRdGhpcyBpbiBydWxlcy5ub3RfaW4gPyAndmFsdW'
    'UgbXVzdCBub3QgYmUgaW4gbGlzdCAlcycuZm9ybWF0KFtydWxlcy5ub3RfaW5dKSA6ICcnUgVu'
    'b3RJbkILCglsZXNzX3RoYW5CDgoMZ3JlYXRlcl90aGFuQggKBl9jb25zdA==');

@$core.Deprecated('Use boolRulesDescriptor instead')
const BoolRules$json = {
  '1': 'BoolRules',
  '2': [
    {'1': 'const', '3': 1, '4': 1, '5': 8, '8': {}, '9': 0, '10': 'const', '17': true},
  ],
  '8': [
    {'1': '_const'},
  ],
};

/// Descriptor for `BoolRules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boolRulesDescriptor = $convert.base64Decode(
    'CglCb29sUnVsZXMSdAoFY29uc3QYASABKAhCWcJIVgpUCgpib29sLmNvbnN0GkZ0aGlzICE9IH'
    'J1bGVzLmNvbnN0ID8gJ3ZhbHVlIG11c3QgZXF1YWwgJXMnLmZvcm1hdChbcnVsZXMuY29uc3Rd'
    'KSA6ICcnSABSBWNvbnN0iAEBQggKBl9jb25zdA==');

@$core.Deprecated('Use stringRulesDescriptor instead')
const StringRules$json = {
  '1': 'StringRules',
  '2': [
    {'1': 'const', '3': 1, '4': 1, '5': 9, '8': {}, '9': 1, '10': 'const', '17': true},
    {'1': 'len', '3': 19, '4': 1, '5': 4, '8': {}, '9': 2, '10': 'len', '17': true},
    {'1': 'min_len', '3': 2, '4': 1, '5': 4, '8': {}, '9': 3, '10': 'minLen', '17': true},
    {'1': 'max_len', '3': 3, '4': 1, '5': 4, '8': {}, '9': 4, '10': 'maxLen', '17': true},
    {'1': 'len_bytes', '3': 20, '4': 1, '5': 4, '8': {}, '9': 5, '10': 'lenBytes', '17': true},
    {'1': 'min_bytes', '3': 4, '4': 1, '5': 4, '8': {}, '9': 6, '10': 'minBytes', '17': true},
    {'1': 'max_bytes', '3': 5, '4': 1, '5': 4, '8': {}, '9': 7, '10': 'maxBytes', '17': true},
    {'1': 'pattern', '3': 6, '4': 1, '5': 9, '8': {}, '9': 8, '10': 'pattern', '17': true},
    {'1': 'prefix', '3': 7, '4': 1, '5': 9, '8': {}, '9': 9, '10': 'prefix', '17': true},
    {'1': 'suffix', '3': 8, '4': 1, '5': 9, '8': {}, '9': 10, '10': 'suffix', '17': true},
    {'1': 'contains', '3': 9, '4': 1, '5': 9, '8': {}, '9': 11, '10': 'contains', '17': true},
    {'1': 'not_contains', '3': 23, '4': 1, '5': 9, '8': {}, '9': 12, '10': 'notContains', '17': true},
    {'1': 'in', '3': 10, '4': 3, '5': 9, '8': {}, '10': 'in'},
    {'1': 'not_in', '3': 11, '4': 3, '5': 9, '8': {}, '10': 'notIn'},
    {'1': 'email', '3': 12, '4': 1, '5': 8, '8': {}, '9': 0, '10': 'email'},
    {'1': 'hostname', '3': 13, '4': 1, '5': 8, '8': {}, '9': 0, '10': 'hostname'},
    {'1': 'ip', '3': 14, '4': 1, '5': 8, '8': {}, '9': 0, '10': 'ip'},
    {'1': 'ipv4', '3': 15, '4': 1, '5': 8, '8': {}, '9': 0, '10': 'ipv4'},
    {'1': 'ipv6', '3': 16, '4': 1, '5': 8, '8': {}, '9': 0, '10': 'ipv6'},
    {'1': 'uri', '3': 17, '4': 1, '5': 8, '8': {}, '9': 0, '10': 'uri'},
    {'1': 'uri_ref', '3': 18, '4': 1, '5': 8, '8': {}, '9': 0, '10': 'uriRef'},
    {'1': 'address', '3': 21, '4': 1, '5': 8, '8': {}, '9': 0, '10': 'address'},
    {'1': 'uuid', '3': 22, '4': 1, '5': 8, '8': {}, '9': 0, '10': 'uuid'},
    {'1': 'tuuid', '3': 33, '4': 1, '5': 8, '8': {}, '9': 0, '10': 'tuuid'},
    {'1': 'ip_with_prefixlen', '3': 26, '4': 1, '5': 8, '8': {}, '9': 0, '10': 'ipWithPrefixlen'},
    {'1': 'ipv4_with_prefixlen', '3': 27, '4': 1, '5': 8, '8': {}, '9': 0, '10': 'ipv4WithPrefixlen'},
    {'1': 'ipv6_with_prefixlen', '3': 28, '4': 1, '5': 8, '8': {}, '9': 0, '10': 'ipv6WithPrefixlen'},
    {'1': 'ip_prefix', '3': 29, '4': 1, '5': 8, '8': {}, '9': 0, '10': 'ipPrefix'},
    {'1': 'ipv4_prefix', '3': 30, '4': 1, '5': 8, '8': {}, '9': 0, '10': 'ipv4Prefix'},
    {'1': 'ipv6_prefix', '3': 31, '4': 1, '5': 8, '8': {}, '9': 0, '10': 'ipv6Prefix'},
    {'1': 'host_and_port', '3': 32, '4': 1, '5': 8, '8': {}, '9': 0, '10': 'hostAndPort'},
    {'1': 'well_known_regex', '3': 24, '4': 1, '5': 14, '6': '.buf.validate.KnownRegex', '8': {}, '9': 0, '10': 'wellKnownRegex'},
    {'1': 'strict', '3': 25, '4': 1, '5': 8, '9': 13, '10': 'strict', '17': true},
  ],
  '8': [
    {'1': 'well_known'},
    {'1': '_const'},
    {'1': '_len'},
    {'1': '_min_len'},
    {'1': '_max_len'},
    {'1': '_len_bytes'},
    {'1': '_min_bytes'},
    {'1': '_max_bytes'},
    {'1': '_pattern'},
    {'1': '_prefix'},
    {'1': '_suffix'},
    {'1': '_contains'},
    {'1': '_not_contains'},
    {'1': '_strict'},
  ],
};

/// Descriptor for `StringRules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stringRulesDescriptor = $convert.base64Decode(
    'CgtTdHJpbmdSdWxlcxJ4CgVjb25zdBgBIAEoCUJdwkhaClgKDHN0cmluZy5jb25zdBpIdGhpcy'
    'AhPSBydWxlcy5jb25zdCA/ICd2YWx1ZSBtdXN0IGVxdWFsIGAlc2AnLmZvcm1hdChbcnVsZXMu'
    'Y29uc3RdKSA6ICcnSAFSBWNvbnN0iAEBEogBCgNsZW4YEyABKARCccJIbgpsCgpzdHJpbmcubG'
    'VuGl51aW50KHRoaXMuc2l6ZSgpKSAhPSBydWxlcy5sZW4gPyAndmFsdWUgbGVuZ3RoIG11c3Qg'
    'YmUgJXMgY2hhcmFjdGVycycuZm9ybWF0KFtydWxlcy5sZW5dKSA6ICcnSAJSA2xlbogBARKmAQ'
    'oHbWluX2xlbhgCIAEoBEKHAcJIgwEKgAEKDnN0cmluZy5taW5fbGVuGm51aW50KHRoaXMuc2l6'
    'ZSgpKSA8IHJ1bGVzLm1pbl9sZW4gPyAndmFsdWUgbGVuZ3RoIG11c3QgYmUgYXQgbGVhc3QgJX'
    'MgY2hhcmFjdGVycycuZm9ybWF0KFtydWxlcy5taW5fbGVuXSkgOiAnJ0gDUgZtaW5MZW6IAQES'
    'pAEKB21heF9sZW4YAyABKARChQHCSIEBCn8KDnN0cmluZy5tYXhfbGVuGm11aW50KHRoaXMuc2'
    'l6ZSgpKSA+IHJ1bGVzLm1heF9sZW4gPyAndmFsdWUgbGVuZ3RoIG11c3QgYmUgYXQgbW9zdCAl'
    'cyBjaGFyYWN0ZXJzJy5mb3JtYXQoW3J1bGVzLm1heF9sZW5dKSA6ICcnSARSBm1heExlbogBAR'
    'KqAQoJbGVuX2J5dGVzGBQgASgEQocBwkiDAQqAAQoQc3RyaW5nLmxlbl9ieXRlcxpsdWludChi'
    'eXRlcyh0aGlzKS5zaXplKCkpICE9IHJ1bGVzLmxlbl9ieXRlcyA/ICd2YWx1ZSBsZW5ndGggbX'
    'VzdCBiZSAlcyBieXRlcycuZm9ybWF0KFtydWxlcy5sZW5fYnl0ZXNdKSA6ICcnSAVSCGxlbkJ5'
    'dGVziAEBErIBCgltaW5fYnl0ZXMYBCABKARCjwHCSIsBCogBChBzdHJpbmcubWluX2J5dGVzGn'
    'R1aW50KGJ5dGVzKHRoaXMpLnNpemUoKSkgPCBydWxlcy5taW5fYnl0ZXMgPyAndmFsdWUgbGVu'
    'Z3RoIG11c3QgYmUgYXQgbGVhc3QgJXMgYnl0ZXMnLmZvcm1hdChbcnVsZXMubWluX2J5dGVzXS'
    'kgOiAnJ0gGUghtaW5CeXRlc4gBARKxAQoJbWF4X2J5dGVzGAUgASgEQo4BwkiKAQqHAQoQc3Ry'
    'aW5nLm1heF9ieXRlcxpzdWludChieXRlcyh0aGlzKS5zaXplKCkpID4gcnVsZXMubWF4X2J5dG'
    'VzID8gJ3ZhbHVlIGxlbmd0aCBtdXN0IGJlIGF0IG1vc3QgJXMgYnl0ZXMnLmZvcm1hdChbcnVs'
    'ZXMubWF4X2J5dGVzXSkgOiAnJ0gHUghtYXhCeXRlc4gBARKbAQoHcGF0dGVybhgGIAEoCUJ8wk'
    'h5CncKDnN0cmluZy5wYXR0ZXJuGmUhdGhpcy5tYXRjaGVzKHJ1bGVzLnBhdHRlcm4pID8gJ3Zh'
    'bHVlIGRvZXMgbm90IG1hdGNoIHJlZ2V4IHBhdHRlcm4gYCVzYCcuZm9ybWF0KFtydWxlcy5wYX'
    'R0ZXJuXSkgOiAnJ0gIUgdwYXR0ZXJuiAEBEpEBCgZwcmVmaXgYByABKAlCdMJIcQpvCg1zdHJp'
    'bmcucHJlZml4Gl4hdGhpcy5zdGFydHNXaXRoKHJ1bGVzLnByZWZpeCkgPyAndmFsdWUgZG9lcy'
    'Bub3QgaGF2ZSBwcmVmaXggYCVzYCcuZm9ybWF0KFtydWxlcy5wcmVmaXhdKSA6ICcnSAlSBnBy'
    'ZWZpeIgBARKPAQoGc3VmZml4GAggASgJQnLCSG8KbQoNc3RyaW5nLnN1ZmZpeBpcIXRoaXMuZW'
    '5kc1dpdGgocnVsZXMuc3VmZml4KSA/ICd2YWx1ZSBkb2VzIG5vdCBoYXZlIHN1ZmZpeCBgJXNg'
    'Jy5mb3JtYXQoW3J1bGVzLnN1ZmZpeF0pIDogJydIClIGc3VmZml4iAEBEp8BCghjb250YWlucx'
    'gJIAEoCUJ+wkh7CnkKD3N0cmluZy5jb250YWlucxpmIXRoaXMuY29udGFpbnMocnVsZXMuY29u'
    'dGFpbnMpID8gJ3ZhbHVlIGRvZXMgbm90IGNvbnRhaW4gc3Vic3RyaW5nIGAlc2AnLmZvcm1hdC'
    'hbcnVsZXMuY29udGFpbnNdKSA6ICcnSAtSCGNvbnRhaW5ziAEBEqoBCgxub3RfY29udGFpbnMY'
    'FyABKAlCgQHCSH4KfAoTc3RyaW5nLm5vdF9jb250YWlucxpldGhpcy5jb250YWlucyhydWxlcy'
    '5ub3RfY29udGFpbnMpID8gJ3ZhbHVlIGNvbnRhaW5zIHN1YnN0cmluZyBgJXNgJy5mb3JtYXQo'
    'W3J1bGVzLm5vdF9jb250YWluc10pIDogJydIDFILbm90Q29udGFpbnOIAQESegoCaW4YCiADKA'
    'lCasJIZwplCglzdHJpbmcuaW4aWCEodGhpcyBpbiBkeW4ocnVsZXMpWydpbiddKSA/ICd2YWx1'
    'ZSBtdXN0IGJlIGluIGxpc3QgJXMnLmZvcm1hdChbZHluKHJ1bGVzKVsnaW4nXV0pIDogJydSAm'
    'luEn4KBm5vdF9pbhgLIAMoCUJnwkhkCmIKDXN0cmluZy5ub3RfaW4aUXRoaXMgaW4gcnVsZXMu'
    'bm90X2luID8gJ3ZhbHVlIG11c3Qgbm90IGJlIGluIGxpc3QgJXMnLmZvcm1hdChbcnVsZXMubm'
    '90X2luXSkgOiAnJ1IFbm90SW4SxgEKBWVtYWlsGAwgASgIQq0BwkipAQpRCgxzdHJpbmcuZW1h'
    'aWwSI3ZhbHVlIG11c3QgYmUgYSB2YWxpZCBlbWFpbCBhZGRyZXNzGhx0aGlzID09ICcnIHx8IH'
    'RoaXMuaXNFbWFpbCgpClQKEnN0cmluZy5lbWFpbF9lbXB0eRIydmFsdWUgaXMgZW1wdHksIHdo'
    'aWNoIGlzIG5vdCBhIHZhbGlkIGVtYWlsIGFkZHJlc3MaCnRoaXMgIT0gJydIAFIFZW1haWwSyw'
    'EKCGhvc3RuYW1lGA0gASgIQqwBwkioAQpSCg9zdHJpbmcuaG9zdG5hbWUSHnZhbHVlIG11c3Qg'
    'YmUgYSB2YWxpZCBob3N0bmFtZRofdGhpcyA9PSAnJyB8fCB0aGlzLmlzSG9zdG5hbWUoKQpSCh'
    'VzdHJpbmcuaG9zdG5hbWVfZW1wdHkSLXZhbHVlIGlzIGVtcHR5LCB3aGljaCBpcyBub3QgYSB2'
    'YWxpZCBob3N0bmFtZRoKdGhpcyAhPSAnJ0gAUghob3N0bmFtZRKxAQoCaXAYDiABKAhCngHCSJ'
    'oBCkgKCXN0cmluZy5pcBIgdmFsdWUgbXVzdCBiZSBhIHZhbGlkIElQIGFkZHJlc3MaGXRoaXMg'
    'PT0gJycgfHwgdGhpcy5pc0lwKCkKTgoPc3RyaW5nLmlwX2VtcHR5Ei92YWx1ZSBpcyBlbXB0eS'
    'wgd2hpY2ggaXMgbm90IGEgdmFsaWQgSVAgYWRkcmVzcxoKdGhpcyAhPSAnJ0gAUgJpcBK+AQoE'
    'aXB2NBgPIAEoCEKnAcJIowEKTQoLc3RyaW5nLmlwdjQSInZhbHVlIG11c3QgYmUgYSB2YWxpZC'
    'BJUHY0IGFkZHJlc3MaGnRoaXMgPT0gJycgfHwgdGhpcy5pc0lwKDQpClIKEXN0cmluZy5pcHY0'
    'X2VtcHR5EjF2YWx1ZSBpcyBlbXB0eSwgd2hpY2ggaXMgbm90IGEgdmFsaWQgSVB2NCBhZGRyZX'
    'NzGgp0aGlzICE9ICcnSABSBGlwdjQSvgEKBGlwdjYYECABKAhCpwHCSKMBCk0KC3N0cmluZy5p'
    'cHY2EiJ2YWx1ZSBtdXN0IGJlIGEgdmFsaWQgSVB2NiBhZGRyZXNzGhp0aGlzID09ICcnIHx8IH'
    'RoaXMuaXNJcCg2KQpSChFzdHJpbmcuaXB2Nl9lbXB0eRIxdmFsdWUgaXMgZW1wdHksIHdoaWNo'
    'IGlzIG5vdCBhIHZhbGlkIElQdjYgYWRkcmVzcxoKdGhpcyAhPSAnJ0gAUgRpcHY2EqgBCgN1cm'
    'kYESABKAhCkwHCSI8BCkMKCnN0cmluZy51cmkSGXZhbHVlIG11c3QgYmUgYSB2YWxpZCBVUkka'
    'GnRoaXMgPT0gJycgfHwgdGhpcy5pc1VyaSgpCkgKEHN0cmluZy51cmlfZW1wdHkSKHZhbHVlIG'
    'lzIGVtcHR5LCB3aGljaCBpcyBub3QgYSB2YWxpZCBVUkkaCnRoaXMgIT0gJydIAFIDdXJpElwK'
    'B3VyaV9yZWYYEiABKAhCQcJIPgo8Cg5zdHJpbmcudXJpX3JlZhIZdmFsdWUgbXVzdCBiZSBhIH'
    'ZhbGlkIFVSSRoPdGhpcy5pc1VyaVJlZigpSABSBnVyaVJlZhL0AQoHYWRkcmVzcxgVIAEoCELX'
    'AcJI0wEKbwoOc3RyaW5nLmFkZHJlc3MSLXZhbHVlIG11c3QgYmUgYSB2YWxpZCBob3N0bmFtZS'
    'wgb3IgaXAgYWRkcmVzcxoudGhpcyA9PSAnJyB8fCB0aGlzLmlzSG9zdG5hbWUoKSB8fCB0aGlz'
    'LmlzSXAoKQpgChRzdHJpbmcuYWRkcmVzc19lbXB0eRI8dmFsdWUgaXMgZW1wdHksIHdoaWNoIG'
    'lzIG5vdCBhIHZhbGlkIGhvc3RuYW1lLCBvciBpcCBhZGRyZXNzGgp0aGlzICE9ICcnSABSB2Fk'
    'ZHJlc3MSgAIKBHV1aWQYFiABKAhC6QHCSOUBCpYBCgtzdHJpbmcudXVpZBIadmFsdWUgbXVzdC'
    'BiZSBhIHZhbGlkIFVVSUQaa3RoaXMgPT0gJycgfHwgdGhpcy5tYXRjaGVzKCdeWzAtOWEtZkEt'
    'Rl17OH0tWzAtOWEtZkEtRl17NH0tWzAtOWEtZkEtRl17NH0tWzAtOWEtZkEtRl17NH0tWzAtOW'
    'EtZkEtRl17MTJ9JCcpCkoKEXN0cmluZy51dWlkX2VtcHR5Eil2YWx1ZSBpcyBlbXB0eSwgd2hp'
    'Y2ggaXMgbm90IGEgdmFsaWQgVVVJRBoKdGhpcyAhPSAnJ0gAUgR1dWlkEtcBCgV0dXVpZBghIA'
    'EoCEK+AcJIugEKYwoMc3RyaW5nLnR1dWlkEiJ2YWx1ZSBtdXN0IGJlIGEgdmFsaWQgdHJpbW1l'
    'ZCBVVUlEGi90aGlzID09ICcnIHx8IHRoaXMubWF0Y2hlcygnXlswLTlhLWZBLUZdezMyfSQnKQ'
    'pTChJzdHJpbmcudHV1aWRfZW1wdHkSMXZhbHVlIGlzIGVtcHR5LCB3aGljaCBpcyBub3QgYSB2'
    'YWxpZCB0cmltbWVkIFVVSUQaCnRoaXMgIT0gJydIAFIFdHV1aWQS7wEKEWlwX3dpdGhfcHJlZm'
    'l4bGVuGBogASgIQsABwki8AQpcChhzdHJpbmcuaXBfd2l0aF9wcmVmaXhsZW4SH3ZhbHVlIG11'
    'c3QgYmUgYSB2YWxpZCBJUCBwcmVmaXgaH3RoaXMgPT0gJycgfHwgdGhpcy5pc0lwUHJlZml4KC'
    'kKXAoec3RyaW5nLmlwX3dpdGhfcHJlZml4bGVuX2VtcHR5Ei52YWx1ZSBpcyBlbXB0eSwgd2hp'
    'Y2ggaXMgbm90IGEgdmFsaWQgSVAgcHJlZml4Ggp0aGlzICE9ICcnSABSD2lwV2l0aFByZWZpeG'
    'xlbhKkAgoTaXB2NF93aXRoX3ByZWZpeGxlbhgbIAEoCELxAcJI7QEKdQoac3RyaW5nLmlwdjRf'
    'd2l0aF9wcmVmaXhsZW4SNXZhbHVlIG11c3QgYmUgYSB2YWxpZCBJUHY0IGFkZHJlc3Mgd2l0aC'
    'BwcmVmaXggbGVuZ3RoGiB0aGlzID09ICcnIHx8IHRoaXMuaXNJcFByZWZpeCg0KQp0CiBzdHJp'
    'bmcuaXB2NF93aXRoX3ByZWZpeGxlbl9lbXB0eRJEdmFsdWUgaXMgZW1wdHksIHdoaWNoIGlzIG'
    '5vdCBhIHZhbGlkIElQdjQgYWRkcmVzcyB3aXRoIHByZWZpeCBsZW5ndGgaCnRoaXMgIT0gJydI'
    'AFIRaXB2NFdpdGhQcmVmaXhsZW4SpAIKE2lwdjZfd2l0aF9wcmVmaXhsZW4YHCABKAhC8QHCSO'
    '0BCnUKGnN0cmluZy5pcHY2X3dpdGhfcHJlZml4bGVuEjV2YWx1ZSBtdXN0IGJlIGEgdmFsaWQg'
    'SVB2NiBhZGRyZXNzIHdpdGggcHJlZml4IGxlbmd0aBogdGhpcyA9PSAnJyB8fCB0aGlzLmlzSX'
    'BQcmVmaXgoNikKdAogc3RyaW5nLmlwdjZfd2l0aF9wcmVmaXhsZW5fZW1wdHkSRHZhbHVlIGlz'
    'IGVtcHR5LCB3aGljaCBpcyBub3QgYSB2YWxpZCBJUHY2IGFkZHJlc3Mgd2l0aCBwcmVmaXggbG'
    'VuZ3RoGgp0aGlzICE9ICcnSABSEWlwdjZXaXRoUHJlZml4bGVuEtQBCglpcF9wcmVmaXgYHSAB'
    'KAhCtAHCSLABClgKEHN0cmluZy5pcF9wcmVmaXgSH3ZhbHVlIG11c3QgYmUgYSB2YWxpZCBJUC'
    'BwcmVmaXgaI3RoaXMgPT0gJycgfHwgdGhpcy5pc0lwUHJlZml4KHRydWUpClQKFnN0cmluZy5p'
    'cF9wcmVmaXhfZW1wdHkSLnZhbHVlIGlzIGVtcHR5LCB3aGljaCBpcyBub3QgYSB2YWxpZCBJUC'
    'BwcmVmaXgaCnRoaXMgIT0gJydIAFIIaXBQcmVmaXgS4wEKC2lwdjRfcHJlZml4GB4gASgIQr8B'
    'wki7AQpfChJzdHJpbmcuaXB2NF9wcmVmaXgSIXZhbHVlIG11c3QgYmUgYSB2YWxpZCBJUHY0IH'
    'ByZWZpeBomdGhpcyA9PSAnJyB8fCB0aGlzLmlzSXBQcmVmaXgoNCwgdHJ1ZSkKWAoYc3RyaW5n'
    'LmlwdjRfcHJlZml4X2VtcHR5EjB2YWx1ZSBpcyBlbXB0eSwgd2hpY2ggaXMgbm90IGEgdmFsaW'
    'QgSVB2NCBwcmVmaXgaCnRoaXMgIT0gJydIAFIKaXB2NFByZWZpeBLjAQoLaXB2Nl9wcmVmaXgY'
    'HyABKAhCvwHCSLsBCl8KEnN0cmluZy5pcHY2X3ByZWZpeBIhdmFsdWUgbXVzdCBiZSBhIHZhbG'
    'lkIElQdjYgcHJlZml4GiZ0aGlzID09ICcnIHx8IHRoaXMuaXNJcFByZWZpeCg2LCB0cnVlKQpY'
    'ChhzdHJpbmcuaXB2Nl9wcmVmaXhfZW1wdHkSMHZhbHVlIGlzIGVtcHR5LCB3aGljaCBpcyBub3'
    'QgYSB2YWxpZCBJUHY2IHByZWZpeBoKdGhpcyAhPSAnJ0gAUgppcHY2UHJlZml4EpICCg1ob3N0'
    'X2FuZF9wb3J0GCAgASgIQusBwkjnAQqBAQoUc3RyaW5nLmhvc3RfYW5kX3BvcnQSQXZhbHVlIG'
    '11c3QgYmUgYSB2YWxpZCBob3N0IChob3N0bmFtZSBvciBJUCBhZGRyZXNzKSBhbmQgcG9ydCBw'
    'YWlyGiZ0aGlzID09ICcnIHx8IHRoaXMuaXNIb3N0QW5kUG9ydCh0cnVlKQphChpzdHJpbmcuaG'
    '9zdF9hbmRfcG9ydF9lbXB0eRI3dmFsdWUgaXMgZW1wdHksIHdoaWNoIGlzIG5vdCBhIHZhbGlk'
    'IGhvc3QgYW5kIHBvcnQgcGFpchoKdGhpcyAhPSAnJ0gAUgtob3N0QW5kUG9ydBK4BQoQd2VsbF'
    '9rbm93bl9yZWdleBgYIAEoDjIYLmJ1Zi52YWxpZGF0ZS5Lbm93blJlZ2V4QvEEwkjtBArwAQoj'
    'c3RyaW5nLndlbGxfa25vd25fcmVnZXguaGVhZGVyX25hbWUSJnZhbHVlIG11c3QgYmUgYSB2YW'
    'xpZCBIVFRQIGhlYWRlciBuYW1lGqABcnVsZXMud2VsbF9rbm93bl9yZWdleCAhPSAxIHx8IHRo'
    'aXMgPT0gJycgfHwgdGhpcy5tYXRjaGVzKCFoYXMocnVsZXMuc3RyaWN0KSB8fCBydWxlcy5zdH'
    'JpY3QgPydeOj9bMC05YS16QS1aISMkJSZcJyorLS5eX3x+XHg2MF0rJCcgOideW15cdTAwMDBc'
    'dTAwMEFcdTAwMERdKyQnKQqNAQopc3RyaW5nLndlbGxfa25vd25fcmVnZXguaGVhZGVyX25hbW'
    'VfZW1wdHkSNXZhbHVlIGlzIGVtcHR5LCB3aGljaCBpcyBub3QgYSB2YWxpZCBIVFRQIGhlYWRl'
    'ciBuYW1lGilydWxlcy53ZWxsX2tub3duX3JlZ2V4ICE9IDEgfHwgdGhpcyAhPSAnJwrnAQokc3'
    'RyaW5nLndlbGxfa25vd25fcmVnZXguaGVhZGVyX3ZhbHVlEid2YWx1ZSBtdXN0IGJlIGEgdmFs'
    'aWQgSFRUUCBoZWFkZXIgdmFsdWUalQFydWxlcy53ZWxsX2tub3duX3JlZ2V4ICE9IDIgfHwgdG'
    'hpcy5tYXRjaGVzKCFoYXMocnVsZXMuc3RyaWN0KSB8fCBydWxlcy5zdHJpY3QgPydeW15cdTAw'
    'MDAtXHUwMDA4XHUwMDBBLVx1MDAxRlx1MDA3Rl0qJCcgOideW15cdTAwMDBcdTAwMEFcdTAwME'
    'RdKiQnKUgAUg53ZWxsS25vd25SZWdleBIbCgZzdHJpY3QYGSABKAhIDVIGc3RyaWN0iAEBQgwK'
    'CndlbGxfa25vd25CCAoGX2NvbnN0QgYKBF9sZW5CCgoIX21pbl9sZW5CCgoIX21heF9sZW5CDA'
    'oKX2xlbl9ieXRlc0IMCgpfbWluX2J5dGVzQgwKCl9tYXhfYnl0ZXNCCgoIX3BhdHRlcm5CCQoH'
    'X3ByZWZpeEIJCgdfc3VmZml4QgsKCV9jb250YWluc0IPCg1fbm90X2NvbnRhaW5zQgkKB19zdH'
    'JpY3Q=');

@$core.Deprecated('Use bytesRulesDescriptor instead')
const BytesRules$json = {
  '1': 'BytesRules',
  '2': [
    {'1': 'const', '3': 1, '4': 1, '5': 12, '8': {}, '9': 1, '10': 'const', '17': true},
    {'1': 'len', '3': 13, '4': 1, '5': 4, '8': {}, '9': 2, '10': 'len', '17': true},
    {'1': 'min_len', '3': 2, '4': 1, '5': 4, '8': {}, '9': 3, '10': 'minLen', '17': true},
    {'1': 'max_len', '3': 3, '4': 1, '5': 4, '8': {}, '9': 4, '10': 'maxLen', '17': true},
    {'1': 'pattern', '3': 4, '4': 1, '5': 9, '8': {}, '9': 5, '10': 'pattern', '17': true},
    {'1': 'prefix', '3': 5, '4': 1, '5': 12, '8': {}, '9': 6, '10': 'prefix', '17': true},
    {'1': 'suffix', '3': 6, '4': 1, '5': 12, '8': {}, '9': 7, '10': 'suffix', '17': true},
    {'1': 'contains', '3': 7, '4': 1, '5': 12, '8': {}, '9': 8, '10': 'contains', '17': true},
    {'1': 'in', '3': 8, '4': 3, '5': 12, '8': {}, '10': 'in'},
    {'1': 'not_in', '3': 9, '4': 3, '5': 12, '8': {}, '10': 'notIn'},
    {'1': 'ip', '3': 10, '4': 1, '5': 8, '8': {}, '9': 0, '10': 'ip'},
    {'1': 'ipv4', '3': 11, '4': 1, '5': 8, '8': {}, '9': 0, '10': 'ipv4'},
    {'1': 'ipv6', '3': 12, '4': 1, '5': 8, '8': {}, '9': 0, '10': 'ipv6'},
  ],
  '8': [
    {'1': 'well_known'},
    {'1': '_const'},
    {'1': '_len'},
    {'1': '_min_len'},
    {'1': '_max_len'},
    {'1': '_pattern'},
    {'1': '_prefix'},
    {'1': '_suffix'},
    {'1': '_contains'},
  ],
};

/// Descriptor for `BytesRules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bytesRulesDescriptor = $convert.base64Decode(
    'CgpCeXRlc1J1bGVzEnIKBWNvbnN0GAEgASgMQlfCSFQKUgoLYnl0ZXMuY29uc3QaQ3RoaXMgIT'
    '0gcnVsZXMuY29uc3QgPyAndmFsdWUgbXVzdCBiZSAleCcuZm9ybWF0KFtydWxlcy5jb25zdF0p'
    'IDogJydIAVIFY29uc3SIAQESggEKA2xlbhgNIAEoBEJrwkhoCmYKCWJ5dGVzLmxlbhpZdWludC'
    'h0aGlzLnNpemUoKSkgIT0gcnVsZXMubGVuID8gJ3ZhbHVlIGxlbmd0aCBtdXN0IGJlICVzIGJ5'
    'dGVzJy5mb3JtYXQoW3J1bGVzLmxlbl0pIDogJydIAlIDbGVuiAEBEp0BCgdtaW5fbGVuGAIgAS'
    'gEQn/CSHwKegoNYnl0ZXMubWluX2xlbhppdWludCh0aGlzLnNpemUoKSkgPCBydWxlcy5taW5f'
    'bGVuID8gJ3ZhbHVlIGxlbmd0aCBtdXN0IGJlIGF0IGxlYXN0ICVzIGJ5dGVzJy5mb3JtYXQoW3'
    'J1bGVzLm1pbl9sZW5dKSA6ICcnSANSBm1pbkxlbogBARKVAQoHbWF4X2xlbhgDIAEoBEJ3wkh0'
    'CnIKDWJ5dGVzLm1heF9sZW4aYXVpbnQodGhpcy5zaXplKCkpID4gcnVsZXMubWF4X2xlbiA/IC'
    'd2YWx1ZSBtdXN0IGJlIGF0IG1vc3QgJXMgYnl0ZXMnLmZvcm1hdChbcnVsZXMubWF4X2xlbl0p'
    'IDogJydIBFIGbWF4TGVuiAEBEp4BCgdwYXR0ZXJuGAQgASgJQn/CSHwKegoNYnl0ZXMucGF0dG'
    'VybhppIXN0cmluZyh0aGlzKS5tYXRjaGVzKHJ1bGVzLnBhdHRlcm4pID8gJ3ZhbHVlIG11c3Qg'
    'bWF0Y2ggcmVnZXggcGF0dGVybiBgJXNgJy5mb3JtYXQoW3J1bGVzLnBhdHRlcm5dKSA6ICcnSA'
    'VSB3BhdHRlcm6IAQESjgEKBnByZWZpeBgFIAEoDEJxwkhuCmwKDGJ5dGVzLnByZWZpeBpcIXRo'
    'aXMuc3RhcnRzV2l0aChydWxlcy5wcmVmaXgpID8gJ3ZhbHVlIGRvZXMgbm90IGhhdmUgcHJlZm'
    'l4ICV4Jy5mb3JtYXQoW3J1bGVzLnByZWZpeF0pIDogJydIBlIGcHJlZml4iAEBEowBCgZzdWZm'
    'aXgYBiABKAxCb8JIbApqCgxieXRlcy5zdWZmaXgaWiF0aGlzLmVuZHNXaXRoKHJ1bGVzLnN1Zm'
    'ZpeCkgPyAndmFsdWUgZG9lcyBub3QgaGF2ZSBzdWZmaXggJXgnLmZvcm1hdChbcnVsZXMuc3Vm'
    'Zml4XSkgOiAnJ0gHUgZzdWZmaXiIAQESkgEKCGNvbnRhaW5zGAcgASgMQnHCSG4KbAoOYnl0ZX'
    'MuY29udGFpbnMaWiF0aGlzLmNvbnRhaW5zKHJ1bGVzLmNvbnRhaW5zKSA/ICd2YWx1ZSBkb2Vz'
    'IG5vdCBjb250YWluICV4Jy5mb3JtYXQoW3J1bGVzLmNvbnRhaW5zXSkgOiAnJ0gIUghjb250YW'
    'luc4gBARKbAQoCaW4YCCADKAxCigHCSIYBCoMBCghieXRlcy5pbhp3ZHluKHJ1bGVzKVsnaW4n'
    'XS5zaXplKCkgPiAwICYmICEodGhpcyBpbiBkeW4ocnVsZXMpWydpbiddKSA/ICd2YWx1ZSBtdX'
    'N0IGJlIGluIGxpc3QgJXMnLmZvcm1hdChbZHluKHJ1bGVzKVsnaW4nXV0pIDogJydSAmluEn0K'
    'Bm5vdF9pbhgJIAMoDEJmwkhjCmEKDGJ5dGVzLm5vdF9pbhpRdGhpcyBpbiBydWxlcy5ub3RfaW'
    '4gPyAndmFsdWUgbXVzdCBub3QgYmUgaW4gbGlzdCAlcycuZm9ybWF0KFtydWxlcy5ub3RfaW5d'
    'KSA6ICcnUgVub3RJbhLVAQoCaXAYCiABKAhCwgHCSL4BCmcKCGJ5dGVzLmlwEiB2YWx1ZSBtdX'
    'N0IGJlIGEgdmFsaWQgSVAgYWRkcmVzcxo5dGhpcy5zaXplKCkgPT0gMCB8fCB0aGlzLnNpemUo'
    'KSA9PSA0IHx8IHRoaXMuc2l6ZSgpID09IDE2ClMKDmJ5dGVzLmlwX2VtcHR5Ei92YWx1ZSBpcy'
    'BlbXB0eSwgd2hpY2ggaXMgbm90IGEgdmFsaWQgSVAgYWRkcmVzcxoQdGhpcy5zaXplKCkgIT0g'
    'MEgAUgJpcBLMAQoEaXB2NBgLIAEoCEK1AcJIsQEKVgoKYnl0ZXMuaXB2NBIidmFsdWUgbXVzdC'
    'BiZSBhIHZhbGlkIElQdjQgYWRkcmVzcxokdGhpcy5zaXplKCkgPT0gMCB8fCB0aGlzLnNpemUo'
    'KSA9PSA0ClcKEGJ5dGVzLmlwdjRfZW1wdHkSMXZhbHVlIGlzIGVtcHR5LCB3aGljaCBpcyBub3'
    'QgYSB2YWxpZCBJUHY0IGFkZHJlc3MaEHRoaXMuc2l6ZSgpICE9IDBIAFIEaXB2NBLNAQoEaXB2'
    'NhgMIAEoCEK2AcJIsgEKVwoKYnl0ZXMuaXB2NhIidmFsdWUgbXVzdCBiZSBhIHZhbGlkIElQdj'
    'YgYWRkcmVzcxoldGhpcy5zaXplKCkgPT0gMCB8fCB0aGlzLnNpemUoKSA9PSAxNgpXChBieXRl'
    'cy5pcHY2X2VtcHR5EjF2YWx1ZSBpcyBlbXB0eSwgd2hpY2ggaXMgbm90IGEgdmFsaWQgSVB2Ni'
    'BhZGRyZXNzGhB0aGlzLnNpemUoKSAhPSAwSABSBGlwdjZCDAoKd2VsbF9rbm93bkIICgZfY29u'
    'c3RCBgoEX2xlbkIKCghfbWluX2xlbkIKCghfbWF4X2xlbkIKCghfcGF0dGVybkIJCgdfcHJlZm'
    'l4QgkKB19zdWZmaXhCCwoJX2NvbnRhaW5z');

@$core.Deprecated('Use enumRulesDescriptor instead')
const EnumRules$json = {
  '1': 'EnumRules',
  '2': [
    {'1': 'const', '3': 1, '4': 1, '5': 5, '8': {}, '9': 0, '10': 'const', '17': true},
    {'1': 'defined_only', '3': 2, '4': 1, '5': 8, '9': 1, '10': 'definedOnly', '17': true},
    {'1': 'in', '3': 3, '4': 3, '5': 5, '8': {}, '10': 'in'},
    {'1': 'not_in', '3': 4, '4': 3, '5': 5, '8': {}, '10': 'notIn'},
  ],
  '8': [
    {'1': '_const'},
    {'1': '_defined_only'},
  ],
};

/// Descriptor for `EnumRules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List enumRulesDescriptor = $convert.base64Decode(
    'CglFbnVtUnVsZXMSdAoFY29uc3QYASABKAVCWcJIVgpUCgplbnVtLmNvbnN0GkZ0aGlzICE9IH'
    'J1bGVzLmNvbnN0ID8gJ3ZhbHVlIG11c3QgZXF1YWwgJXMnLmZvcm1hdChbcnVsZXMuY29uc3Rd'
    'KSA6ICcnSABSBWNvbnN0iAEBEiYKDGRlZmluZWRfb25seRgCIAEoCEgBUgtkZWZpbmVkT25seY'
    'gBARJ4CgJpbhgDIAMoBUJowkhlCmMKB2VudW0uaW4aWCEodGhpcyBpbiBkeW4ocnVsZXMpWydp'
    'biddKSA/ICd2YWx1ZSBtdXN0IGJlIGluIGxpc3QgJXMnLmZvcm1hdChbZHluKHJ1bGVzKVsnaW'
    '4nXV0pIDogJydSAmluEnwKBm5vdF9pbhgEIAMoBUJlwkhiCmAKC2VudW0ubm90X2luGlF0aGlz'
    'IGluIHJ1bGVzLm5vdF9pbiA/ICd2YWx1ZSBtdXN0IG5vdCBiZSBpbiBsaXN0ICVzJy5mb3JtYX'
    'QoW3J1bGVzLm5vdF9pbl0pIDogJydSBW5vdEluQggKBl9jb25zdEIPCg1fZGVmaW5lZF9vbmx5');

@$core.Deprecated('Use repeatedRulesDescriptor instead')
const RepeatedRules$json = {
  '1': 'RepeatedRules',
  '2': [
    {'1': 'min_items', '3': 1, '4': 1, '5': 4, '8': {}, '9': 0, '10': 'minItems', '17': true},
    {'1': 'max_items', '3': 2, '4': 1, '5': 4, '8': {}, '9': 1, '10': 'maxItems', '17': true},
    {'1': 'unique', '3': 3, '4': 1, '5': 8, '8': {}, '9': 2, '10': 'unique', '17': true},
    {'1': 'items', '3': 4, '4': 1, '5': 11, '6': '.buf.validate.FieldConstraints', '9': 3, '10': 'items', '17': true},
  ],
  '8': [
    {'1': '_min_items'},
    {'1': '_max_items'},
    {'1': '_unique'},
    {'1': '_items'},
  ],
};

/// Descriptor for `RepeatedRules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List repeatedRulesDescriptor = $convert.base64Decode(
    'Cg1SZXBlYXRlZFJ1bGVzEq0BCgltaW5faXRlbXMYASABKARCigHCSIYBCoMBChJyZXBlYXRlZC'
    '5taW5faXRlbXMabXVpbnQodGhpcy5zaXplKCkpIDwgcnVsZXMubWluX2l0ZW1zID8gJ3ZhbHVl'
    'IG11c3QgY29udGFpbiBhdCBsZWFzdCAlZCBpdGVtKHMpJy5mb3JtYXQoW3J1bGVzLm1pbl9pdG'
    'Vtc10pIDogJydIAFIIbWluSXRlbXOIAQESsQEKCW1heF9pdGVtcxgCIAEoBEKOAcJIigEKhwEK'
    'EnJlcGVhdGVkLm1heF9pdGVtcxpxdWludCh0aGlzLnNpemUoKSkgPiBydWxlcy5tYXhfaXRlbX'
    'MgPyAndmFsdWUgbXVzdCBjb250YWluIG5vIG1vcmUgdGhhbiAlcyBpdGVtKHMpJy5mb3JtYXQo'
    'W3J1bGVzLm1heF9pdGVtc10pIDogJydIAVIIbWF4SXRlbXOIAQESbAoGdW5pcXVlGAMgASgIQk'
    '/CSEwKSgoPcmVwZWF0ZWQudW5pcXVlEihyZXBlYXRlZCB2YWx1ZSBtdXN0IGNvbnRhaW4gdW5p'
    'cXVlIGl0ZW1zGg10aGlzLnVuaXF1ZSgpSAJSBnVuaXF1ZYgBARI5CgVpdGVtcxgEIAEoCzIeLm'
    'J1Zi52YWxpZGF0ZS5GaWVsZENvbnN0cmFpbnRzSANSBWl0ZW1ziAEBQgwKCl9taW5faXRlbXNC'
    'DAoKX21heF9pdGVtc0IJCgdfdW5pcXVlQggKBl9pdGVtcw==');

@$core.Deprecated('Use mapRulesDescriptor instead')
const MapRules$json = {
  '1': 'MapRules',
  '2': [
    {'1': 'min_pairs', '3': 1, '4': 1, '5': 4, '8': {}, '9': 0, '10': 'minPairs', '17': true},
    {'1': 'max_pairs', '3': 2, '4': 1, '5': 4, '8': {}, '9': 1, '10': 'maxPairs', '17': true},
    {'1': 'keys', '3': 4, '4': 1, '5': 11, '6': '.buf.validate.FieldConstraints', '9': 2, '10': 'keys', '17': true},
    {'1': 'values', '3': 5, '4': 1, '5': 11, '6': '.buf.validate.FieldConstraints', '9': 3, '10': 'values', '17': true},
  ],
  '8': [
    {'1': '_min_pairs'},
    {'1': '_max_pairs'},
    {'1': '_keys'},
    {'1': '_values'},
  ],
};

/// Descriptor for `MapRules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mapRulesDescriptor = $convert.base64Decode(
    'CghNYXBSdWxlcxKeAQoJbWluX3BhaXJzGAEgASgEQnzCSHkKdwoNbWFwLm1pbl9wYWlycxpmdW'
    'ludCh0aGlzLnNpemUoKSkgPCBydWxlcy5taW5fcGFpcnMgPyAnbWFwIG11c3QgYmUgYXQgbGVh'
    'c3QgJWQgZW50cmllcycuZm9ybWF0KFtydWxlcy5taW5fcGFpcnNdKSA6ICcnSABSCG1pblBhaX'
    'JziAEBEp0BCgltYXhfcGFpcnMYAiABKARCe8JIeAp2Cg1tYXAubWF4X3BhaXJzGmV1aW50KHRo'
    'aXMuc2l6ZSgpKSA+IHJ1bGVzLm1heF9wYWlycyA/ICdtYXAgbXVzdCBiZSBhdCBtb3N0ICVkIG'
    'VudHJpZXMnLmZvcm1hdChbcnVsZXMubWF4X3BhaXJzXSkgOiAnJ0gBUghtYXhQYWlyc4gBARI3'
    'CgRrZXlzGAQgASgLMh4uYnVmLnZhbGlkYXRlLkZpZWxkQ29uc3RyYWludHNIAlIEa2V5c4gBAR'
    'I7CgZ2YWx1ZXMYBSABKAsyHi5idWYudmFsaWRhdGUuRmllbGRDb25zdHJhaW50c0gDUgZ2YWx1'
    'ZXOIAQFCDAoKX21pbl9wYWlyc0IMCgpfbWF4X3BhaXJzQgcKBV9rZXlzQgkKB192YWx1ZXM=');

@$core.Deprecated('Use anyRulesDescriptor instead')
const AnyRules$json = {
  '1': 'AnyRules',
  '2': [
    {'1': 'in', '3': 2, '4': 3, '5': 9, '10': 'in'},
    {'1': 'not_in', '3': 3, '4': 3, '5': 9, '10': 'notIn'},
  ],
};

/// Descriptor for `AnyRules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List anyRulesDescriptor = $convert.base64Decode(
    'CghBbnlSdWxlcxIOCgJpbhgCIAMoCVICaW4SFQoGbm90X2luGAMgAygJUgVub3RJbg==');

@$core.Deprecated('Use durationRulesDescriptor instead')
const DurationRules$json = {
  '1': 'DurationRules',
  '2': [
    {'1': 'const', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Duration', '8': {}, '9': 2, '10': 'const', '17': true},
    {'1': 'lt', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Duration', '8': {}, '9': 0, '10': 'lt'},
    {'1': 'lte', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Duration', '8': {}, '9': 0, '10': 'lte'},
    {'1': 'gt', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Duration', '8': {}, '9': 1, '10': 'gt'},
    {'1': 'gte', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Duration', '8': {}, '9': 1, '10': 'gte'},
    {'1': 'in', '3': 7, '4': 3, '5': 11, '6': '.google.protobuf.Duration', '8': {}, '10': 'in'},
    {'1': 'not_in', '3': 8, '4': 3, '5': 11, '6': '.google.protobuf.Duration', '8': {}, '10': 'notIn'},
  ],
  '8': [
    {'1': 'less_than'},
    {'1': 'greater_than'},
    {'1': '_const'},
  ],
};

/// Descriptor for `DurationRules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List durationRulesDescriptor = $convert.base64Decode(
    'Cg1EdXJhdGlvblJ1bGVzEpMBCgVjb25zdBgCIAEoCzIZLmdvb2dsZS5wcm90b2J1Zi5EdXJhdG'
    'lvbkJdwkhaClgKDmR1cmF0aW9uLmNvbnN0GkZ0aGlzICE9IHJ1bGVzLmNvbnN0ID8gJ3ZhbHVl'
    'IG11c3QgZXF1YWwgJXMnLmZvcm1hdChbcnVsZXMuY29uc3RdKSA6ICcnSAJSBWNvbnN0iAEBEq'
    'wBCgJsdBgDIAEoCzIZLmdvb2dsZS5wcm90b2J1Zi5EdXJhdGlvbkJ/wkh8CnoKC2R1cmF0aW9u'
    'Lmx0GmshaGFzKHJ1bGVzLmd0ZSkgJiYgIWhhcyhydWxlcy5ndCkgJiYgdGhpcyA+PSBydWxlcy'
    '5sdD8gJ3ZhbHVlIG11c3QgYmUgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmx0XSkgOiAn'
    'J0gAUgJsdBK/AQoDbHRlGAQgASgLMhkuZ29vZ2xlLnByb3RvYnVmLkR1cmF0aW9uQo8BwkiLAQ'
    'qIAQoMZHVyYXRpb24ubHRlGnghaGFzKHJ1bGVzLmd0ZSkgJiYgIWhhcyhydWxlcy5ndCkgJiYg'
    'dGhpcyA+IHJ1bGVzLmx0ZT8gJ3ZhbHVlIG11c3QgYmUgbGVzcyB0aGFuIG9yIGVxdWFsIHRvIC'
    'VzJy5mb3JtYXQoW3J1bGVzLmx0ZV0pIDogJydIAFIDbHRlEsUHCgJndBgFIAEoCzIZLmdvb2ds'
    'ZS5wcm90b2J1Zi5EdXJhdGlvbkKXB8JIkwcKfQoLZHVyYXRpb24uZ3QabiFoYXMocnVsZXMubH'
    'QpICYmICFoYXMocnVsZXMubHRlKSAmJiB0aGlzIDw9IHJ1bGVzLmd0PyAndmFsdWUgbXVzdCBi'
    'ZSBncmVhdGVyIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMuZ3RdKSA6ICcnCrYBCg5kdXJhdGlvbi'
    '5ndF9sdBqjAWhhcyhydWxlcy5sdCkgJiYgcnVsZXMubHQgPj0gcnVsZXMuZ3QgJiYgKHRoaXMg'
    'Pj0gcnVsZXMubHQgfHwgdGhpcyA8PSBydWxlcy5ndCk/ICd2YWx1ZSBtdXN0IGJlIGdyZWF0ZX'
    'IgdGhhbiAlcyBhbmQgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0LCBydWxlcy5sdF0p'
    'IDogJycKvgEKGGR1cmF0aW9uLmd0X2x0X2V4Y2x1c2l2ZRqhAWhhcyhydWxlcy5sdCkgJiYgcn'
    'VsZXMubHQgPCBydWxlcy5ndCAmJiAocnVsZXMubHQgPD0gdGhpcyAmJiB0aGlzIDw9IHJ1bGVz'
    'Lmd0KT8gJ3ZhbHVlIG11c3QgYmUgZ3JlYXRlciB0aGFuICVzIG9yIGxlc3MgdGhhbiAlcycuZm'
    '9ybWF0KFtydWxlcy5ndCwgcnVsZXMubHRdKSA6ICcnCsYBCg9kdXJhdGlvbi5ndF9sdGUasgFo'
    'YXMocnVsZXMubHRlKSAmJiBydWxlcy5sdGUgPj0gcnVsZXMuZ3QgJiYgKHRoaXMgPiBydWxlcy'
    '5sdGUgfHwgdGhpcyA8PSBydWxlcy5ndCk/ICd2YWx1ZSBtdXN0IGJlIGdyZWF0ZXIgdGhhbiAl'
    'cyBhbmQgbGVzcyB0aGFuIG9yIGVxdWFsIHRvICVzJy5mb3JtYXQoW3J1bGVzLmd0LCBydWxlcy'
    '5sdGVdKSA6ICcnCs4BChlkdXJhdGlvbi5ndF9sdGVfZXhjbHVzaXZlGrABaGFzKHJ1bGVzLmx0'
    'ZSkgJiYgcnVsZXMubHRlIDwgcnVsZXMuZ3QgJiYgKHJ1bGVzLmx0ZSA8IHRoaXMgJiYgdGhpcy'
    'A8PSBydWxlcy5ndCk/ICd2YWx1ZSBtdXN0IGJlIGdyZWF0ZXIgdGhhbiAlcyBvciBsZXNzIHRo'
    'YW4gb3IgZXF1YWwgdG8gJXMnLmZvcm1hdChbcnVsZXMuZ3QsIHJ1bGVzLmx0ZV0pIDogJydIAV'
    'ICZ3QSkggKA2d0ZRgGIAEoCzIZLmdvb2dsZS5wcm90b2J1Zi5EdXJhdGlvbkLiB8JI3gcKiwEK'
    'DGR1cmF0aW9uLmd0ZRp7IWhhcyhydWxlcy5sdCkgJiYgIWhhcyhydWxlcy5sdGUpICYmIHRoaX'
    'MgPCBydWxlcy5ndGU/ICd2YWx1ZSBtdXN0IGJlIGdyZWF0ZXIgdGhhbiBvciBlcXVhbCB0byAl'
    'cycuZm9ybWF0KFtydWxlcy5ndGVdKSA6ICcnCsUBCg9kdXJhdGlvbi5ndGVfbHQasQFoYXMocn'
    'VsZXMubHQpICYmIHJ1bGVzLmx0ID49IHJ1bGVzLmd0ZSAmJiAodGhpcyA+PSBydWxlcy5sdCB8'
    'fCB0aGlzIDwgcnVsZXMuZ3RlKT8gJ3ZhbHVlIG11c3QgYmUgZ3JlYXRlciB0aGFuIG9yIGVxdW'
    'FsIHRvICVzIGFuZCBsZXNzIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMuZ3RlLCBydWxlcy5sdF0p'
    'IDogJycKzQEKGWR1cmF0aW9uLmd0ZV9sdF9leGNsdXNpdmUarwFoYXMocnVsZXMubHQpICYmIH'
    'J1bGVzLmx0IDwgcnVsZXMuZ3RlICYmIChydWxlcy5sdCA8PSB0aGlzICYmIHRoaXMgPCBydWxl'
    'cy5ndGUpPyAndmFsdWUgbXVzdCBiZSBncmVhdGVyIHRoYW4gb3IgZXF1YWwgdG8gJXMgb3IgbG'
    'VzcyB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0ZSwgcnVsZXMubHRdKSA6ICcnCtUBChBkdXJh'
    'dGlvbi5ndGVfbHRlGsABaGFzKHJ1bGVzLmx0ZSkgJiYgcnVsZXMubHRlID49IHJ1bGVzLmd0ZS'
    'AmJiAodGhpcyA+IHJ1bGVzLmx0ZSB8fCB0aGlzIDwgcnVsZXMuZ3RlKT8gJ3ZhbHVlIG11c3Qg'
    'YmUgZ3JlYXRlciB0aGFuIG9yIGVxdWFsIHRvICVzIGFuZCBsZXNzIHRoYW4gb3IgZXF1YWwgdG'
    '8gJXMnLmZvcm1hdChbcnVsZXMuZ3RlLCBydWxlcy5sdGVdKSA6ICcnCt0BChpkdXJhdGlvbi5n'
    'dGVfbHRlX2V4Y2x1c2l2ZRq+AWhhcyhydWxlcy5sdGUpICYmIHJ1bGVzLmx0ZSA8IHJ1bGVzLm'
    'd0ZSAmJiAocnVsZXMubHRlIDwgdGhpcyAmJiB0aGlzIDwgcnVsZXMuZ3RlKT8gJ3ZhbHVlIG11'
    'c3QgYmUgZ3JlYXRlciB0aGFuIG9yIGVxdWFsIHRvICVzIG9yIGxlc3MgdGhhbiBvciBlcXVhbC'
    'B0byAlcycuZm9ybWF0KFtydWxlcy5ndGUsIHJ1bGVzLmx0ZV0pIDogJydIAVIDZ3RlEpcBCgJp'
    'bhgHIAMoCzIZLmdvb2dsZS5wcm90b2J1Zi5EdXJhdGlvbkJswkhpCmcKC2R1cmF0aW9uLmluGl'
    'ghKHRoaXMgaW4gZHluKHJ1bGVzKVsnaW4nXSkgPyAndmFsdWUgbXVzdCBiZSBpbiBsaXN0ICVz'
    'Jy5mb3JtYXQoW2R5bihydWxlcylbJ2luJ11dKSA6ICcnUgJpbhKbAQoGbm90X2luGAggAygLMh'
    'kuZ29vZ2xlLnByb3RvYnVmLkR1cmF0aW9uQmnCSGYKZAoPZHVyYXRpb24ubm90X2luGlF0aGlz'
    'IGluIHJ1bGVzLm5vdF9pbiA/ICd2YWx1ZSBtdXN0IG5vdCBiZSBpbiBsaXN0ICVzJy5mb3JtYX'
    'QoW3J1bGVzLm5vdF9pbl0pIDogJydSBW5vdEluQgsKCWxlc3NfdGhhbkIOCgxncmVhdGVyX3Ro'
    'YW5CCAoGX2NvbnN0');

@$core.Deprecated('Use timestampRulesDescriptor instead')
const TimestampRules$json = {
  '1': 'TimestampRules',
  '2': [
    {'1': 'const', '3': 2, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': {}, '9': 2, '10': 'const', '17': true},
    {'1': 'lt', '3': 3, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': {}, '9': 0, '10': 'lt'},
    {'1': 'lte', '3': 4, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': {}, '9': 0, '10': 'lte'},
    {'1': 'lt_now', '3': 7, '4': 1, '5': 8, '8': {}, '9': 0, '10': 'ltNow'},
    {'1': 'gt', '3': 5, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': {}, '9': 1, '10': 'gt'},
    {'1': 'gte', '3': 6, '4': 1, '5': 11, '6': '.google.protobuf.Timestamp', '8': {}, '9': 1, '10': 'gte'},
    {'1': 'gt_now', '3': 8, '4': 1, '5': 8, '8': {}, '9': 1, '10': 'gtNow'},
    {'1': 'within', '3': 9, '4': 1, '5': 11, '6': '.google.protobuf.Duration', '8': {}, '9': 3, '10': 'within', '17': true},
  ],
  '8': [
    {'1': 'less_than'},
    {'1': 'greater_than'},
    {'1': '_const'},
    {'1': '_within'},
  ],
};

/// Descriptor for `TimestampRules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List timestampRulesDescriptor = $convert.base64Decode(
    'Cg5UaW1lc3RhbXBSdWxlcxKVAQoFY29uc3QYAiABKAsyGi5nb29nbGUucHJvdG9idWYuVGltZX'
    'N0YW1wQl7CSFsKWQoPdGltZXN0YW1wLmNvbnN0GkZ0aGlzICE9IHJ1bGVzLmNvbnN0ID8gJ3Zh'
    'bHVlIG11c3QgZXF1YWwgJXMnLmZvcm1hdChbcnVsZXMuY29uc3RdKSA6ICcnSAJSBWNvbnN0iA'
    'EBEq8BCgJsdBgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBCgAHCSH0KewoMdGlt'
    'ZXN0YW1wLmx0GmshaGFzKHJ1bGVzLmd0ZSkgJiYgIWhhcyhydWxlcy5ndCkgJiYgdGhpcyA+PS'
    'BydWxlcy5sdD8gJ3ZhbHVlIG11c3QgYmUgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmx0'
    'XSkgOiAnJ0gAUgJsdBLBAQoDbHRlGAQgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcE'
    'KQAcJIjAEKiQEKDXRpbWVzdGFtcC5sdGUaeCFoYXMocnVsZXMuZ3RlKSAmJiAhaGFzKHJ1bGVz'
    'Lmd0KSAmJiB0aGlzID4gcnVsZXMubHRlPyAndmFsdWUgbXVzdCBiZSBsZXNzIHRoYW4gb3IgZX'
    'F1YWwgdG8gJXMnLmZvcm1hdChbcnVsZXMubHRlXSkgOiAnJ0gAUgNsdGUSYQoGbHRfbm93GAcg'
    'ASgIQkjCSEUKQwoQdGltZXN0YW1wLmx0X25vdxovdGhpcyA+IG5vdyA/ICd2YWx1ZSBtdXN0IG'
    'JlIGxlc3MgdGhhbiBub3cnIDogJydIAFIFbHROb3cSywcKAmd0GAUgASgLMhouZ29vZ2xlLnBy'
    'b3RvYnVmLlRpbWVzdGFtcEKcB8JImAcKfgoMdGltZXN0YW1wLmd0Gm4haGFzKHJ1bGVzLmx0KS'
    'AmJiAhaGFzKHJ1bGVzLmx0ZSkgJiYgdGhpcyA8PSBydWxlcy5ndD8gJ3ZhbHVlIG11c3QgYmUg'
    'Z3JlYXRlciB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0XSkgOiAnJwq3AQoPdGltZXN0YW1wLm'
    'd0X2x0GqMBaGFzKHJ1bGVzLmx0KSAmJiBydWxlcy5sdCA+PSBydWxlcy5ndCAmJiAodGhpcyA+'
    'PSBydWxlcy5sdCB8fCB0aGlzIDw9IHJ1bGVzLmd0KT8gJ3ZhbHVlIG11c3QgYmUgZ3JlYXRlci'
    'B0aGFuICVzIGFuZCBsZXNzIHRoYW4gJXMnLmZvcm1hdChbcnVsZXMuZ3QsIHJ1bGVzLmx0XSkg'
    'OiAnJwq/AQoZdGltZXN0YW1wLmd0X2x0X2V4Y2x1c2l2ZRqhAWhhcyhydWxlcy5sdCkgJiYgcn'
    'VsZXMubHQgPCBydWxlcy5ndCAmJiAocnVsZXMubHQgPD0gdGhpcyAmJiB0aGlzIDw9IHJ1bGVz'
    'Lmd0KT8gJ3ZhbHVlIG11c3QgYmUgZ3JlYXRlciB0aGFuICVzIG9yIGxlc3MgdGhhbiAlcycuZm'
    '9ybWF0KFtydWxlcy5ndCwgcnVsZXMubHRdKSA6ICcnCscBChB0aW1lc3RhbXAuZ3RfbHRlGrIB'
    'aGFzKHJ1bGVzLmx0ZSkgJiYgcnVsZXMubHRlID49IHJ1bGVzLmd0ICYmICh0aGlzID4gcnVsZX'
    'MubHRlIHx8IHRoaXMgPD0gcnVsZXMuZ3QpPyAndmFsdWUgbXVzdCBiZSBncmVhdGVyIHRoYW4g'
    'JXMgYW5kIGxlc3MgdGhhbiBvciBlcXVhbCB0byAlcycuZm9ybWF0KFtydWxlcy5ndCwgcnVsZX'
    'MubHRlXSkgOiAnJwrPAQoadGltZXN0YW1wLmd0X2x0ZV9leGNsdXNpdmUasAFoYXMocnVsZXMu'
    'bHRlKSAmJiBydWxlcy5sdGUgPCBydWxlcy5ndCAmJiAocnVsZXMubHRlIDwgdGhpcyAmJiB0aG'
    'lzIDw9IHJ1bGVzLmd0KT8gJ3ZhbHVlIG11c3QgYmUgZ3JlYXRlciB0aGFuICVzIG9yIGxlc3Mg'
    'dGhhbiBvciBlcXVhbCB0byAlcycuZm9ybWF0KFtydWxlcy5ndCwgcnVsZXMubHRlXSkgOiAnJ0'
    'gBUgJndBKYCAoDZ3RlGAYgASgLMhouZ29vZ2xlLnByb3RvYnVmLlRpbWVzdGFtcELnB8JI4wcK'
    'jAEKDXRpbWVzdGFtcC5ndGUaeyFoYXMocnVsZXMubHQpICYmICFoYXMocnVsZXMubHRlKSAmJi'
    'B0aGlzIDwgcnVsZXMuZ3RlPyAndmFsdWUgbXVzdCBiZSBncmVhdGVyIHRoYW4gb3IgZXF1YWwg'
    'dG8gJXMnLmZvcm1hdChbcnVsZXMuZ3RlXSkgOiAnJwrGAQoQdGltZXN0YW1wLmd0ZV9sdBqxAW'
    'hhcyhydWxlcy5sdCkgJiYgcnVsZXMubHQgPj0gcnVsZXMuZ3RlICYmICh0aGlzID49IHJ1bGVz'
    'Lmx0IHx8IHRoaXMgPCBydWxlcy5ndGUpPyAndmFsdWUgbXVzdCBiZSBncmVhdGVyIHRoYW4gb3'
    'IgZXF1YWwgdG8gJXMgYW5kIGxlc3MgdGhhbiAlcycuZm9ybWF0KFtydWxlcy5ndGUsIHJ1bGVz'
    'Lmx0XSkgOiAnJwrOAQoadGltZXN0YW1wLmd0ZV9sdF9leGNsdXNpdmUarwFoYXMocnVsZXMubH'
    'QpICYmIHJ1bGVzLmx0IDwgcnVsZXMuZ3RlICYmIChydWxlcy5sdCA8PSB0aGlzICYmIHRoaXMg'
    'PCBydWxlcy5ndGUpPyAndmFsdWUgbXVzdCBiZSBncmVhdGVyIHRoYW4gb3IgZXF1YWwgdG8gJX'
    'Mgb3IgbGVzcyB0aGFuICVzJy5mb3JtYXQoW3J1bGVzLmd0ZSwgcnVsZXMubHRdKSA6ICcnCtYB'
    'ChF0aW1lc3RhbXAuZ3RlX2x0ZRrAAWhhcyhydWxlcy5sdGUpICYmIHJ1bGVzLmx0ZSA+PSBydW'
    'xlcy5ndGUgJiYgKHRoaXMgPiBydWxlcy5sdGUgfHwgdGhpcyA8IHJ1bGVzLmd0ZSk/ICd2YWx1'
    'ZSBtdXN0IGJlIGdyZWF0ZXIgdGhhbiBvciBlcXVhbCB0byAlcyBhbmQgbGVzcyB0aGFuIG9yIG'
    'VxdWFsIHRvICVzJy5mb3JtYXQoW3J1bGVzLmd0ZSwgcnVsZXMubHRlXSkgOiAnJwreAQobdGlt'
    'ZXN0YW1wLmd0ZV9sdGVfZXhjbHVzaXZlGr4BaGFzKHJ1bGVzLmx0ZSkgJiYgcnVsZXMubHRlID'
    'wgcnVsZXMuZ3RlICYmIChydWxlcy5sdGUgPCB0aGlzICYmIHRoaXMgPCBydWxlcy5ndGUpPyAn'
    'dmFsdWUgbXVzdCBiZSBncmVhdGVyIHRoYW4gb3IgZXF1YWwgdG8gJXMgb3IgbGVzcyB0aGFuIG'
    '9yIGVxdWFsIHRvICVzJy5mb3JtYXQoW3J1bGVzLmd0ZSwgcnVsZXMubHRlXSkgOiAnJ0gBUgNn'
    'dGUSZAoGZ3Rfbm93GAggASgIQkvCSEgKRgoQdGltZXN0YW1wLmd0X25vdxoydGhpcyA8IG5vdy'
    'A/ICd2YWx1ZSBtdXN0IGJlIGdyZWF0ZXIgdGhhbiBub3cnIDogJydIAVIFZ3ROb3cSxQEKBndp'
    'dGhpbhgJIAEoCzIZLmdvb2dsZS5wcm90b2J1Zi5EdXJhdGlvbkKMAcJIiAEKhQEKEHRpbWVzdG'
    'FtcC53aXRoaW4acXRoaXMgPCBub3ctcnVsZXMud2l0aGluIHx8IHRoaXMgPiBub3crcnVsZXMu'
    'd2l0aGluID8gJ3ZhbHVlIG11c3QgYmUgd2l0aGluICVzIG9mIG5vdycuZm9ybWF0KFtydWxlcy'
    '53aXRoaW5dKSA6ICcnSANSBndpdGhpbogBAUILCglsZXNzX3RoYW5CDgoMZ3JlYXRlcl90aGFu'
    'QggKBl9jb25zdEIJCgdfd2l0aGlu');

