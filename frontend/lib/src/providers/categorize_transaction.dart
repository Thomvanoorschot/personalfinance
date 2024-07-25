import 'dart:io';

import 'package:frontend/generated/proto/budgeting.pb.dart';
import 'package:frontend/generated/proto/user.pb.dart';
import 'package:frontend/src/clients/budgeting_client.dart';
import 'package:frontend/src/clients/grpc_client.dart';
import 'package:frontend/src/models/transaction/categorize_transaction_model.dart';
import 'package:frontend/src/models/user/user_model.dart';
import 'package:frontend/src/providers/transactions.dart';
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
    final getUncategorizedTransactionResponse =
        await ref.read(budgetingServiceProvider).getUncategorizedTransaction(GetUncategorizedTransactionRequest());
    final toBeCategorizedList = getUncategorizedTransactionResponse.matchingTransactions.map((x) => x.id).toList(growable: true);
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
      if (data.toBeCategorizedTransactionIds.any((x) => x == transactionId)) {
        newList = List<String>.from(data.toBeCategorizedTransactionIds.where((x) => x != transactionId));
      } else {
        newList = [...data.toBeCategorizedTransactionIds, transactionId];
      }
      return data.copyWith(toBeCategorizedTransactionIds: newList);
    });
  }

  void selectTransactionCategoryGroup(TransactionCategoryGroupResponse? transactionCategoryGroup) {
    update((data) {
      return data.copyWith(
        selectedTransactionCategoryGroup: transactionCategoryGroup,
        selectedTransactionCategory: null,
      );
    });
  }

  void selectTransactionCategory(TransactionCategoryResponse? transactionCategory) {
    update((data) {
      return data.copyWith(selectedTransactionCategory: transactionCategory);
    });
  }

  Future linkTransactionCategoryToTransactions() async {
    await update((data) async {
      if (data.selectedTransactionCategory == null) {
        return data;
      }

      final newToBeCategorizedTransaction =
          await ref.read(budgetingServiceProvider).categorizeTransactionAndContinue(CategorizeTransactionAndContinueRequest(
                userId: "",
                categoryId: data.selectedTransactionCategory!.id,
                transactionIds: data.toBeCategorizedTransactionIds,
              ));

      final toBeCategorizedList = newToBeCategorizedTransaction.matchingTransactions.map((x) => x.id).toList(growable: true);
      toBeCategorizedList.add(newToBeCategorizedTransaction.id);
      ref.keepAlive();

      ref.read(transactionsProvider.notifier).updateTransactionCategory(data.toBeCategorizedTransactionIds,
          data.selectedTransactionCategoryGroup?.slug, data.selectedTransactionCategory?.slug);

      return data.copyWith(
        uncategorizedTransaction: newToBeCategorizedTransaction,
        toBeCategorizedTransactionIds: toBeCategorizedList,
        selectedTransactionCategoryGroup: null,
        selectedTransactionCategory: null,
      );
    });
  }
}
