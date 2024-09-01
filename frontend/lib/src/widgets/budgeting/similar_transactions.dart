import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/src/models/transaction/categorize_transaction_model.dart';
import 'package:frontend/src/providers/categorize_transaction.dart';
import 'package:frontend/src/providers/repayment.dart';
import 'package:frontend/src/utils/date_utils.dart';
import 'package:frontend/src/utils/size_config.dart';
import 'package:frontend/src/widgets/switch/labeled_switch.dart';

class SimilarTransactions extends ConsumerWidget {
  const SimilarTransactions({required this.model, this.transactionId, super.key});

  final CategorizeTransactionModel model;
  final String? transactionId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categorizeTransactionNotifier = ref.read(categorizeTransactionProvider(transactionId: transactionId).notifier);

    return model.uncategorizedTransaction.matchingTransactions.isNotEmpty
        ? SliverList.builder(
            itemCount: model.uncategorizedTransaction.matchingTransactions.length + 1,
            itemBuilder: (context, index) {
              if (index == 0) {
                return Text(
                  "Similar transactions",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  textAlign: TextAlign.center,
                );
              }
              return CheckboxListTile(
                visualDensity: VisualDensity.compact,
                contentPadding: EdgeInsets.zero,
                activeColor: Theme.of(context).colorScheme.primary,
                checkColor: Theme.of(context).colorScheme.onPrimary,
                value: model.toBeCategorizedTransactionIds.any(
                  (x) => x == model.uncategorizedTransaction.matchingTransactions[index - 1].id,
                ),
                onChanged: (bool? value) {
                  categorizeTransactionNotifier.toggle(
                    model.uncategorizedTransaction.matchingTransactions[index - 1].id,
                  );
                },
                title: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    model.uncategorizedTransaction.matchingTransactions[index - 1].transactionAmount.toStringAsFixed(2),
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    epochToDateString(model.uncategorizedTransaction.matchingTransactions[index - 1].date),
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              );
            },
          )
        : SliverToBoxAdapter(
            child: Container(),
          );
  }
}
