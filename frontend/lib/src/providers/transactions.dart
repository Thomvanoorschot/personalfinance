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
import 'package:fixnum/fixnum.dart' as fixnum;

part 'transactions.g.dart';

@riverpod
class Transactions extends _$Transactions {
  int _page = 0;
  bool _isFetching = false;
  static const _pageSize = 50;

  @override
  FutureOr<GetTransactionsResponse> build() async {
    final getTransactionsResponse = await ref.read(budgetingServiceProvider).getTransactions(GetTransactionsRequest(
          userId: "",
          limit: fixnum.Int64(_pageSize),
          offset: fixnum.Int64(_page * _pageSize),
        ));

    final resp = GetTransactionsResponse(
      transactions: getTransactionsResponse.transactions,
      totalCount: getTransactionsResponse.totalCount,
    );
    resp.freeze();
    return resp;
  }

  Future getTransactions({bool reset = false}) async {
    if (reset) {
      _page = 0;
    }
    if (_isFetching) return;

    _isFetching = true;

    final getTransactionsResponse = await ref.read(budgetingServiceProvider).getTransactions(GetTransactionsRequest(
          userId: "",
          limit: fixnum.Int64(_pageSize),
          offset: fixnum.Int64(_page * _pageSize),
        ));

    await update((data) {
      if (reset) {
        return getTransactionsResponse;
      }
      final newList = [...data.transactions, ...getTransactionsResponse.transactions];
      final newResp = GetTransactionsResponse(transactions: newList, totalCount: getTransactionsResponse.totalCount);
      newResp.freeze();
      return newResp;
    });

    _page++;
    _isFetching = false;
  }

  void updateTransactionCategory(List<String> transactionIds, transactionCategoryGroupSlug, transactionCategorySlug) {
    update((data) {
      List<TransactionResponse> newList = List.empty(growable: true);
      for (var x in data.transactions) {
        TransactionResponse toBeAddedTx;
        toBeAddedTx = x;
        for (var txId in transactionIds) {
          if (x.id == txId) {
            x.freeze();
            final tcgl = x.transactionCategoryGroupSlug.rebuild((u) => u..value = transactionCategoryGroupSlug ?? 'repayments');
            final tcs = x.transactionCategorySlug.rebuild((u) => u..value = transactionCategorySlug ?? 'repayments');
            TransactionResponse updatedValue = x.rebuild(
              (u) => u
                ..transactionCategoryGroupSlug = tcgl
                ..transactionCategorySlug = tcs,
            );
            toBeAddedTx = updatedValue;
            continue;
          }
        }
        newList.add(toBeAddedTx);
      }
      return GetTransactionsResponse(transactions: newList, totalCount: data.totalCount);
    });
  }
}
