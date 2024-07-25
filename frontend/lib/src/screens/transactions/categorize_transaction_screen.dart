import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frontend/generated/proto/banking.pb.dart';
import 'package:frontend/generated/proto/budgeting.pb.dart';
import 'package:frontend/src/clients/budgeting_client.dart';
import 'package:frontend/src/providers/categorize_transaction.dart';
import 'package:frontend/src/utils/date_utils.dart';
import 'package:frontend/src/widgets/budgeting/transaction_categories_overview.dart';
import 'package:frontend/src/widgets/card/custom_card.dart';
import 'package:go_router/go_router.dart';
import 'package:haptic_feedback/haptic_feedback.dart';
import 'package:intl/intl.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class CategorizeTransactionScreen extends ConsumerWidget {
  const CategorizeTransactionScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getUncategorizedTransactionResponse = ref.watch(categorizeTransactionProvider);
    final categorizeTransaction = ref.watch(categorizeTransactionProvider);

    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
      child: Material(
        borderRadius: BorderRadius.circular(16),
        color: Theme.of(context).colorScheme.primaryContainer,
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
                    child: CustomScrollView(
                      slivers: [
                        SliverToBoxAdapter(
                          child: Column(
                            children: [
                              Text(resp.uncategorizedTransaction.partyName),
                              Text(resp.uncategorizedTransaction.transactionAmount.toStringAsFixed(2)),
                              const TransactionCategoriesOverview(),
                              if (resp.uncategorizedTransaction.matchingTransactions.length > 1)
                                const Text("We found similar transactions, are these in the same category?"),
                            ],
                          ),
                        ),
                        SliverList(
                          delegate: SliverChildBuilderDelegate(
                            childCount: resp.uncategorizedTransaction.matchingTransactions.length,
                            (context, index) {
                              return CheckboxListTile(
                                visualDensity: VisualDensity.compact,
                                value: resp.toBeCategorizedTransactionIds.any(
                                  (x) => x == resp.uncategorizedTransaction.matchingTransactions[index].id,
                                ),
                                onChanged: (bool? value) {
                                  ref.read(categorizeTransactionProvider.notifier).toggle(
                                        resp.uncategorizedTransaction.matchingTransactions[index].id,
                                      );
                                },
                                title: Text(resp.uncategorizedTransaction.matchingTransactions[index].transactionAmount
                                    .toStringAsFixed(2)),
                                subtitle: Text(
                                  epochToDateString(resp.uncategorizedTransaction.matchingTransactions[index].date),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
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
                            onPressed: categorizeTransaction.value?.selectedTransactionCategory != null
                                ? () async {
                                    await ref
                                        .read(categorizeTransactionProvider.notifier)
                                        .linkTransactionCategoryToTransactions();
                                    Haptics.vibrate(HapticsType.success);
                                  }
                                : null,
                            child: const Icon(Icons.done),
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
