
import 'package:frontend/generated/proto/budgeting.pb.dart';
import 'package:frontend/src/clients/grpc_client.dart';
import 'package:frontend/src/models/transaction/repayment_model.dart';
import 'package:frontend/src/providers/categorize_transaction.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:fixnum/fixnum.dart' as $fixnum;

part 'repayment.g.dart';

@riverpod
class Repayment extends _$Repayment {
  @override
  RepaymentModel build() {
    return getRepayment();
  }

  RepaymentModel getRepayment() {
   return RepaymentModel(isRepayment: false);
  }

  Future toggleIsRepayment({String? transactionId}) async {
    if(!state.isRepayment) {
      // This means it's going from NOT a repayment to a repayment
      final minusTransactionsAroundDate =
      await ref.read(budgetingServiceProvider).getMinusTransactionsAroundDate(GetMinusTransactionsAroundDateRequest(
        userId: "",
        date: ref.read(categorizeTransactionProvider(transactionId: transactionId)).valueOrNull?.uncategorizedTransaction.date,
        nearestFutureLimit: $fixnum.Int64(10),
        nearestPastLimit: $fixnum.Int64(10),
      ));
      state = state.copyWith(isRepayment: !state.isRepayment, minusTransactionsAroundDate: minusTransactionsAroundDate, selectedTransactionId: null);
      return;
    }
    state = state.copyWith(isRepayment: !state.isRepayment, minusTransactionsAroundDate: null, selectedTransactionId: null);
  }

  Future selectRepayment(String repaymentId) async {
    if(state.selectedTransactionId == repaymentId) {
      state = state.copyWith(selectedTransactionId: null);
      return;
    }
    state = state.copyWith(selectedTransactionId: repaymentId);
  }
}
