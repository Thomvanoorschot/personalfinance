import 'package:frontend/generated/proto/banking.pb.dart';
import 'package:frontend/generated/proto/budgeting.pb.dart';
import 'package:frontend/src/clients/grpc_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'banking_client.g.dart';

// TODO Remove these
@riverpod
Future<GetBanksResponse> getBanks(GetBanksRef ref,
    {required GetBanksRequest req}) async {
  return ref.read(bankingServiceProvider).getBanks(req);
}

@riverpod
Future<CreateRequisitionResponse> createRequisition(CreateRequisitionRef ref,
    {required CreateRequisitionRequest req}) async {
  return ref.read(bankingServiceProvider).createRequisition(req);
}

@riverpod
Future<GetBankAccountsResponse> getBankAccounts(GetBankAccountsRef ref,
    {required GetBankAccountsRequest req}) async {
  return ref.read(bankingServiceProvider).getBankAccounts(req);
}

@riverpod
Future<GetBalancesPerDayResponse> getBalancesPerDay(GetBalancesPerDayRef ref,
    {required GetBalancesPerDayRequest req}) async {
  return ref.read(bankingServiceProvider).getBalancesPerDay(req);
}
