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
  const SimilarTransactions({required this.model, super.key});

  final CategorizeTransactionModel model;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categorizeTransactionNotifier = ref.read(categorizeTransactionProvider.notifier);

    return model.uncategorizedTransaction.matchingTransactions.isNotEmpty
        ? SliverList.builder(
            itemCount: model.uncategorizedTransaction.matchingTransactions.length + 1,
            itemBuilder: (context, index) {
              if (index == 0) {
                return const Text(
                  "Similar transactions",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                );
              }
              return CheckboxListTile(
                visualDensity: VisualDensity.compact,
                contentPadding: EdgeInsets.zero,
                activeColor: Colors.white,
                checkColor: Theme.of(context).colorScheme.primary,
                tileColor: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
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
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    epochToDateString(model.uncategorizedTransaction.matchingTransactions[index - 1].date),
                    style: const TextStyle(
                      color: Colors.white,
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
