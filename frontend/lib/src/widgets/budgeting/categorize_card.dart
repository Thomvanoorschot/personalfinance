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
import 'package:intl/intl.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class CategorizeCard extends ConsumerWidget {
  const CategorizeCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getUncategorizedTransactionResponse =
        ref.watch(categorizeTransactionProvider);

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
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Text(resp.uncategorizedTransaction.partyName),
                  ),
                  SliverToBoxAdapter(
                    child: Text(
                      resp.uncategorizedTransaction.transactionAmount
                          .toStringAsFixed(2),
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: Text(
                      "We found similar transactions, are these in the same category?",
                    ),
                  ),
                  const SliverToBoxAdapter(
                      child: TransactionCategoriesOverview()),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      childCount: resp
                          .uncategorizedTransaction.matchingTransactions.length,
                      (context, index) {
                        return CheckboxListTile(
                          value: resp.toBeCategorizedTransactionIds.any(
                            (x) =>
                                x ==
                                resp.uncategorizedTransaction
                                    .matchingTransactions[index].id,
                          ),
                          onChanged: (bool? value) {
                            ref
                                .read(categorizeTransactionProvider.notifier)
                                .toggle(resp.uncategorizedTransaction
                                    .matchingTransactions[index].id);
                          },
                          title: Text(
                            epochToDateString(resp.uncategorizedTransaction
                                .matchingTransactions[index].date),
                          ),
                          // subtitle: const Text('Supporting text'),
                        );
                      },
                    ),
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
