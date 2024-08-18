import 'package:frontend/generated/proto/banking.pb.dart';
import 'package:frontend/generated/proto/budgeting.pb.dart';
import 'package:frontend/src/clients/grpc_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'budgeting_client.g.dart';

// TODO Remove these
@riverpod
Future<GetTransactionsResponse> getTransactions(GetTransactionsRef ref,
    {required GetTransactionsRequest req}) async {
  return ref.read(budgetingServiceProvider).getTransactions(req);
}
@riverpod
Future<GetTransactionCategoryGroupsResponse> getTransactionCategoryGroups(GetTransactionCategoryGroupsRef ref,
    {required GetTransactionCategoryGroupsRequest req}) async {
  return ref.read(budgetingServiceProvider).getTransactionCategoryGroups(req);
}