import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/generated/proto/budgeting.pb.dart';
import 'package:frontend/src/providers/transactions.dart';
import 'package:frontend/src/utils/date_utils.dart';
import 'package:frontend/src/widgets/budgeting/transaction_card.dart';
import 'package:frontend/src/widgets/shimmers/transaction_card_shimmer.dart';

class TransactionList extends ConsumerWidget {
  const TransactionList({required this.txResp, super.key});

  final GetTransactionsResponse txResp;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transactionsNotifier = ref.read(transactionsProvider.notifier);

    return SliverList.builder(
      itemCount: txResp.totalCount.toInt(),
      itemBuilder: (context, index) {
        if (index < txResp.transactions.length) {
          final transaction = txResp.transactions[index];
          final formattedDate = epochToDateString(transaction.date);
          if (index == 0 || formattedDate != epochToDateString(txResp.transactions[index - 1].date)) {
            return Column(
              children: [
                Text(
                  formattedDate,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold
                  ),
                ),
                TransactionCard(
                  transaction: transaction,
                ),
              ],
            );
          }
          return TransactionCard(
            transaction: transaction,
          );
        } else {
          transactionsNotifier.getTransactions();
          return const TransactionCardShimmer();
        }
      },
    );
  }
}
