//
//  Generated code. Do not modify.
//  source: banking.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $4;

class GetBanksRequest extends $pb.GeneratedMessage {
  factory GetBanksRequest({
    $core.String? countryCode,
  }) {
    final $result = create();
    if (countryCode != null) {
      $result.countryCode = countryCode;
    }
    return $result;
  }
  GetBanksRequest._() : super();
  factory GetBanksRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBanksRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetBanksRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'countryCode', protoName: 'countryCode')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBanksRequest clone() => GetBanksRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBanksRequest copyWith(void Function(GetBanksRequest) updates) => super.copyWith((message) => updates(message as GetBanksRequest)) as GetBanksRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBanksRequest create() => GetBanksRequest._();
  GetBanksRequest createEmptyInstance() => create();
  static $pb.PbList<GetBanksRequest> createRepeated() => $pb.PbList<GetBanksRequest>();
  @$core.pragma('dart2js:noInline')
  static GetBanksRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBanksRequest>(create);
  static GetBanksRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get countryCode => $_getSZ(0);
  @$pb.TagNumber(1)
  set countryCode($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCountryCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCountryCode() => clearField(1);
}

class GetBanksResponse extends $pb.GeneratedMessage {
  factory GetBanksResponse({
    $core.Iterable<BankResponse>? banks,
  }) {
    final $result = create();
    if (banks != null) {
      $result.banks.addAll(banks);
    }
    return $result;
  }
  GetBanksResponse._() : super();
  factory GetBanksResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetBanksResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetBanksResponse', createEmptyInstance: create)
    ..pc<BankResponse>(1, _omitFieldNames ? '' : 'banks', $pb.PbFieldType.PM, subBuilder: BankResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetBanksResponse clone() => GetBanksResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetBanksResponse copyWith(void Function(GetBanksResponse) updates) => super.copyWith((message) => updates(message as GetBanksResponse)) as GetBanksResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetBanksResponse create() => GetBanksResponse._();
  GetBanksResponse createEmptyInstance() => create();
  static $pb.PbList<GetBanksResponse> createRepeated() => $pb.PbList<GetBanksResponse>();
  @$core.pragma('dart2js:noInline')
  static GetBanksResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetBanksResponse>(create);
  static GetBanksResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<BankResponse> get banks => $_getList(0);
}

class BankResponse extends $pb.GeneratedMessage {
  factory BankResponse({
    $core.String? id,
    $core.String? name,
    $core.String? iconURL,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (name != null) {
      $result.name = name;
    }
    if (iconURL != null) {
      $result.iconURL = iconURL;
    }
    return $result;
  }
  BankResponse._() : super();
  factory BankResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BankResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'BankResponse', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'iconURL', protoName: 'iconURL')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BankResponse clone() => BankResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BankResponse copyWith(void Function(BankResponse) updates) => super.copyWith((message) => updates(message as BankResponse)) as BankResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BankResponse create() => BankResponse._();
  BankResponse createEmptyInstance() => create();
  static $pb.PbList<BankResponse> createRepeated() => $pb.PbList<BankResponse>();
  @$core.pragma('dart2js:noInline')
  static BankResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BankResponse>(create);
  static BankResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get iconURL => $_getSZ(2);
  @$pb.TagNumber(3)
  set iconURL($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIconURL() => $_has(2);
  @$pb.TagNumber(3)
  void clearIconURL() => clearField(3);
}

class CreateRequisitionRequest extends $pb.GeneratedMessage {
  factory CreateRequisitionRequest({
    $core.String? institutionId,
  }) {
    final $result = create();
    if (institutionId != null) {
      $result.institutionId = institutionId;
    }
    return $result;
  }
  CreateRequisitionRequest._() : super();
  factory CreateRequisitionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateRequisitionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateRequisitionRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'institutionId', protoName: 'institutionId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateRequisitionRequest clone() => CreateRequisitionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateRequisitionRequest copyWith(void Function(CreateRequisitionRequest) updates) => super.copyWith((message) => updates(message as CreateRequisitionRequest)) as CreateRequisitionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateRequisitionRequest create() => CreateRequisitionRequest._();
  CreateRequisitionRequest createEmptyInstance() => create();
  static $pb.PbList<CreateRequisitionRequest> createRepeated() => $pb.PbList<CreateRequisitionRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateRequisitionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateRequisitionRequest>(create);
  static CreateRequisitionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get institutionId => $_getSZ(0);
  @$pb.TagNumber(1)
  set institutionId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasInstitutionId() => $_has(0);
  @$pb.TagNumber(1)
  void clearInstitutionId() => clearField(1);
}

class CreateRequisitionResponse extends $pb.GeneratedMessage {
  factory CreateRequisitionResponse({
    $core.String? url,
  }) {
    final $result = create();
    if (url != null) {
      $result.url = url;
    }
    return $result;
  }
  CreateRequisitionResponse._() : super();
  factory CreateRequisitionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateRequisitionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateRequisitionResponse', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'url')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateRequisitionResponse clone() => CreateRequisitionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateRequisitionResponse copyWith(void Function(CreateRequisitionResponse) updates) => super.copyWith((message) => updates(message as CreateRequisitionResponse)) as CreateRequisitionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateRequisitionResponse create() => CreateRequisitionResponse._();
  CreateRequisitionResponse createEmptyInstance() => create();
  static $pb.PbList<CreateRequisitionResponse> createRepeated() => $pb.PbList<CreateRequisitionResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateRequisitionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateRequisitionResponse>(create);
  static CreateRequisitionResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get url => $_getSZ(0);
  @$pb.TagNumber(1)
  set url($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrl() => clearField(1);
}

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

class TransactionResponse extends $pb.GeneratedMessage {
  factory TransactionResponse({
    $core.String? accountId,
    $4.Timestamp? bookingDate,
    $core.double? transactionAmount,
    $core.String? currency,
    $core.String? creditorName,
    $core.String? creditorIban,
    $core.String? description,
    $core.String? debtorName,
    $core.String? debtorIban,
    $core.String? transactionCategoryLabel,
    $core.String? transactionCategoryId,
    $core.String? balanceAfterTransaction,
  }) {
    final $result = create();
    if (accountId != null) {
      $result.accountId = accountId;
    }
    if (bookingDate != null) {
      $result.bookingDate = bookingDate;
    }
    if (transactionAmount != null) {
      $result.transactionAmount = transactionAmount;
    }
    if (currency != null) {
      $result.currency = currency;
    }
    if (creditorName != null) {
      $result.creditorName = creditorName;
    }
    if (creditorIban != null) {
      $result.creditorIban = creditorIban;
    }
    if (description != null) {
      $result.description = description;
    }
    if (debtorName != null) {
      $result.debtorName = debtorName;
    }
    if (debtorIban != null) {
      $result.debtorIban = debtorIban;
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
    ..aOS(1, _omitFieldNames ? '' : 'accountId', protoName: 'accountId')
    ..aOM<$4.Timestamp>(2, _omitFieldNames ? '' : 'bookingDate', protoName: 'bookingDate', subBuilder: $4.Timestamp.create)
    ..a<$core.double>(3, _omitFieldNames ? '' : 'transactionAmount', $pb.PbFieldType.OD, protoName: 'transactionAmount')
    ..aOS(4, _omitFieldNames ? '' : 'currency')
    ..aOS(5, _omitFieldNames ? '' : 'creditorName', protoName: 'creditorName')
    ..aOS(6, _omitFieldNames ? '' : 'creditorIban', protoName: 'creditorIban')
    ..aOS(7, _omitFieldNames ? '' : 'description')
    ..aOS(8, _omitFieldNames ? '' : 'debtorName', protoName: 'debtorName')
    ..aOS(9, _omitFieldNames ? '' : 'debtorIban', protoName: 'debtorIban')
    ..aOS(10, _omitFieldNames ? '' : 'transactionCategoryLabel', protoName: 'transactionCategoryLabel')
    ..aOS(11, _omitFieldNames ? '' : 'transactionCategoryId', protoName: 'transactionCategoryId')
    ..aOS(12, _omitFieldNames ? '' : 'balanceAfterTransaction', protoName: 'balanceAfterTransaction')
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
  $core.String get accountId => $_getSZ(0);
  @$pb.TagNumber(1)
  set accountId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccountId() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccountId() => clearField(1);

  @$pb.TagNumber(2)
  $4.Timestamp get bookingDate => $_getN(1);
  @$pb.TagNumber(2)
  set bookingDate($4.Timestamp v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasBookingDate() => $_has(1);
  @$pb.TagNumber(2)
  void clearBookingDate() => clearField(2);
  @$pb.TagNumber(2)
  $4.Timestamp ensureBookingDate() => $_ensure(1);

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
  $core.String get creditorName => $_getSZ(4);
  @$pb.TagNumber(5)
  set creditorName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCreditorName() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreditorName() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get creditorIban => $_getSZ(5);
  @$pb.TagNumber(6)
  set creditorIban($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCreditorIban() => $_has(5);
  @$pb.TagNumber(6)
  void clearCreditorIban() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get description => $_getSZ(6);
  @$pb.TagNumber(7)
  set description($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDescription() => $_has(6);
  @$pb.TagNumber(7)
  void clearDescription() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get debtorName => $_getSZ(7);
  @$pb.TagNumber(8)
  set debtorName($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDebtorName() => $_has(7);
  @$pb.TagNumber(8)
  void clearDebtorName() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get debtorIban => $_getSZ(8);
  @$pb.TagNumber(9)
  set debtorIban($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasDebtorIban() => $_has(8);
  @$pb.TagNumber(9)
  void clearDebtorIban() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get transactionCategoryLabel => $_getSZ(9);
  @$pb.TagNumber(10)
  set transactionCategoryLabel($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasTransactionCategoryLabel() => $_has(9);
  @$pb.TagNumber(10)
  void clearTransactionCategoryLabel() => clearField(10);

  @$pb.TagNumber(11)
  $core.String get transactionCategoryId => $_getSZ(10);
  @$pb.TagNumber(11)
  set transactionCategoryId($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasTransactionCategoryId() => $_has(10);
  @$pb.TagNumber(11)
  void clearTransactionCategoryId() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get balanceAfterTransaction => $_getSZ(11);
  @$pb.TagNumber(12)
  set balanceAfterTransaction($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasBalanceAfterTransaction() => $_has(11);
  @$pb.TagNumber(12)
  void clearBalanceAfterTransaction() => clearField(12);
}

class HandleRequisitionRequest extends $pb.GeneratedMessage {
  factory HandleRequisitionRequest({
    $core.String? requisitionReference,
  }) {
    final $result = create();
    if (requisitionReference != null) {
      $result.requisitionReference = requisitionReference;
    }
    return $result;
  }
  HandleRequisitionRequest._() : super();
  factory HandleRequisitionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HandleRequisitionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HandleRequisitionRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'requisitionReference', protoName: 'requisitionReference')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HandleRequisitionRequest clone() => HandleRequisitionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HandleRequisitionRequest copyWith(void Function(HandleRequisitionRequest) updates) => super.copyWith((message) => updates(message as HandleRequisitionRequest)) as HandleRequisitionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HandleRequisitionRequest create() => HandleRequisitionRequest._();
  HandleRequisitionRequest createEmptyInstance() => create();
  static $pb.PbList<HandleRequisitionRequest> createRepeated() => $pb.PbList<HandleRequisitionRequest>();
  @$core.pragma('dart2js:noInline')
  static HandleRequisitionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HandleRequisitionRequest>(create);
  static HandleRequisitionRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get requisitionReference => $_getSZ(0);
  @$pb.TagNumber(1)
  set requisitionReference($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequisitionReference() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequisitionReference() => clearField(1);
}

class HandleRequisitionResponse extends $pb.GeneratedMessage {
  factory HandleRequisitionResponse() => create();
  HandleRequisitionResponse._() : super();
  factory HandleRequisitionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HandleRequisitionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HandleRequisitionResponse', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HandleRequisitionResponse clone() => HandleRequisitionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HandleRequisitionResponse copyWith(void Function(HandleRequisitionResponse) updates) => super.copyWith((message) => updates(message as HandleRequisitionResponse)) as HandleRequisitionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HandleRequisitionResponse create() => HandleRequisitionResponse._();
  HandleRequisitionResponse createEmptyInstance() => create();
  static $pb.PbList<HandleRequisitionResponse> createRepeated() => $pb.PbList<HandleRequisitionResponse>();
  @$core.pragma('dart2js:noInline')
  static HandleRequisitionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HandleRequisitionResponse>(create);
  static HandleRequisitionResponse? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
