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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'budgeting.pbenum.dart';
import 'google/protobuf/timestamp.pb.dart' as $5;
import 'google/protobuf/wrappers.pb.dart' as $6;

export 'budgeting.pbenum.dart';

class GetTransactionsRequest extends $pb.GeneratedMessage {
  factory GetTransactionsRequest({
    $core.String? userId,
    $fixnum.Int64? limit,
    $fixnum.Int64? offset,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (limit != null) {
      $result.limit = limit;
    }
    if (offset != null) {
      $result.offset = offset;
    }
    return $result;
  }
  GetTransactionsRequest._() : super();
  factory GetTransactionsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTransactionsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTransactionsRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..aInt64(2, _omitFieldNames ? '' : 'limit')
    ..aInt64(3, _omitFieldNames ? '' : 'offset')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTransactionsRequest clone() => GetTransactionsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTransactionsRequest copyWith(void Function(GetTransactionsRequest) updates) => super.copyWith((message) => updates(message as GetTransactionsRequest)) as GetTransactionsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTransactionsRequest create() => GetTransactionsRequest._();
  GetTransactionsRequest createEmptyInstance() => create();
  static $pb.PbList<GetTransactionsRequest> createRepeated() => $pb.PbList<GetTransactionsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetTransactionsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTransactionsRequest>(create);
  static GetTransactionsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get limit => $_getI64(1);
  @$pb.TagNumber(2)
  set limit($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLimit() => $_has(1);
  @$pb.TagNumber(2)
  void clearLimit() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get offset => $_getI64(2);
  @$pb.TagNumber(3)
  set offset($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOffset() => $_has(2);
  @$pb.TagNumber(3)
  void clearOffset() => clearField(3);
}

class GetTransactionsResponse extends $pb.GeneratedMessage {
  factory GetTransactionsResponse({
    $core.Iterable<TransactionResponse>? transactions,
    $fixnum.Int64? totalCount,
  }) {
    final $result = create();
    if (transactions != null) {
      $result.transactions.addAll(transactions);
    }
    if (totalCount != null) {
      $result.totalCount = totalCount;
    }
    return $result;
  }
  GetTransactionsResponse._() : super();
  factory GetTransactionsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTransactionsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTransactionsResponse', createEmptyInstance: create)
    ..pc<TransactionResponse>(1, _omitFieldNames ? '' : 'transactions', $pb.PbFieldType.PM, subBuilder: TransactionResponse.create)
    ..aInt64(2, _omitFieldNames ? '' : 'totalCount', protoName: 'totalCount')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTransactionsResponse clone() => GetTransactionsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTransactionsResponse copyWith(void Function(GetTransactionsResponse) updates) => super.copyWith((message) => updates(message as GetTransactionsResponse)) as GetTransactionsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTransactionsResponse create() => GetTransactionsResponse._();
  GetTransactionsResponse createEmptyInstance() => create();
  static $pb.PbList<GetTransactionsResponse> createRepeated() => $pb.PbList<GetTransactionsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetTransactionsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTransactionsResponse>(create);
  static GetTransactionsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TransactionResponse> get transactions => $_getList(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get totalCount => $_getI64(1);
  @$pb.TagNumber(2)
  set totalCount($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTotalCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotalCount() => clearField(2);
}

class GetUncategorizedTransactionRequest extends $pb.GeneratedMessage {
  factory GetUncategorizedTransactionRequest({
    $core.String? userId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  GetUncategorizedTransactionRequest._() : super();
  factory GetUncategorizedTransactionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetUncategorizedTransactionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetUncategorizedTransactionRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetUncategorizedTransactionRequest clone() => GetUncategorizedTransactionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetUncategorizedTransactionRequest copyWith(void Function(GetUncategorizedTransactionRequest) updates) => super.copyWith((message) => updates(message as GetUncategorizedTransactionRequest)) as GetUncategorizedTransactionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetUncategorizedTransactionRequest create() => GetUncategorizedTransactionRequest._();
  GetUncategorizedTransactionRequest createEmptyInstance() => create();
  static $pb.PbList<GetUncategorizedTransactionRequest> createRepeated() => $pb.PbList<GetUncategorizedTransactionRequest>();
  @$core.pragma('dart2js:noInline')
  static GetUncategorizedTransactionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetUncategorizedTransactionRequest>(create);
  static GetUncategorizedTransactionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class GetUncategorizedTransactionResponse extends $pb.GeneratedMessage {
  factory GetUncategorizedTransactionResponse({
    $core.String? id,
    $5.Timestamp? date,
    $core.double? transactionAmount,
    $core.String? currency,
    $core.String? partyName,
    $core.String? partyIban,
    $core.String? description,
    $core.Iterable<MatchingUncategorizedTransactionResponse>? matchingTransactions,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (date != null) {
      $result.date = date;
    }
    if (transactionAmount != null) {
      $result.transactionAmount = transactionAmount;
    }
    if (currency != null) {
      $result.currency = currency;
    }
    if (partyName != null) {
      $result.partyName = partyName;
    }
    if (partyIban != null) {
      $result.partyIban = partyIban;
    }
    if (description != null) {
      $result.description = description;
    }
    if (matchingTransactions != null) {
      $result.matchingTransactions.addAll(matchingTransactions);
    }
    return $result;
  }
  GetUncategorizedTransactionResponse._() : super();
  factory GetUncategorizedTransactionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetUncategorizedTransactionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetUncategorizedTransactionResponse', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<$5.Timestamp>(2, _omitFieldNames ? '' : 'date', subBuilder: $5.Timestamp.create)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'transactionAmount', $pb.PbFieldType.OD, protoName: 'transactionAmount')
    ..aOS(4, _omitFieldNames ? '' : 'currency')
    ..aOS(5, _omitFieldNames ? '' : 'partyName', protoName: 'partyName')
    ..aOS(6, _omitFieldNames ? '' : 'partyIban', protoName: 'partyIban')
    ..aOS(7, _omitFieldNames ? '' : 'description')
    ..pc<MatchingUncategorizedTransactionResponse>(8, _omitFieldNames ? '' : 'matchingTransactions', $pb.PbFieldType.PM, protoName: 'matchingTransactions', subBuilder: MatchingUncategorizedTransactionResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetUncategorizedTransactionResponse clone() => GetUncategorizedTransactionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetUncategorizedTransactionResponse copyWith(void Function(GetUncategorizedTransactionResponse) updates) => super.copyWith((message) => updates(message as GetUncategorizedTransactionResponse)) as GetUncategorizedTransactionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetUncategorizedTransactionResponse create() => GetUncategorizedTransactionResponse._();
  GetUncategorizedTransactionResponse createEmptyInstance() => create();
  static $pb.PbList<GetUncategorizedTransactionResponse> createRepeated() => $pb.PbList<GetUncategorizedTransactionResponse>();
  @$core.pragma('dart2js:noInline')
  static GetUncategorizedTransactionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetUncategorizedTransactionResponse>(create);
  static GetUncategorizedTransactionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $5.Timestamp get date => $_getN(1);
  @$pb.TagNumber(2)
  set date($5.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDate() => $_has(1);
  @$pb.TagNumber(2)
  void clearDate() => clearField(2);
  @$pb.TagNumber(2)
  $5.Timestamp ensureDate() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.double get transactionAmount => $_getN(2);
  @$pb.TagNumber(3)
  set transactionAmount($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTransactionAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearTransactionAmount() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get currency => $_getSZ(3);
  @$pb.TagNumber(4)
  set currency($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCurrency() => $_has(3);
  @$pb.TagNumber(4)
  void clearCurrency() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get partyName => $_getSZ(4);
  @$pb.TagNumber(5)
  set partyName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPartyName() => $_has(4);
  @$pb.TagNumber(5)
  void clearPartyName() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get partyIban => $_getSZ(5);
  @$pb.TagNumber(6)
  set partyIban($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPartyIban() => $_has(5);
  @$pb.TagNumber(6)
  void clearPartyIban() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get description => $_getSZ(6);
  @$pb.TagNumber(7)
  set description($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDescription() => $_has(6);
  @$pb.TagNumber(7)
  void clearDescription() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<MatchingUncategorizedTransactionResponse> get matchingTransactions => $_getList(7);
}

class MatchingUncategorizedTransactionResponse extends $pb.GeneratedMessage {
  factory MatchingUncategorizedTransactionResponse({
    $core.String? id,
    $5.Timestamp? date,
    $core.double? transactionAmount,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (date != null) {
      $result.date = date;
    }
    if (transactionAmount != null) {
      $result.transactionAmount = transactionAmount;
    }
    return $result;
  }
  MatchingUncategorizedTransactionResponse._() : super();
  factory MatchingUncategorizedTransactionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MatchingUncategorizedTransactionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MatchingUncategorizedTransactionResponse', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOM<$5.Timestamp>(2, _omitFieldNames ? '' : 'date', subBuilder: $5.Timestamp.create)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'transactionAmount', $pb.PbFieldType.OD, protoName: 'transactionAmount')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MatchingUncategorizedTransactionResponse clone() => MatchingUncategorizedTransactionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MatchingUncategorizedTransactionResponse copyWith(void Function(MatchingUncategorizedTransactionResponse) updates) => super.copyWith((message) => updates(message as MatchingUncategorizedTransactionResponse)) as MatchingUncategorizedTransactionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MatchingUncategorizedTransactionResponse create() => MatchingUncategorizedTransactionResponse._();
  MatchingUncategorizedTransactionResponse createEmptyInstance() => create();
  static $pb.PbList<MatchingUncategorizedTransactionResponse> createRepeated() => $pb.PbList<MatchingUncategorizedTransactionResponse>();
  @$core.pragma('dart2js:noInline')
  static MatchingUncategorizedTransactionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MatchingUncategorizedTransactionResponse>(create);
  static MatchingUncategorizedTransactionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $5.Timestamp get date => $_getN(1);
  @$pb.TagNumber(2)
  set date($5.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDate() => $_has(1);
  @$pb.TagNumber(2)
  void clearDate() => clearField(2);
  @$pb.TagNumber(2)
  $5.Timestamp ensureDate() => $_ensure(1);

  @$pb.TagNumber(3)
  $core.double get transactionAmount => $_getN(2);
  @$pb.TagNumber(3)
  set transactionAmount($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTransactionAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearTransactionAmount() => clearField(3);
}

class CategorizeTransactionAndContinueRequest extends $pb.GeneratedMessage {
  factory CategorizeTransactionAndContinueRequest({
    $core.String? userId,
    $core.Iterable<$core.String>? transactionIds,
    $core.String? categoryId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (transactionIds != null) {
      $result.transactionIds.addAll(transactionIds);
    }
    if (categoryId != null) {
      $result.categoryId = categoryId;
    }
    return $result;
  }
  CategorizeTransactionAndContinueRequest._() : super();
  factory CategorizeTransactionAndContinueRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CategorizeTransactionAndContinueRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CategorizeTransactionAndContinueRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..pPS(2, _omitFieldNames ? '' : 'transactionIds', protoName: 'transactionIds')
    ..aOS(3, _omitFieldNames ? '' : 'categoryId', protoName: 'categoryId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CategorizeTransactionAndContinueRequest clone() => CategorizeTransactionAndContinueRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CategorizeTransactionAndContinueRequest copyWith(void Function(CategorizeTransactionAndContinueRequest) updates) => super.copyWith((message) => updates(message as CategorizeTransactionAndContinueRequest)) as CategorizeTransactionAndContinueRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CategorizeTransactionAndContinueRequest create() => CategorizeTransactionAndContinueRequest._();
  CategorizeTransactionAndContinueRequest createEmptyInstance() => create();
  static $pb.PbList<CategorizeTransactionAndContinueRequest> createRepeated() => $pb.PbList<CategorizeTransactionAndContinueRequest>();
  @$core.pragma('dart2js:noInline')
  static CategorizeTransactionAndContinueRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CategorizeTransactionAndContinueRequest>(create);
  static CategorizeTransactionAndContinueRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get transactionIds => $_getList(1);

  @$pb.TagNumber(3)
  $core.String get categoryId => $_getSZ(2);
  @$pb.TagNumber(3)
  set categoryId($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCategoryId() => $_has(2);
  @$pb.TagNumber(3)
  void clearCategoryId() => clearField(3);
}

class TransactionResponse extends $pb.GeneratedMessage {
  factory TransactionResponse({
    $core.String? id,
    $core.String? accountId,
    $5.Timestamp? date,
    $core.double? transactionAmount,
    $core.String? currency,
    $core.String? partyName,
    $core.String? partyIban,
    $core.String? description,
    $6.StringValue? transactionCategorySlug,
    $6.StringValue? transactionCategoryGroupSlug,
    $core.double? balanceAfterTransaction,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (accountId != null) {
      $result.accountId = accountId;
    }
    if (date != null) {
      $result.date = date;
    }
    if (transactionAmount != null) {
      $result.transactionAmount = transactionAmount;
    }
    if (currency != null) {
      $result.currency = currency;
    }
    if (partyName != null) {
      $result.partyName = partyName;
    }
    if (partyIban != null) {
      $result.partyIban = partyIban;
    }
    if (description != null) {
      $result.description = description;
    }
    if (transactionCategorySlug != null) {
      $result.transactionCategorySlug = transactionCategorySlug;
    }
    if (transactionCategoryGroupSlug != null) {
      $result.transactionCategoryGroupSlug = transactionCategoryGroupSlug;
    }
    if (balanceAfterTransaction != null) {
      $result.balanceAfterTransaction = balanceAfterTransaction;
    }
    return $result;
  }
  TransactionResponse._() : super();
  factory TransactionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransactionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TransactionResponse', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'accountId', protoName: 'accountId')
    ..aOM<$5.Timestamp>(3, _omitFieldNames ? '' : 'date', subBuilder: $5.Timestamp.create)
    ..a<$core.double>(4, _omitFieldNames ? '' : 'transactionAmount', $pb.PbFieldType.OD, protoName: 'transactionAmount')
    ..aOS(5, _omitFieldNames ? '' : 'currency')
    ..aOS(6, _omitFieldNames ? '' : 'partyName', protoName: 'partyName')
    ..aOS(7, _omitFieldNames ? '' : 'partyIban', protoName: 'partyIban')
    ..aOS(8, _omitFieldNames ? '' : 'description')
    ..aOM<$6.StringValue>(9, _omitFieldNames ? '' : 'transactionCategorySlug', protoName: 'transactionCategorySlug', subBuilder: $6.StringValue.create)
    ..aOM<$6.StringValue>(10, _omitFieldNames ? '' : 'transactionCategoryGroupSlug', protoName: 'transactionCategoryGroupSlug', subBuilder: $6.StringValue.create)
    ..a<$core.double>(11, _omitFieldNames ? '' : 'balanceAfterTransaction', $pb.PbFieldType.OD, protoName: 'balanceAfterTransaction')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransactionResponse clone() => TransactionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransactionResponse copyWith(void Function(TransactionResponse) updates) => super.copyWith((message) => updates(message as TransactionResponse)) as TransactionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransactionResponse create() => TransactionResponse._();
  TransactionResponse createEmptyInstance() => create();
  static $pb.PbList<TransactionResponse> createRepeated() => $pb.PbList<TransactionResponse>();
  @$core.pragma('dart2js:noInline')
  static TransactionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransactionResponse>(create);
  static TransactionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get accountId => $_getSZ(1);
  @$pb.TagNumber(2)
  set accountId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAccountId() => $_has(1);
  @$pb.TagNumber(2)
  void clearAccountId() => clearField(2);

  @$pb.TagNumber(3)
  $5.Timestamp get date => $_getN(2);
  @$pb.TagNumber(3)
  set date($5.Timestamp v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDate() => $_has(2);
  @$pb.TagNumber(3)
  void clearDate() => clearField(3);
  @$pb.TagNumber(3)
  $5.Timestamp ensureDate() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.double get transactionAmount => $_getN(3);
  @$pb.TagNumber(4)
  set transactionAmount($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTransactionAmount() => $_has(3);
  @$pb.TagNumber(4)
  void clearTransactionAmount() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get currency => $_getSZ(4);
  @$pb.TagNumber(5)
  set currency($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCurrency() => $_has(4);
  @$pb.TagNumber(5)
  void clearCurrency() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get partyName => $_getSZ(5);
  @$pb.TagNumber(6)
  set partyName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPartyName() => $_has(5);
  @$pb.TagNumber(6)
  void clearPartyName() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get partyIban => $_getSZ(6);
  @$pb.TagNumber(7)
  set partyIban($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPartyIban() => $_has(6);
  @$pb.TagNumber(7)
  void clearPartyIban() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get description => $_getSZ(7);
  @$pb.TagNumber(8)
  set description($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDescription() => $_has(7);
  @$pb.TagNumber(8)
  void clearDescription() => clearField(8);

  @$pb.TagNumber(9)
  $6.StringValue get transactionCategorySlug => $_getN(8);
  @$pb.TagNumber(9)
  set transactionCategorySlug($6.StringValue v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasTransactionCategorySlug() => $_has(8);
  @$pb.TagNumber(9)
  void clearTransactionCategorySlug() => clearField(9);
  @$pb.TagNumber(9)
  $6.StringValue ensureTransactionCategorySlug() => $_ensure(8);

  @$pb.TagNumber(10)
  $6.StringValue get transactionCategoryGroupSlug => $_getN(9);
  @$pb.TagNumber(10)
  set transactionCategoryGroupSlug($6.StringValue v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasTransactionCategoryGroupSlug() => $_has(9);
  @$pb.TagNumber(10)
  void clearTransactionCategoryGroupSlug() => clearField(10);
  @$pb.TagNumber(10)
  $6.StringValue ensureTransactionCategoryGroupSlug() => $_ensure(9);

  @$pb.TagNumber(11)
  $core.double get balanceAfterTransaction => $_getN(10);
  @$pb.TagNumber(11)
  set balanceAfterTransaction($core.double v) { $_setDouble(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasBalanceAfterTransaction() => $_has(10);
  @$pb.TagNumber(11)
  void clearBalanceAfterTransaction() => clearField(11);
}

class GetTransactionCategoryGroupsRequest extends $pb.GeneratedMessage {
  factory GetTransactionCategoryGroupsRequest() => create();
  GetTransactionCategoryGroupsRequest._() : super();
  factory GetTransactionCategoryGroupsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTransactionCategoryGroupsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTransactionCategoryGroupsRequest', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTransactionCategoryGroupsRequest clone() => GetTransactionCategoryGroupsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTransactionCategoryGroupsRequest copyWith(void Function(GetTransactionCategoryGroupsRequest) updates) => super.copyWith((message) => updates(message as GetTransactionCategoryGroupsRequest)) as GetTransactionCategoryGroupsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTransactionCategoryGroupsRequest create() => GetTransactionCategoryGroupsRequest._();
  GetTransactionCategoryGroupsRequest createEmptyInstance() => create();
  static $pb.PbList<GetTransactionCategoryGroupsRequest> createRepeated() => $pb.PbList<GetTransactionCategoryGroupsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetTransactionCategoryGroupsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTransactionCategoryGroupsRequest>(create);
  static GetTransactionCategoryGroupsRequest? _defaultInstance;
}

class GetTransactionCategoryGroupsResponse extends $pb.GeneratedMessage {
  factory GetTransactionCategoryGroupsResponse({
    $core.Iterable<TransactionCategoryGroupResponse>? groups,
  }) {
    final $result = create();
    if (groups != null) {
      $result.groups.addAll(groups);
    }
    return $result;
  }
  GetTransactionCategoryGroupsResponse._() : super();
  factory GetTransactionCategoryGroupsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTransactionCategoryGroupsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTransactionCategoryGroupsResponse', createEmptyInstance: create)
    ..pc<TransactionCategoryGroupResponse>(1, _omitFieldNames ? '' : 'groups', $pb.PbFieldType.PM, subBuilder: TransactionCategoryGroupResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTransactionCategoryGroupsResponse clone() => GetTransactionCategoryGroupsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTransactionCategoryGroupsResponse copyWith(void Function(GetTransactionCategoryGroupsResponse) updates) => super.copyWith((message) => updates(message as GetTransactionCategoryGroupsResponse)) as GetTransactionCategoryGroupsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTransactionCategoryGroupsResponse create() => GetTransactionCategoryGroupsResponse._();
  GetTransactionCategoryGroupsResponse createEmptyInstance() => create();
  static $pb.PbList<GetTransactionCategoryGroupsResponse> createRepeated() => $pb.PbList<GetTransactionCategoryGroupsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetTransactionCategoryGroupsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTransactionCategoryGroupsResponse>(create);
  static GetTransactionCategoryGroupsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TransactionCategoryGroupResponse> get groups => $_getList(0);
}

class TransactionCategoryGroupResponse extends $pb.GeneratedMessage {
  factory TransactionCategoryGroupResponse({
    $core.String? id,
    $core.String? slug,
    $core.String? label,
    $core.Iterable<TransactionCategoryResponse>? categories,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (slug != null) {
      $result.slug = slug;
    }
    if (label != null) {
      $result.label = label;
    }
    if (categories != null) {
      $result.categories.addAll(categories);
    }
    return $result;
  }
  TransactionCategoryGroupResponse._() : super();
  factory TransactionCategoryGroupResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransactionCategoryGroupResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TransactionCategoryGroupResponse', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'slug')
    ..aOS(3, _omitFieldNames ? '' : 'label')
    ..pc<TransactionCategoryResponse>(4, _omitFieldNames ? '' : 'categories', $pb.PbFieldType.PM, subBuilder: TransactionCategoryResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransactionCategoryGroupResponse clone() => TransactionCategoryGroupResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransactionCategoryGroupResponse copyWith(void Function(TransactionCategoryGroupResponse) updates) => super.copyWith((message) => updates(message as TransactionCategoryGroupResponse)) as TransactionCategoryGroupResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransactionCategoryGroupResponse create() => TransactionCategoryGroupResponse._();
  TransactionCategoryGroupResponse createEmptyInstance() => create();
  static $pb.PbList<TransactionCategoryGroupResponse> createRepeated() => $pb.PbList<TransactionCategoryGroupResponse>();
  @$core.pragma('dart2js:noInline')
  static TransactionCategoryGroupResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransactionCategoryGroupResponse>(create);
  static TransactionCategoryGroupResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get slug => $_getSZ(1);
  @$pb.TagNumber(2)
  set slug($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSlug() => $_has(1);
  @$pb.TagNumber(2)
  void clearSlug() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get label => $_getSZ(2);
  @$pb.TagNumber(3)
  set label($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLabel() => $_has(2);
  @$pb.TagNumber(3)
  void clearLabel() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<TransactionCategoryResponse> get categories => $_getList(3);
}

class TransactionCategoryResponse extends $pb.GeneratedMessage {
  factory TransactionCategoryResponse({
    $core.String? id,
    $core.String? slug,
    $core.String? label,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (slug != null) {
      $result.slug = slug;
    }
    if (label != null) {
      $result.label = label;
    }
    return $result;
  }
  TransactionCategoryResponse._() : super();
  factory TransactionCategoryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransactionCategoryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TransactionCategoryResponse', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'slug')
    ..aOS(3, _omitFieldNames ? '' : 'label')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransactionCategoryResponse clone() => TransactionCategoryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransactionCategoryResponse copyWith(void Function(TransactionCategoryResponse) updates) => super.copyWith((message) => updates(message as TransactionCategoryResponse)) as TransactionCategoryResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TransactionCategoryResponse create() => TransactionCategoryResponse._();
  TransactionCategoryResponse createEmptyInstance() => create();
  static $pb.PbList<TransactionCategoryResponse> createRepeated() => $pb.PbList<TransactionCategoryResponse>();
  @$core.pragma('dart2js:noInline')
  static TransactionCategoryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransactionCategoryResponse>(create);
  static TransactionCategoryResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get slug => $_getSZ(1);
  @$pb.TagNumber(2)
  set slug($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSlug() => $_has(1);
  @$pb.TagNumber(2)
  void clearSlug() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get label => $_getSZ(2);
  @$pb.TagNumber(3)
  set label($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLabel() => $_has(2);
  @$pb.TagNumber(3)
  void clearLabel() => clearField(3);
}

class GetCategorizedTransactionResultsRequest extends $pb.GeneratedMessage {
  factory GetCategorizedTransactionResultsRequest({
    $5.Timestamp? start,
    $5.Timestamp? end,
  }) {
    final $result = create();
    if (start != null) {
      $result.start = start;
    }
    if (end != null) {
      $result.end = end;
    }
    return $result;
  }
  GetCategorizedTransactionResultsRequest._() : super();
  factory GetCategorizedTransactionResultsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCategorizedTransactionResultsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetCategorizedTransactionResultsRequest', createEmptyInstance: create)
    ..aOM<$5.Timestamp>(1, _omitFieldNames ? '' : 'start', subBuilder: $5.Timestamp.create)
    ..aOM<$5.Timestamp>(2, _omitFieldNames ? '' : 'end', subBuilder: $5.Timestamp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCategorizedTransactionResultsRequest clone() => GetCategorizedTransactionResultsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCategorizedTransactionResultsRequest copyWith(void Function(GetCategorizedTransactionResultsRequest) updates) => super.copyWith((message) => updates(message as GetCategorizedTransactionResultsRequest)) as GetCategorizedTransactionResultsRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetCategorizedTransactionResultsRequest create() => GetCategorizedTransactionResultsRequest._();
  GetCategorizedTransactionResultsRequest createEmptyInstance() => create();
  static $pb.PbList<GetCategorizedTransactionResultsRequest> createRepeated() => $pb.PbList<GetCategorizedTransactionResultsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetCategorizedTransactionResultsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCategorizedTransactionResultsRequest>(create);
  static GetCategorizedTransactionResultsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $5.Timestamp get start => $_getN(0);
  @$pb.TagNumber(1)
  set start($5.Timestamp v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStart() => $_has(0);
  @$pb.TagNumber(1)
  void clearStart() => clearField(1);
  @$pb.TagNumber(1)
  $5.Timestamp ensureStart() => $_ensure(0);

  @$pb.TagNumber(2)
  $5.Timestamp get end => $_getN(1);
  @$pb.TagNumber(2)
  set end($5.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasEnd() => $_has(1);
  @$pb.TagNumber(2)
  void clearEnd() => clearField(2);
  @$pb.TagNumber(2)
  $5.Timestamp ensureEnd() => $_ensure(1);
}

class GetCategorizedTransactionResultsResponse extends $pb.GeneratedMessage {
  factory GetCategorizedTransactionResultsResponse({
    $core.Iterable<GetCategorizedTransactionResultResponse>? results,
  }) {
    final $result = create();
    if (results != null) {
      $result.results.addAll(results);
    }
    return $result;
  }
  GetCategorizedTransactionResultsResponse._() : super();
  factory GetCategorizedTransactionResultsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCategorizedTransactionResultsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetCategorizedTransactionResultsResponse', createEmptyInstance: create)
    ..pc<GetCategorizedTransactionResultResponse>(1, _omitFieldNames ? '' : 'results', $pb.PbFieldType.PM, subBuilder: GetCategorizedTransactionResultResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCategorizedTransactionResultsResponse clone() => GetCategorizedTransactionResultsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCategorizedTransactionResultsResponse copyWith(void Function(GetCategorizedTransactionResultsResponse) updates) => super.copyWith((message) => updates(message as GetCategorizedTransactionResultsResponse)) as GetCategorizedTransactionResultsResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetCategorizedTransactionResultsResponse create() => GetCategorizedTransactionResultsResponse._();
  GetCategorizedTransactionResultsResponse createEmptyInstance() => create();
  static $pb.PbList<GetCategorizedTransactionResultsResponse> createRepeated() => $pb.PbList<GetCategorizedTransactionResultsResponse>();
  @$core.pragma('dart2js:noInline')
  static GetCategorizedTransactionResultsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCategorizedTransactionResultsResponse>(create);
  static GetCategorizedTransactionResultsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<GetCategorizedTransactionResultResponse> get results => $_getList(0);
}

class GetCategorizedTransactionResultResponse extends $pb.GeneratedMessage {
  factory GetCategorizedTransactionResultResponse({
    $core.String? slug,
    $fixnum.Int64? count,
    $core.double? percentage,
    $core.Iterable<GetCategorizedTransactionResult>? categories,
  }) {
    final $result = create();
    if (slug != null) {
      $result.slug = slug;
    }
    if (count != null) {
      $result.count = count;
    }
    if (percentage != null) {
      $result.percentage = percentage;
    }
    if (categories != null) {
      $result.categories.addAll(categories);
    }
    return $result;
  }
  GetCategorizedTransactionResultResponse._() : super();
  factory GetCategorizedTransactionResultResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCategorizedTransactionResultResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetCategorizedTransactionResultResponse', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'slug')
    ..aInt64(2, _omitFieldNames ? '' : 'count')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'percentage', $pb.PbFieldType.OD)
    ..pc<GetCategorizedTransactionResult>(4, _omitFieldNames ? '' : 'categories', $pb.PbFieldType.PM, subBuilder: GetCategorizedTransactionResult.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCategorizedTransactionResultResponse clone() => GetCategorizedTransactionResultResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCategorizedTransactionResultResponse copyWith(void Function(GetCategorizedTransactionResultResponse) updates) => super.copyWith((message) => updates(message as GetCategorizedTransactionResultResponse)) as GetCategorizedTransactionResultResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetCategorizedTransactionResultResponse create() => GetCategorizedTransactionResultResponse._();
  GetCategorizedTransactionResultResponse createEmptyInstance() => create();
  static $pb.PbList<GetCategorizedTransactionResultResponse> createRepeated() => $pb.PbList<GetCategorizedTransactionResultResponse>();
  @$core.pragma('dart2js:noInline')
  static GetCategorizedTransactionResultResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCategorizedTransactionResultResponse>(create);
  static GetCategorizedTransactionResultResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get slug => $_getSZ(0);
  @$pb.TagNumber(1)
  set slug($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSlug() => $_has(0);
  @$pb.TagNumber(1)
  void clearSlug() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get count => $_getI64(1);
  @$pb.TagNumber(2)
  set count($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get percentage => $_getN(2);
  @$pb.TagNumber(3)
  set percentage($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPercentage() => $_has(2);
  @$pb.TagNumber(3)
  void clearPercentage() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<GetCategorizedTransactionResult> get categories => $_getList(3);
}

class GetCategorizedTransactionResult extends $pb.GeneratedMessage {
  factory GetCategorizedTransactionResult({
    $core.String? slug,
    $fixnum.Int64? count,
    $core.double? percentage,
  }) {
    final $result = create();
    if (slug != null) {
      $result.slug = slug;
    }
    if (count != null) {
      $result.count = count;
    }
    if (percentage != null) {
      $result.percentage = percentage;
    }
    return $result;
  }
  GetCategorizedTransactionResult._() : super();
  factory GetCategorizedTransactionResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetCategorizedTransactionResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetCategorizedTransactionResult', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'slug')
    ..aInt64(2, _omitFieldNames ? '' : 'count')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'percentage', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetCategorizedTransactionResult clone() => GetCategorizedTransactionResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetCategorizedTransactionResult copyWith(void Function(GetCategorizedTransactionResult) updates) => super.copyWith((message) => updates(message as GetCategorizedTransactionResult)) as GetCategorizedTransactionResult;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetCategorizedTransactionResult create() => GetCategorizedTransactionResult._();
  GetCategorizedTransactionResult createEmptyInstance() => create();
  static $pb.PbList<GetCategorizedTransactionResult> createRepeated() => $pb.PbList<GetCategorizedTransactionResult>();
  @$core.pragma('dart2js:noInline')
  static GetCategorizedTransactionResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetCategorizedTransactionResult>(create);
  static GetCategorizedTransactionResult? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get slug => $_getSZ(0);
  @$pb.TagNumber(1)
  set slug($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSlug() => $_has(0);
  @$pb.TagNumber(1)
  void clearSlug() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get count => $_getI64(1);
  @$pb.TagNumber(2)
  set count($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCount() => $_has(1);
  @$pb.TagNumber(2)
  void clearCount() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get percentage => $_getN(2);
  @$pb.TagNumber(3)
  set percentage($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPercentage() => $_has(2);
  @$pb.TagNumber(3)
  void clearPercentage() => clearField(3);
}

class GetTransactionByIdRequest extends $pb.GeneratedMessage {
  factory GetTransactionByIdRequest({
    $core.String? userId,
    $core.String? transactionId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    if (transactionId != null) {
      $result.transactionId = transactionId;
    }
    return $result;
  }
  GetTransactionByIdRequest._() : super();
  factory GetTransactionByIdRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTransactionByIdRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTransactionByIdRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..aOS(2, _omitFieldNames ? '' : 'transactionId', protoName: 'transactionId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTransactionByIdRequest clone() => GetTransactionByIdRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTransactionByIdRequest copyWith(void Function(GetTransactionByIdRequest) updates) => super.copyWith((message) => updates(message as GetTransactionByIdRequest)) as GetTransactionByIdRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTransactionByIdRequest create() => GetTransactionByIdRequest._();
  GetTransactionByIdRequest createEmptyInstance() => create();
  static $pb.PbList<GetTransactionByIdRequest> createRepeated() => $pb.PbList<GetTransactionByIdRequest>();
  @$core.pragma('dart2js:noInline')
  static GetTransactionByIdRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTransactionByIdRequest>(create);
  static GetTransactionByIdRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get transactionId => $_getSZ(1);
  @$pb.TagNumber(2)
  set transactionId($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTransactionId() => $_has(1);
  @$pb.TagNumber(2)
  void clearTransactionId() => clearField(2);
}

class GetInAndOutgoingTransactionAmountsPerPeriodRequest extends $pb.GeneratedMessage {
  factory GetInAndOutgoingTransactionAmountsPerPeriodRequest({
    GetInAndOutgoingTransactionAmountsPerPeriodRequest_Period? period,
  }) {
    final $result = create();
    if (period != null) {
      $result.period = period;
    }
    return $result;
  }
  GetInAndOutgoingTransactionAmountsPerPeriodRequest._() : super();
  factory GetInAndOutgoingTransactionAmountsPerPeriodRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetInAndOutgoingTransactionAmountsPerPeriodRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetInAndOutgoingTransactionAmountsPerPeriodRequest', createEmptyInstance: create)
    ..e<GetInAndOutgoingTransactionAmountsPerPeriodRequest_Period>(1, _omitFieldNames ? '' : 'period', $pb.PbFieldType.OE, defaultOrMaker: GetInAndOutgoingTransactionAmountsPerPeriodRequest_Period.day, valueOf: GetInAndOutgoingTransactionAmountsPerPeriodRequest_Period.valueOf, enumValues: GetInAndOutgoingTransactionAmountsPerPeriodRequest_Period.values)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetInAndOutgoingTransactionAmountsPerPeriodRequest clone() => GetInAndOutgoingTransactionAmountsPerPeriodRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetInAndOutgoingTransactionAmountsPerPeriodRequest copyWith(void Function(GetInAndOutgoingTransactionAmountsPerPeriodRequest) updates) => super.copyWith((message) => updates(message as GetInAndOutgoingTransactionAmountsPerPeriodRequest)) as GetInAndOutgoingTransactionAmountsPerPeriodRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetInAndOutgoingTransactionAmountsPerPeriodRequest create() => GetInAndOutgoingTransactionAmountsPerPeriodRequest._();
  GetInAndOutgoingTransactionAmountsPerPeriodRequest createEmptyInstance() => create();
  static $pb.PbList<GetInAndOutgoingTransactionAmountsPerPeriodRequest> createRepeated() => $pb.PbList<GetInAndOutgoingTransactionAmountsPerPeriodRequest>();
  @$core.pragma('dart2js:noInline')
  static GetInAndOutgoingTransactionAmountsPerPeriodRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetInAndOutgoingTransactionAmountsPerPeriodRequest>(create);
  static GetInAndOutgoingTransactionAmountsPerPeriodRequest? _defaultInstance;

  @$pb.TagNumber(1)
  GetInAndOutgoingTransactionAmountsPerPeriodRequest_Period get period => $_getN(0);
  @$pb.TagNumber(1)
  set period(GetInAndOutgoingTransactionAmountsPerPeriodRequest_Period v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPeriod() => $_has(0);
  @$pb.TagNumber(1)
  void clearPeriod() => clearField(1);
}

class GetInAndOutgoingTransactionAmountsPerPeriodResponse extends $pb.GeneratedMessage {
  factory GetInAndOutgoingTransactionAmountsPerPeriodResponse({
    $core.Iterable<InAndOutgoingTransactionAmountPeriod>? periods,
  }) {
    final $result = create();
    if (periods != null) {
      $result.periods.addAll(periods);
    }
    return $result;
  }
  GetInAndOutgoingTransactionAmountsPerPeriodResponse._() : super();
  factory GetInAndOutgoingTransactionAmountsPerPeriodResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetInAndOutgoingTransactionAmountsPerPeriodResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetInAndOutgoingTransactionAmountsPerPeriodResponse', createEmptyInstance: create)
    ..pc<InAndOutgoingTransactionAmountPeriod>(1, _omitFieldNames ? '' : 'periods', $pb.PbFieldType.PM, subBuilder: InAndOutgoingTransactionAmountPeriod.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetInAndOutgoingTransactionAmountsPerPeriodResponse clone() => GetInAndOutgoingTransactionAmountsPerPeriodResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetInAndOutgoingTransactionAmountsPerPeriodResponse copyWith(void Function(GetInAndOutgoingTransactionAmountsPerPeriodResponse) updates) => super.copyWith((message) => updates(message as GetInAndOutgoingTransactionAmountsPerPeriodResponse)) as GetInAndOutgoingTransactionAmountsPerPeriodResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetInAndOutgoingTransactionAmountsPerPeriodResponse create() => GetInAndOutgoingTransactionAmountsPerPeriodResponse._();
  GetInAndOutgoingTransactionAmountsPerPeriodResponse createEmptyInstance() => create();
  static $pb.PbList<GetInAndOutgoingTransactionAmountsPerPeriodResponse> createRepeated() => $pb.PbList<GetInAndOutgoingTransactionAmountsPerPeriodResponse>();
  @$core.pragma('dart2js:noInline')
  static GetInAndOutgoingTransactionAmountsPerPeriodResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetInAndOutgoingTransactionAmountsPerPeriodResponse>(create);
  static GetInAndOutgoingTransactionAmountsPerPeriodResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<InAndOutgoingTransactionAmountPeriod> get periods => $_getList(0);
}

class InAndOutgoingTransactionAmountPeriod extends $pb.GeneratedMessage {
  factory InAndOutgoingTransactionAmountPeriod({
    $5.Timestamp? startOfPeriod,
    $core.double? ingoingAmount,
    $core.double? outgoingAmount,
  }) {
    final $result = create();
    if (startOfPeriod != null) {
      $result.startOfPeriod = startOfPeriod;
    }
    if (ingoingAmount != null) {
      $result.ingoingAmount = ingoingAmount;
    }
    if (outgoingAmount != null) {
      $result.outgoingAmount = outgoingAmount;
    }
    return $result;
  }
  InAndOutgoingTransactionAmountPeriod._() : super();
  factory InAndOutgoingTransactionAmountPeriod.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InAndOutgoingTransactionAmountPeriod.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'InAndOutgoingTransactionAmountPeriod', createEmptyInstance: create)
    ..aOM<$5.Timestamp>(1, _omitFieldNames ? '' : 'startOfPeriod', protoName: 'startOfPeriod', subBuilder: $5.Timestamp.create)
    ..a<$core.double>(2, _omitFieldNames ? '' : 'ingoingAmount', $pb.PbFieldType.OD, protoName: 'ingoingAmount')
    ..a<$core.double>(3, _omitFieldNames ? '' : 'outgoingAmount', $pb.PbFieldType.OD, protoName: 'outgoingAmount')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InAndOutgoingTransactionAmountPeriod clone() => InAndOutgoingTransactionAmountPeriod()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InAndOutgoingTransactionAmountPeriod copyWith(void Function(InAndOutgoingTransactionAmountPeriod) updates) => super.copyWith((message) => updates(message as InAndOutgoingTransactionAmountPeriod)) as InAndOutgoingTransactionAmountPeriod;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InAndOutgoingTransactionAmountPeriod create() => InAndOutgoingTransactionAmountPeriod._();
  InAndOutgoingTransactionAmountPeriod createEmptyInstance() => create();
  static $pb.PbList<InAndOutgoingTransactionAmountPeriod> createRepeated() => $pb.PbList<InAndOutgoingTransactionAmountPeriod>();
  @$core.pragma('dart2js:noInline')
  static InAndOutgoingTransactionAmountPeriod getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InAndOutgoingTransactionAmountPeriod>(create);
  static InAndOutgoingTransactionAmountPeriod? _defaultInstance;

  @$pb.TagNumber(1)
  $5.Timestamp get startOfPeriod => $_getN(0);
  @$pb.TagNumber(1)
  set startOfPeriod($5.Timestamp v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStartOfPeriod() => $_has(0);
  @$pb.TagNumber(1)
  void clearStartOfPeriod() => clearField(1);
  @$pb.TagNumber(1)
  $5.Timestamp ensureStartOfPeriod() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.double get ingoingAmount => $_getN(1);
  @$pb.TagNumber(2)
  set ingoingAmount($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIngoingAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearIngoingAmount() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get outgoingAmount => $_getN(2);
  @$pb.TagNumber(3)
  set outgoingAmount($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOutgoingAmount() => $_has(2);
  @$pb.TagNumber(3)
  void clearOutgoingAmount() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
