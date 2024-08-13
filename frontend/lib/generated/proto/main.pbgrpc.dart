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
import 'budgeting.pb.dart' as $2;
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
  static final _$getBankAccounts = $grpc.ClientMethod<$0.GetBankAccountsRequest, $0.GetBankAccountsResponse>(
      '/BankingService/GetBankAccounts',
      ($0.GetBankAccountsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetBankAccountsResponse.fromBuffer(value));
  static final _$getBalancesPerDay = $grpc.ClientMethod<$0.GetBalancesPerDayRequest, $0.GetBalancesPerDayResponse>(
      '/BankingService/GetBalancesPerDay',
      ($0.GetBalancesPerDayRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.GetBalancesPerDayResponse.fromBuffer(value));
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

  $grpc.ResponseFuture<$0.GetBankAccountsResponse> getBankAccounts($0.GetBankAccountsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBankAccounts, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetBalancesPerDayResponse> getBalancesPerDay($0.GetBalancesPerDayRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBalancesPerDay, request, options: options);
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
    $addMethod($grpc.ServiceMethod<$0.GetBankAccountsRequest, $0.GetBankAccountsResponse>(
        'GetBankAccounts',
        getBankAccounts_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetBankAccountsRequest.fromBuffer(value),
        ($0.GetBankAccountsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetBalancesPerDayRequest, $0.GetBalancesPerDayResponse>(
        'GetBalancesPerDay',
        getBalancesPerDay_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetBalancesPerDayRequest.fromBuffer(value),
        ($0.GetBalancesPerDayResponse value) => value.writeToBuffer()));
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

  $async.Future<$0.GetBankAccountsResponse> getBankAccounts_Pre($grpc.ServiceCall call, $async.Future<$0.GetBankAccountsRequest> request) async {
    return getBankAccounts(call, await request);
  }

  $async.Future<$0.GetBalancesPerDayResponse> getBalancesPerDay_Pre($grpc.ServiceCall call, $async.Future<$0.GetBalancesPerDayRequest> request) async {
    return getBalancesPerDay(call, await request);
  }

  $async.Future<$0.HandleRequisitionResponse> handleRequisition_Pre($grpc.ServiceCall call, $async.Future<$0.HandleRequisitionRequest> request) async {
    return handleRequisition(call, await request);
  }

  $async.Future<$0.GetBanksResponse> getBanks($grpc.ServiceCall call, $0.GetBanksRequest request);
  $async.Future<$0.CreateRequisitionResponse> createRequisition($grpc.ServiceCall call, $0.CreateRequisitionRequest request);
  $async.Future<$0.GetBankAccountsResponse> getBankAccounts($grpc.ServiceCall call, $0.GetBankAccountsRequest request);
  $async.Future<$0.GetBalancesPerDayResponse> getBalancesPerDay($grpc.ServiceCall call, $0.GetBalancesPerDayRequest request);
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
@$pb.GrpcServiceName('BudgetingService')
class BudgetingServiceClient extends $grpc.Client {
  static final _$getTransactionById = $grpc.ClientMethod<$2.GetTransactionByIdRequest, $2.TransactionResponse>(
      '/BudgetingService/GetTransactionById',
      ($2.GetTransactionByIdRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.TransactionResponse.fromBuffer(value));
  static final _$getTransactions = $grpc.ClientMethod<$2.GetTransactionsRequest, $2.GetTransactionsResponse>(
      '/BudgetingService/GetTransactions',
      ($2.GetTransactionsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.GetTransactionsResponse.fromBuffer(value));
  static final _$getUncategorizedTransaction = $grpc.ClientMethod<$2.GetUncategorizedTransactionRequest, $2.GetUncategorizedTransactionResponse>(
      '/BudgetingService/GetUncategorizedTransaction',
      ($2.GetUncategorizedTransactionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.GetUncategorizedTransactionResponse.fromBuffer(value));
  static final _$categorizeTransactionAndContinue = $grpc.ClientMethod<$2.CategorizeTransactionAndContinueRequest, $2.GetUncategorizedTransactionResponse>(
      '/BudgetingService/CategorizeTransactionAndContinue',
      ($2.CategorizeTransactionAndContinueRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.GetUncategorizedTransactionResponse.fromBuffer(value));
  static final _$getTransactionCategoryGroups = $grpc.ClientMethod<$2.GetTransactionCategoryGroupsRequest, $2.GetTransactionCategoryGroupsResponse>(
      '/BudgetingService/GetTransactionCategoryGroups',
      ($2.GetTransactionCategoryGroupsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.GetTransactionCategoryGroupsResponse.fromBuffer(value));
  static final _$getCategorizedTransactionResults = $grpc.ClientMethod<$2.GetCategorizedTransactionResultsRequest, $2.GetCategorizedTransactionResultsResponse>(
      '/BudgetingService/GetCategorizedTransactionResults',
      ($2.GetCategorizedTransactionResultsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.GetCategorizedTransactionResultsResponse.fromBuffer(value));
  static final _$getInAndOutgoingTransactionAmountsPerPeriod = $grpc.ClientMethod<$2.GetInAndOutgoingTransactionAmountsPerPeriodRequest, $2.GetInAndOutgoingTransactionAmountsPerPeriodResponse>(
      '/BudgetingService/GetInAndOutgoingTransactionAmountsPerPeriod',
      ($2.GetInAndOutgoingTransactionAmountsPerPeriodRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.GetInAndOutgoingTransactionAmountsPerPeriodResponse.fromBuffer(value));
  static final _$associateTransaction = $grpc.ClientMethod<$2.AssociateTransactionRequest, $2.AssociateTransactionResponse>(
      '/BudgetingService/AssociateTransaction',
      ($2.AssociateTransactionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.AssociateTransactionResponse.fromBuffer(value));
  static final _$getMinusTransactionsAroundDate = $grpc.ClientMethod<$2.GetMinusTransactionsAroundDateRequest, $2.GetMinusTransactionsAroundDateResponse>(
      '/BudgetingService/GetMinusTransactionsAroundDate',
      ($2.GetMinusTransactionsAroundDateRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $2.GetMinusTransactionsAroundDateResponse.fromBuffer(value));

  BudgetingServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$2.TransactionResponse> getTransactionById($2.GetTransactionByIdRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTransactionById, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetTransactionsResponse> getTransactions($2.GetTransactionsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTransactions, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetUncategorizedTransactionResponse> getUncategorizedTransaction($2.GetUncategorizedTransactionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUncategorizedTransaction, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetUncategorizedTransactionResponse> categorizeTransactionAndContinue($2.CategorizeTransactionAndContinueRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$categorizeTransactionAndContinue, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetTransactionCategoryGroupsResponse> getTransactionCategoryGroups($2.GetTransactionCategoryGroupsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTransactionCategoryGroups, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetCategorizedTransactionResultsResponse> getCategorizedTransactionResults($2.GetCategorizedTransactionResultsRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getCategorizedTransactionResults, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetInAndOutgoingTransactionAmountsPerPeriodResponse> getInAndOutgoingTransactionAmountsPerPeriod($2.GetInAndOutgoingTransactionAmountsPerPeriodRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getInAndOutgoingTransactionAmountsPerPeriod, request, options: options);
  }

  $grpc.ResponseFuture<$2.AssociateTransactionResponse> associateTransaction($2.AssociateTransactionRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$associateTransaction, request, options: options);
  }

  $grpc.ResponseFuture<$2.GetMinusTransactionsAroundDateResponse> getMinusTransactionsAroundDate($2.GetMinusTransactionsAroundDateRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getMinusTransactionsAroundDate, request, options: options);
  }
}

@$pb.GrpcServiceName('BudgetingService')
abstract class BudgetingServiceBase extends $grpc.Service {
  $core.String get $name => 'BudgetingService';

  BudgetingServiceBase() {
    $addMethod($grpc.ServiceMethod<$2.GetTransactionByIdRequest, $2.TransactionResponse>(
        'GetTransactionById',
        getTransactionById_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetTransactionByIdRequest.fromBuffer(value),
        ($2.TransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetTransactionsRequest, $2.GetTransactionsResponse>(
        'GetTransactions',
        getTransactions_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetTransactionsRequest.fromBuffer(value),
        ($2.GetTransactionsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetUncategorizedTransactionRequest, $2.GetUncategorizedTransactionResponse>(
        'GetUncategorizedTransaction',
        getUncategorizedTransaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetUncategorizedTransactionRequest.fromBuffer(value),
        ($2.GetUncategorizedTransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.CategorizeTransactionAndContinueRequest, $2.GetUncategorizedTransactionResponse>(
        'CategorizeTransactionAndContinue',
        categorizeTransactionAndContinue_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.CategorizeTransactionAndContinueRequest.fromBuffer(value),
        ($2.GetUncategorizedTransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetTransactionCategoryGroupsRequest, $2.GetTransactionCategoryGroupsResponse>(
        'GetTransactionCategoryGroups',
        getTransactionCategoryGroups_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetTransactionCategoryGroupsRequest.fromBuffer(value),
        ($2.GetTransactionCategoryGroupsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetCategorizedTransactionResultsRequest, $2.GetCategorizedTransactionResultsResponse>(
        'GetCategorizedTransactionResults',
        getCategorizedTransactionResults_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetCategorizedTransactionResultsRequest.fromBuffer(value),
        ($2.GetCategorizedTransactionResultsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetInAndOutgoingTransactionAmountsPerPeriodRequest, $2.GetInAndOutgoingTransactionAmountsPerPeriodResponse>(
        'GetInAndOutgoingTransactionAmountsPerPeriod',
        getInAndOutgoingTransactionAmountsPerPeriod_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetInAndOutgoingTransactionAmountsPerPeriodRequest.fromBuffer(value),
        ($2.GetInAndOutgoingTransactionAmountsPerPeriodResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.AssociateTransactionRequest, $2.AssociateTransactionResponse>(
        'AssociateTransaction',
        associateTransaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.AssociateTransactionRequest.fromBuffer(value),
        ($2.AssociateTransactionResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$2.GetMinusTransactionsAroundDateRequest, $2.GetMinusTransactionsAroundDateResponse>(
        'GetMinusTransactionsAroundDate',
        getMinusTransactionsAroundDate_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $2.GetMinusTransactionsAroundDateRequest.fromBuffer(value),
        ($2.GetMinusTransactionsAroundDateResponse value) => value.writeToBuffer()));
  }

  $async.Future<$2.TransactionResponse> getTransactionById_Pre($grpc.ServiceCall call, $async.Future<$2.GetTransactionByIdRequest> request) async {
    return getTransactionById(call, await request);
  }

  $async.Future<$2.GetTransactionsResponse> getTransactions_Pre($grpc.ServiceCall call, $async.Future<$2.GetTransactionsRequest> request) async {
    return getTransactions(call, await request);
  }

  $async.Future<$2.GetUncategorizedTransactionResponse> getUncategorizedTransaction_Pre($grpc.ServiceCall call, $async.Future<$2.GetUncategorizedTransactionRequest> request) async {
    return getUncategorizedTransaction(call, await request);
  }

  $async.Future<$2.GetUncategorizedTransactionResponse> categorizeTransactionAndContinue_Pre($grpc.ServiceCall call, $async.Future<$2.CategorizeTransactionAndContinueRequest> request) async {
    return categorizeTransactionAndContinue(call, await request);
  }

  $async.Future<$2.GetTransactionCategoryGroupsResponse> getTransactionCategoryGroups_Pre($grpc.ServiceCall call, $async.Future<$2.GetTransactionCategoryGroupsRequest> request) async {
    return getTransactionCategoryGroups(call, await request);
  }

  $async.Future<$2.GetCategorizedTransactionResultsResponse> getCategorizedTransactionResults_Pre($grpc.ServiceCall call, $async.Future<$2.GetCategorizedTransactionResultsRequest> request) async {
    return getCategorizedTransactionResults(call, await request);
  }

  $async.Future<$2.GetInAndOutgoingTransactionAmountsPerPeriodResponse> getInAndOutgoingTransactionAmountsPerPeriod_Pre($grpc.ServiceCall call, $async.Future<$2.GetInAndOutgoingTransactionAmountsPerPeriodRequest> request) async {
    return getInAndOutgoingTransactionAmountsPerPeriod(call, await request);
  }

  $async.Future<$2.AssociateTransactionResponse> associateTransaction_Pre($grpc.ServiceCall call, $async.Future<$2.AssociateTransactionRequest> request) async {
    return associateTransaction(call, await request);
  }

  $async.Future<$2.GetMinusTransactionsAroundDateResponse> getMinusTransactionsAroundDate_Pre($grpc.ServiceCall call, $async.Future<$2.GetMinusTransactionsAroundDateRequest> request) async {
    return getMinusTransactionsAroundDate(call, await request);
  }

  $async.Future<$2.TransactionResponse> getTransactionById($grpc.ServiceCall call, $2.GetTransactionByIdRequest request);
  $async.Future<$2.GetTransactionsResponse> getTransactions($grpc.ServiceCall call, $2.GetTransactionsRequest request);
  $async.Future<$2.GetUncategorizedTransactionResponse> getUncategorizedTransaction($grpc.ServiceCall call, $2.GetUncategorizedTransactionRequest request);
  $async.Future<$2.GetUncategorizedTransactionResponse> categorizeTransactionAndContinue($grpc.ServiceCall call, $2.CategorizeTransactionAndContinueRequest request);
  $async.Future<$2.GetTransactionCategoryGroupsResponse> getTransactionCategoryGroups($grpc.ServiceCall call, $2.GetTransactionCategoryGroupsRequest request);
  $async.Future<$2.GetCategorizedTransactionResultsResponse> getCategorizedTransactionResults($grpc.ServiceCall call, $2.GetCategorizedTransactionResultsRequest request);
  $async.Future<$2.GetInAndOutgoingTransactionAmountsPerPeriodResponse> getInAndOutgoingTransactionAmountsPerPeriod($grpc.ServiceCall call, $2.GetInAndOutgoingTransactionAmountsPerPeriodRequest request);
  $async.Future<$2.AssociateTransactionResponse> associateTransaction($grpc.ServiceCall call, $2.AssociateTransactionRequest request);
  $async.Future<$2.GetMinusTransactionsAroundDateResponse> getMinusTransactionsAroundDate($grpc.ServiceCall call, $2.GetMinusTransactionsAroundDateRequest request);
}
