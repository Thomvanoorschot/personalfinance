import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/generated/proto/banking.pb.dart';
import 'package:frontend/src/clients/banking_client.dart';
import 'package:frontend/src/widgets/banking/bank_accounts.dart';
import 'package:frontend/src/widgets/banking/transaction_card.dart';
import 'package:frontend/src/widgets/banking/transaction_card_shimmer.dart';
import 'package:go_router/go_router.dart';
import 'package:fixnum/fixnum.dart' as fixnum;

class TransactionsScreen extends ConsumerWidget {
  const TransactionsScreen({super.key});

  // TODO Decrease amount
  static const _pageSize = 50;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: const Text("Transactions"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Bank accounts"),
              TextButton(
                style: TextButton.styleFrom(
                  overlayColor: Colors.grey,
                  textStyle: const TextStyle(fontWeight: FontWeight.bold),
                ),
                onPressed: () async {
                  context.go("/transactions/getBanks");
                  // await _showBanksModalSheet(context);
                },
                child: const Text(
                  "ADD NEW +",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              )
            ],
          ),
          const Flexible(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: BankAccounts(),
            ),
          ),
          Flexible(
            flex: 4,
            child: RefreshIndicator(
              onRefresh: () async {
                ref.invalidate(getTransactionsProvider);
                return ref.read(
                  getTransactionsProvider(
                    req: GetTransactionsRequest(
                      limit: fixnum.Int64(_pageSize),
                      offset: fixnum.Int64(0),
                    ),
                  ),
                );
              },
              child: ListView.builder(
                itemBuilder: (context, index) {
                  final page = index ~/ _pageSize;
                  final indexInPage = index % _pageSize;

                  AsyncValue<GetTransactionsResponse> transactionsResponse =
                      ref.watch(
                    getTransactionsProvider(
                      req: GetTransactionsRequest(
                        limit: fixnum.Int64(_pageSize),
                        offset: fixnum.Int64(page * _pageSize),
                      ),
                    ),
                  );

                  return transactionsResponse.when(
                    error: (err, stack) => Text(err.toString()),
                    loading: () => const TransactionCardShimmer(),
                    data: (resp) {
                      if (indexInPage >= resp.transactions.length) {
                        return null;
                      }

                      final transaction = resp.transactions[indexInPage];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TransactionCard(
                          transaction: transaction,
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
