//
//  Generated code. Do not modify.
//  source: main.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'banking.pb.dart' as $0;
import 'user.pb.dart' as $1;

export 'main.pb.dart';

@$pb.GrpcServiceName('BankingService')
class BankingServiceClient extends $grpc.Client {
  static final _$getBanks = $grpc.ClientMethod<$0.GetBanksRequest, $0.GetBanksResponse>(
      '/BankingService/GetBanks',
      ($0.GetBanksRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetBanksResponse.fromBuffer(value));
  static final _$createRequisition = $grpc.ClientMethod<$0.CreateRequisitionRequest, $0.CreateRequisitionResponse>(
      '/BankingService/CreateRequisition',
      ($0.CreateRequisitionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.CreateRequisitionResponse.fromBuffer(value));
  static final _$getTransactions = $grpc.ClientMethod<$0.GetTransactionsRequest, $0.GetTransactionsResponse>(
      '/BankingService/GetTransactions',
      ($0.GetTransactionsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetTransactionsResponse.fromBuffer(value));
  static final _$getBankAccounts = $grpc.ClientMethod<$0.GetBankAccountsRequest, $0.GetBankAccountsResponse>(
      '/BankingService/GetBankAccounts',
      ($0.GetBankAccountsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetBankAccountsResponse.fromBuffer(value));
  static final _$handleRequisition = $grpc.ClientMethod<$0.HandleRequisitionRequest, $0.HandleRequisitionResponse>(
      '/BankingService/HandleRequisition',
      ($0.HandleRequisitionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.HandleRequisitionResponse.fromBuffer(value));

  BankingServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetBanksResponse> getBanks($0.GetBanksRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBanks, request, options: options);
  }

  $grpc.ResponseFuture<$0.CreateRequisitionResponse> createRequisition($0.CreateRequisitionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createRequisition, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetTransactionsResponse> getTransactions($0.GetTransactionsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTransactions, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetBankAccountsResponse> getBankAccounts($0.GetBankAccountsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBankAccounts, request, options: options);
  }

  $grpc.ResponseFuture<$0.HandleRequisitionResponse> handleRequisition($0.HandleRequisitionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$handleRequisition, request, options: options);
  }
}

@$pb.GrpcServiceName('BankingService')
abstract class BankingServiceBase extends $grpc.Service {
  $core.String get $name => 'BankingService';

  BankingServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetBanksRequest, $0.GetBanksResponse>(
        'GetBanks',
        getBanks_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetBanksRequest.fromBuffer(value),
        ($0.GetBanksResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateRequisitionRequest, $0.CreateRequisitionResponse>(
        'CreateRequisition',
        createRequisition_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CreateRequisitionRequest.fromBuffer(value),
        ($0.CreateRequisitionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetTransactionsRequest, $0.GetTransactionsResponse>(
        'GetTransactions',
        getTransactions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetTransactionsRequest.fromBuffer(value),
        ($0.GetTransactionsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetBankAccountsRequest, $0.GetBankAccountsResponse>(
        'GetBankAccounts',
        getBankAccounts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetBankAccountsRequest.fromBuffer(value),
        ($0.GetBankAccountsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.HandleRequisitionRequest, $0.HandleRequisitionResponse>(
        'HandleRequisition',
        handleRequisition_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.HandleRequisitionRequest.fromBuffer(value),
        ($0.HandleRequisitionResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetBanksResponse> getBanks_Pre($grpc.ServiceCall call, $async.Future<$0.GetBanksRequest> request) async {
    return getBanks(call, await request);
  }

  $async.Future<$0.CreateRequisitionResponse> createRequisition_Pre($grpc.ServiceCall call, $async.Future<$0.CreateRequisitionRequest> request) async {
    return createRequisition(call, await request);
  }

  $async.Future<$0.GetTransactionsResponse> getTransactions_Pre($grpc.ServiceCall call, $async.Future<$0.GetTransactionsRequest> request) async {
    return getTransactions(call, await request);
  }

  $async.Future<$0.GetBankAccountsResponse> getBankAccounts_Pre($grpc.ServiceCall call, $async.Future<$0.GetBankAccountsRequest> request) async {
    return getBankAccounts(call, await request);
  }

  $async.Future<$0.HandleRequisitionResponse> handleRequisition_Pre($grpc.ServiceCall call, $async.Future<$0.HandleRequisitionRequest> request) async {
    return handleRequisition(call, await request);
  }

  $async.Future<$0.GetBanksResponse> getBanks($grpc.ServiceCall call, $0.GetBanksRequest request);
  $async.Future<$0.CreateRequisitionResponse> createRequisition($grpc.ServiceCall call, $0.CreateRequisitionRequest request);
  $async.Future<$0.GetTransactionsResponse> getTransactions($grpc.ServiceCall call, $0.GetTransactionsRequest request);
  $async.Future<$0.GetBankAccountsResponse> getBankAccounts($grpc.ServiceCall call, $0.GetBankAccountsRequest request);
  $async.Future<$0.HandleRequisitionResponse> handleRequisition($grpc.ServiceCall call, $0.HandleRequisitionRequest request);
}
@$pb.GrpcServiceName('UserService')
class UserServiceClient extends $grpc.Client {
  static final _$registerUnverifiedUser = $grpc.ClientMethod<$1.RegisterUnverifiedUserRequest, $1.RegisterUnverifiedUserResponse>(
      '/UserService/RegisterUnverifiedUser',
      ($1.RegisterUnverifiedUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.RegisterUnverifiedUserResponse.fromBuffer(value));
  static final _$linkUser = $grpc.ClientMethod<$1.LinkUserRequest, $1.LinkUserResponse>(
      '/UserService/LinkUser',
      ($1.LinkUserRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.LinkUserResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$1.RegisterUnverifiedUserResponse> registerUnverifiedUser($1.RegisterUnverifiedUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$registerUnverifiedUser, request, options: options);
  }

  $grpc.ResponseFuture<$1.LinkUserResponse> linkUser($1.LinkUserRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$linkUser, request, options: options);
  }
}

@$pb.GrpcServiceName('UserService')
abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.RegisterUnverifiedUserRequest, $1.RegisterUnverifiedUserResponse>(
        'RegisterUnverifiedUser',
        registerUnverifiedUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.RegisterUnverifiedUserRequest.fromBuffer(value),
        ($1.RegisterUnverifiedUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.LinkUserRequest, $1.LinkUserResponse>(
        'LinkUser',
        linkUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.LinkUserRequest.fromBuffer(value),
        ($1.LinkUserResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.RegisterUnverifiedUserResponse> registerUnverifiedUser_Pre($grpc.ServiceCall call, $async.Future<$1.RegisterUnverifiedUserRequest> request) async {
    return registerUnverifiedUser(call, await request);
  }

  $async.Future<$1.LinkUserResponse> linkUser_Pre($grpc.ServiceCall call, $async.Future<$1.LinkUserRequest> request) async {
    return linkUser(call, await request);
  }

  $async.Future<$1.RegisterUnverifiedUserResponse> registerUnverifiedUser($grpc.ServiceCall call, $1.RegisterUnverifiedUserRequest request);
  $async.Future<$1.LinkUserResponse> linkUser($grpc.ServiceCall call, $1.LinkUserRequest request);
}