import 'dart:io';

import 'package:frontend/generated/proto/budgeting.pb.dart';
import 'package:frontend/generated/proto/user.pb.dart';
import 'package:frontend/src/clients/budgeting_client.dart';
import 'package:frontend/src/clients/grpc_client.dart';
import 'package:frontend/src/models/transaction/categorize_transaction_model.dart';
import 'package:frontend/src/models/user/user_model.dart';
import 'package:protobuf/protobuf.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'transaction_category_groups.g.dart';

@riverpod
class TransactionCategoryGroups extends _$TransactionCategoryGroups {
  @override
  FutureOr<GetTransactionCategoryGroupsResponse> build() async {
    return getTransactionCategories();
  }

  Future<GetTransactionCategoryGroupsResponse> getTransactionCategories() async {
    final transactionCategories = await ref
        .read(budgetingServiceProvider)
        .getTransactionCategoryGroups(GetTransactionCategoryGroupsRequest());
    ref.keepAlive();
    transactionCategories.freeze();
    return transactionCategories;
  }

  void moveToFirst(int index) {
    update((data) {
      var rebuild = data.rebuild(
        (p0) {
         p0 = GetTransactionCategoryGroupsResponse(groups: moveToFirstUtil(p0.groups, index));
        },
      );
      rebuild.freeze();
      return rebuild;
    });
  }
}

List<TransactionCategoryGroupResponse> moveToFirstUtil(
    List<TransactionCategoryGroupResponse> list, int index) {
  if (index < 0 || index >= list.length) {
    throw RangeError('Index out of range');
  }

  // Remove the element at the specified index
  TransactionCategoryGroupResponse element = list.removeAt(index);

  // Insert the element at the first position
  list.insert(0, element);

  return list;
}
