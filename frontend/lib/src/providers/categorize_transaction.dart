import 'package:frontend/generated/proto/budgeting.pb.dart';
import 'package:frontend/src/clients/grpc_client.dart';
import 'package:frontend/src/models/transaction/categorize_transaction_model.dart';
import 'package:frontend/src/providers/repayment.dart';
import 'package:frontend/src/providers/transactions.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'categorize_transaction.g.dart';

@riverpod
class CategorizeTransaction extends _$CategorizeTransaction {
  @override
  FutureOr<CategorizeTransactionModel> build() async {
    ref.keepAlive();
    return getUncategorizedTransaction();
  }

  Future<CategorizeTransactionModel> getUncategorizedTransaction({String? transactionId}) async {
    final getUncategorizedTransactionResponse =
        await ref.read(budgetingServiceProvider).getUncategorizedTransaction(GetUncategorizedTransactionRequest(
              userId: "",
              transactionId: transactionId,
            ));
    final toBeCategorizedList = getUncategorizedTransactionResponse.matchingTransactions.map((x) => x.id).toList(growable: true);
    toBeCategorizedList.add(getUncategorizedTransactionResponse.id);
    ref.keepAlive();
    return CategorizeTransactionModel(
      uncategorizedTransaction: getUncategorizedTransactionResponse,
      toBeCategorizedTransactionIds: toBeCategorizedList,
    );
  }

  Future<void> getSpecificTransaction(String transactionId) async {
    final transactionModel = await getUncategorizedTransaction(transactionId: transactionId);
    update((data) {
      return transactionModel;
    });
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
      final isRepayment = ref.read(repaymentProvider).isRepayment;

      final newToBeCategorizedTransaction =
          await ref.read(budgetingServiceProvider).categorizeTransactionAndContinue(CategorizeTransactionAndContinueRequest(
                userId: "",
                categoryId: isRepayment ? null : data.selectedTransactionCategory!.id,
                transactionIds: isRepayment ? List.from({data.uncategorizedTransaction.id}) : data.toBeCategorizedTransactionIds,
                primaryTransactionId: data.uncategorizedTransaction.id,
                associatedTransactionId: ref.read(repaymentProvider).selectedTransactionId,
              ));

      final toBeCategorizedList = newToBeCategorizedTransaction.matchingTransactions.map((x) => x.id).toList(growable: true);
      toBeCategorizedList.add(newToBeCategorizedTransaction.id);
      ref.keepAlive();

      ref.read(transactionsProvider.notifier).updateTransactionCategory(data.toBeCategorizedTransactionIds,
          data.selectedTransactionCategoryGroup?.slug, data.selectedTransactionCategory?.slug);
      ref.invalidate(repaymentProvider);
      return data.copyWith(
        uncategorizedTransaction: newToBeCategorizedTransaction,
        toBeCategorizedTransactionIds: toBeCategorizedList,
        selectedTransactionCategoryGroup: null,
        selectedTransactionCategory: null,
      );
    });
  }
}
