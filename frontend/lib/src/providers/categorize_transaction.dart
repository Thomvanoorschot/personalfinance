import 'dart:io';

import 'package:frontend/generated/proto/budgeting.pb.dart';
import 'package:frontend/generated/proto/user.pb.dart';
import 'package:frontend/src/clients/budgeting_client.dart';
import 'package:frontend/src/clients/grpc_client.dart';
import 'package:frontend/src/models/transaction/categorize_transaction_model.dart';
import 'package:frontend/src/models/user/user_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'categorize_transaction.g.dart';

@riverpod
class CategorizeTransaction extends _$CategorizeTransaction {
  @override
  FutureOr<CategorizeTransactionModel> build() async {
    return getUncategorizedTransaction();
  }

  Future<CategorizeTransactionModel> getUncategorizedTransaction() async {
    final getUncategorizedTransactionResponse = await ref
        .read(budgetingServiceProvider)
        .getUncategorizedTransaction(GetUncategorizedTransactionRequest());
    final toBeCategorizedList = getUncategorizedTransactionResponse
        .matchingTransactions
        .map((x) => x.id)
        .toList(growable: true);
    toBeCategorizedList.add(getUncategorizedTransactionResponse.id);
    ref.keepAlive();
    return CategorizeTransactionModel(
      uncategorizedTransaction: getUncategorizedTransactionResponse,
      toBeCategorizedTransactionIds: toBeCategorizedList,
    );
  }

  void toggle(String transactionId) {
    update((data) {
      List<String> newList;
      if(data.toBeCategorizedTransactionIds.any((x) => x == transactionId)){
        newList = List<String>.from(data.toBeCategorizedTransactionIds.where((x) => x != transactionId));
      } else {
        newList = [...data.toBeCategorizedTransactionIds, transactionId];
      }
      return data.copyWith(toBeCategorizedTransactionIds: newList);
    });
  }
}
