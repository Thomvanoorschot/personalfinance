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

import 'package:protobuf/protobuf.dart' as $pb;

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
  factory GetTransactionsRequest() => create();
  GetTransactionsRequest._() : super();
  factory GetTransactionsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTransactionsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTransactionsRequest', createEmptyInstance: create)
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
}

class GetTransactionsResponse extends $pb.GeneratedMessage {
  factory GetTransactionsResponse() => create();
  GetTransactionsResponse._() : super();
  factory GetTransactionsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTransactionsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetTransactionsResponse', createEmptyInstance: create)
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
