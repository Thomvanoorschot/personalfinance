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

import 'google/protobuf/timestamp.pb.dart' as $5;

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
  }) {
    final $result = create();
    if (transactions != null) {
      $result.transactions.addAll(transactions);
    }
    return $result;
  }
  GetTransactionsResponse._() : super();
  factory GetTransactionsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTransactionsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTransactionsResponse', createEmptyInstance: create)
    ..pc<TransactionResponse>(1, _omitFieldNames ? '' : 'transactions', $pb.PbFieldType.PM, subBuilder: TransactionResponse.create)
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
    $core.String? transactionCategoryLabel,
    $core.String? transactionCategoryId,
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
    if (transactionCategoryLabel != null) {
      $result.transactionCategoryLabel = transactionCategoryLabel;
    }
    if (transactionCategoryId != null) {
      $result.transactionCategoryId = transactionCategoryId;
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
    ..aOS(9, _omitFieldNames ? '' : 'transactionCategoryLabel', protoName: 'transactionCategoryLabel')
    ..aOS(10, _omitFieldNames ? '' : 'transactionCategoryId', protoName: 'transactionCategoryId')
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
  $core.String get transactionCategoryLabel => $_getSZ(8);
  @$pb.TagNumber(9)
  set transactionCategoryLabel($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasTransactionCategoryLabel() => $_has(8);
  @$pb.TagNumber(9)
  void clearTransactionCategoryLabel() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get transactionCategoryId => $_getSZ(9);
  @$pb.TagNumber(10)
  set transactionCategoryId($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasTransactionCategoryId() => $_has(9);
  @$pb.TagNumber(10)
  void clearTransactionCategoryId() => clearField(10);

  @$pb.TagNumber(11)
  $core.double get balanceAfterTransaction => $_getN(10);
  @$pb.TagNumber(11)
  set balanceAfterTransaction($core.double v) { $_setDouble(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasBalanceAfterTransaction() => $_has(10);
  @$pb.TagNumber(11)
  void clearBalanceAfterTransaction() => clearField(11);
}

class GetTransactionCategoriesRequest extends $pb.GeneratedMessage {
  factory GetTransactionCategoriesRequest() => create();
  GetTransactionCategoriesRequest._() : super();
  factory GetTransactionCategoriesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTransactionCategoriesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTransactionCategoriesRequest', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTransactionCategoriesRequest clone() => GetTransactionCategoriesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTransactionCategoriesRequest copyWith(void Function(GetTransactionCategoriesRequest) updates) => super.copyWith((message) => updates(message as GetTransactionCategoriesRequest)) as GetTransactionCategoriesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTransactionCategoriesRequest create() => GetTransactionCategoriesRequest._();
  GetTransactionCategoriesRequest createEmptyInstance() => create();
  static $pb.PbList<GetTransactionCategoriesRequest> createRepeated() => $pb.PbList<GetTransactionCategoriesRequest>();
  @$core.pragma('dart2js:noInline')
  static GetTransactionCategoriesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTransactionCategoriesRequest>(create);
  static GetTransactionCategoriesRequest? _defaultInstance;
}

class GetTransactionCategoriesResponse extends $pb.GeneratedMessage {
  factory GetTransactionCategoriesResponse({
    $core.Iterable<TransactionCategoryResponse>? categories,
  }) {
    final $result = create();
    if (categories != null) {
      $result.categories.addAll(categories);
    }
    return $result;
  }
  GetTransactionCategoriesResponse._() : super();
  factory GetTransactionCategoriesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTransactionCategoriesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTransactionCategoriesResponse', createEmptyInstance: create)
    ..pc<TransactionCategoryResponse>(1, _omitFieldNames ? '' : 'categories', $pb.PbFieldType.PM, subBuilder: TransactionCategoryResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTransactionCategoriesResponse clone() => GetTransactionCategoriesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTransactionCategoriesResponse copyWith(void Function(GetTransactionCategoriesResponse) updates) => super.copyWith((message) => updates(message as GetTransactionCategoriesResponse)) as GetTransactionCategoriesResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetTransactionCategoriesResponse create() => GetTransactionCategoriesResponse._();
  GetTransactionCategoriesResponse createEmptyInstance() => create();
  static $pb.PbList<GetTransactionCategoriesResponse> createRepeated() => $pb.PbList<GetTransactionCategoriesResponse>();
  @$core.pragma('dart2js:noInline')
  static GetTransactionCategoriesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTransactionCategoriesResponse>(create);
  static GetTransactionCategoriesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<TransactionCategoryResponse> get categories => $_getList(0);
}

class TransactionCategoryResponse extends $pb.GeneratedMessage {
  factory TransactionCategoryResponse({
    $core.String? id,
    $core.String? label,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
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
    ..aOS(2, _omitFieldNames ? '' : 'label')
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
  $core.String get label => $_getSZ(1);
  @$pb.TagNumber(2)
  set label($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLabel() => $_has(1);
  @$pb.TagNumber(2)
  void clearLabel() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');