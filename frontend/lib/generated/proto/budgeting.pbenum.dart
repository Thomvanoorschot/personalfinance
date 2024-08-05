//
//  Generated code. Do not modify.
//  source: budgeting.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class GetInAndOutgoingTransactionAmountsPerPeriodRequest_Period extends $pb.ProtobufEnum {
  static const GetInAndOutgoingTransactionAmountsPerPeriodRequest_Period day = GetInAndOutgoingTransactionAmountsPerPeriodRequest_Period._(0, _omitEnumNames ? '' : 'day');
  static const GetInAndOutgoingTransactionAmountsPerPeriodRequest_Period week = GetInAndOutgoingTransactionAmountsPerPeriodRequest_Period._(1, _omitEnumNames ? '' : 'week');
  static const GetInAndOutgoingTransactionAmountsPerPeriodRequest_Period month = GetInAndOutgoingTransactionAmountsPerPeriodRequest_Period._(2, _omitEnumNames ? '' : 'month');

  static const $core.List<GetInAndOutgoingTransactionAmountsPerPeriodRequest_Period> values = <GetInAndOutgoingTransactionAmountsPerPeriodRequest_Period> [
    day,
    week,
    month,
  ];

  static final $core.Map<$core.int, GetInAndOutgoingTransactionAmountsPerPeriodRequest_Period> _byValue = $pb.ProtobufEnum.initByValue(values);
  static GetInAndOutgoingTransactionAmountsPerPeriodRequest_Period? valueOf($core.int value) => _byValue[value];

  const GetInAndOutgoingTransactionAmountsPerPeriodRequest_Period._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
