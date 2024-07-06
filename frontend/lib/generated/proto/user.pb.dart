//
//  Generated code. Do not modify.
//  source: user.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class RegisterUnverifiedUserRequest extends $pb.GeneratedMessage {
  factory RegisterUnverifiedUserRequest({
    $core.String? uniqueDeviceId,
  }) {
    final $result = create();
    if (uniqueDeviceId != null) {
      $result.uniqueDeviceId = uniqueDeviceId;
    }
    return $result;
  }
  RegisterUnverifiedUserRequest._() : super();
  factory RegisterUnverifiedUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterUnverifiedUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RegisterUnverifiedUserRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uniqueDeviceId', protoName: 'uniqueDeviceId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisterUnverifiedUserRequest clone() => RegisterUnverifiedUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisterUnverifiedUserRequest copyWith(void Function(RegisterUnverifiedUserRequest) updates) => super.copyWith((message) => updates(message as RegisterUnverifiedUserRequest)) as RegisterUnverifiedUserRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterUnverifiedUserRequest create() => RegisterUnverifiedUserRequest._();
  RegisterUnverifiedUserRequest createEmptyInstance() => create();
  static $pb.PbList<RegisterUnverifiedUserRequest> createRepeated() => $pb.PbList<RegisterUnverifiedUserRequest>();
  @$core.pragma('dart2js:noInline')
  static RegisterUnverifiedUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterUnverifiedUserRequest>(create);
  static RegisterUnverifiedUserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uniqueDeviceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set uniqueDeviceId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUniqueDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUniqueDeviceId() => clearField(1);
}

class RegisterUnverifiedUserResponse extends $pb.GeneratedMessage {
  factory RegisterUnverifiedUserResponse({
    $core.String? userId,
  }) {
    final $result = create();
    if (userId != null) {
      $result.userId = userId;
    }
    return $result;
  }
  RegisterUnverifiedUserResponse._() : super();
  factory RegisterUnverifiedUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RegisterUnverifiedUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RegisterUnverifiedUserResponse', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'userId', protoName: 'userId')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RegisterUnverifiedUserResponse clone() => RegisterUnverifiedUserResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RegisterUnverifiedUserResponse copyWith(void Function(RegisterUnverifiedUserResponse) updates) => super.copyWith((message) => updates(message as RegisterUnverifiedUserResponse)) as RegisterUnverifiedUserResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RegisterUnverifiedUserResponse create() => RegisterUnverifiedUserResponse._();
  RegisterUnverifiedUserResponse createEmptyInstance() => create();
  static $pb.PbList<RegisterUnverifiedUserResponse> createRepeated() => $pb.PbList<RegisterUnverifiedUserResponse>();
  @$core.pragma('dart2js:noInline')
  static RegisterUnverifiedUserResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RegisterUnverifiedUserResponse>(create);
  static RegisterUnverifiedUserResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get userId => $_getSZ(0);
  @$pb.TagNumber(1)
  set userId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserId() => clearField(1);
}

class LinkUserRequest extends $pb.GeneratedMessage {
  factory LinkUserRequest({
    $core.String? uniqueDeviceId,
    $core.String? email,
  }) {
    final $result = create();
    if (uniqueDeviceId != null) {
      $result.uniqueDeviceId = uniqueDeviceId;
    }
    if (email != null) {
      $result.email = email;
    }
    return $result;
  }
  LinkUserRequest._() : super();
  factory LinkUserRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LinkUserRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LinkUserRequest', createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uniqueDeviceId', protoName: 'uniqueDeviceId')
    ..aOS(2, _omitFieldNames ? '' : 'email')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LinkUserRequest clone() => LinkUserRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LinkUserRequest copyWith(void Function(LinkUserRequest) updates) => super.copyWith((message) => updates(message as LinkUserRequest)) as LinkUserRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LinkUserRequest create() => LinkUserRequest._();
  LinkUserRequest createEmptyInstance() => create();
  static $pb.PbList<LinkUserRequest> createRepeated() => $pb.PbList<LinkUserRequest>();
  @$core.pragma('dart2js:noInline')
  static LinkUserRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LinkUserRequest>(create);
  static LinkUserRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get uniqueDeviceId => $_getSZ(0);
  @$pb.TagNumber(1)
  set uniqueDeviceId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUniqueDeviceId() => $_has(0);
  @$pb.TagNumber(1)
  void clearUniqueDeviceId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get email => $_getSZ(1);
  @$pb.TagNumber(2)
  set email($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEmail() => $_has(1);
  @$pb.TagNumber(2)
  void clearEmail() => clearField(2);
}

class LinkUserResponse extends $pb.GeneratedMessage {
  factory LinkUserResponse() => create();
  LinkUserResponse._() : super();
  factory LinkUserResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LinkUserResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LinkUserResponse', createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LinkUserResponse clone() => LinkUserResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LinkUserResponse copyWith(void Function(LinkUserResponse) updates) => super.copyWith((message) => updates(message as LinkUserResponse)) as LinkUserResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LinkUserResponse create() => LinkUserResponse._();
  LinkUserResponse createEmptyInstance() => create();
  static $pb.PbList<LinkUserResponse> createRepeated() => $pb.PbList<LinkUserResponse>();
  @$core.pragma('dart2js:noInline')
  static LinkUserResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LinkUserResponse>(create);
  static LinkUserResponse? _defaultInstance;
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
