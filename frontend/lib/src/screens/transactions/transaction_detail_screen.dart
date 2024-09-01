import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/src/providers/transaction_details.dart';
import 'package:frontend/src/utils/date_utils.dart';

class TransactionDetailScreen extends ConsumerWidget {
  const TransactionDetailScreen({required this.transactionId, super.key});

  final String transactionId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transactionDetails = ref.watch(transactionDetailsProvider(transactionId: transactionId));

    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, top: 8),
      child: Material(
        borderRadius: BorderRadius.circular(16),
        color: Theme.of(context).colorScheme.surface,
        child: transactionDetails.when(
          loading: () => const SizedBox(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
          error: (err, stack) => Text('error: $err'),
          data: (resp) {
            final formattedDate = epochToDateString(resp.date);

            return Column(
              children: [
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          blurStyle: BlurStyle.outer,
                          blurRadius: 3,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Transaction date",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Flexible(child: Text(formattedDate)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Counter party name:",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Flexible(child: Text(resp.partyName)),
                          ],
                        ),
                        if (resp.partyIban.isNotEmpty)
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Counter party IBAN:",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Flexible(child: Text(resp.partyIban)),
                            ],
                          ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Transaction amount:",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "€${resp.transactionAmount.toStringAsFixed(2)}",
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "New balance:",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "€${resp.balanceAfterTransaction.toStringAsFixed(2)}",
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text(
                              "Description:",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              resp.description,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
