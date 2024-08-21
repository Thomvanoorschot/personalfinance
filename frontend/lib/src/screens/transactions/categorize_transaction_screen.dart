import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/src/providers/categorize_transaction.dart';
import 'package:frontend/src/providers/repayment.dart' as rpp;
import 'package:frontend/src/widgets/budgeting/categorize_transaction_info.dart';
import 'package:frontend/src/widgets/budgeting/repayment.dart';
import 'package:frontend/src/widgets/budgeting/similar_transactions.dart';
import 'package:frontend/src/widgets/budgeting/transaction_categories_overview.dart';
import 'package:haptic_feedback/haptic_feedback.dart';

class CategorizeTransactionScreen extends ConsumerWidget {
  const CategorizeTransactionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getUncategorizedTransactionResponse = ref.watch(categorizeTransactionProvider);
    final categorizeTransaction = ref.watch(categorizeTransactionProvider);
    final repayment = ref.watch(rpp.repaymentProvider);

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
      child: Material(
        borderRadius: BorderRadius.circular(16),
        color: Theme.of(context).colorScheme.surface,
        child: getUncategorizedTransactionResponse.when(
          loading: () => const SizedBox(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
          error: (err, stack) => Text('error: $err'),
          data: (resp) {
            return Center(
              child: Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: CustomScrollView(
                        slivers: [
                          SliverToBoxAdapter(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                CategorizeTransactionInfo(
                                  partyName: resp.uncategorizedTransaction.partyName,
                                  description: resp.uncategorizedTransaction.description,
                                  transactionAmount: resp.uncategorizedTransaction.transactionAmount,
                                ),
                                const Repayment(),
                                if (!repayment.isRepayment) const TransactionCategoriesOverview(),
                              ],
                            ),
                          ),
                          if (!repayment.isRepayment)
                            SimilarTransactions(
                              model: resp,
                            )
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            child: const Icon(Icons.navigate_next_rounded),
                            onPressed: () {
                              // webViewController?.goForward();
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                            onPressed: categorizeTransaction.value?.selectedTransactionCategory != null ||
                                    repayment.selectedTransactionId != null
                                ? () async {
                                    await ref
                                        .read(categorizeTransactionProvider.notifier)
                                        .linkTransactionCategoryToTransactions();
                                    Haptics.vibrate(HapticsType.success);
                                  }
                                : null,
                            child: const Icon(Icons.done,),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
