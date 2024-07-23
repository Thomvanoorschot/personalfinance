import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/generated/proto/banking.pb.dart';
import 'package:frontend/generated/proto/budgeting.pb.dart';
import 'package:frontend/src/clients/banking_client.dart';
import 'package:frontend/src/clients/budgeting_client.dart';
import 'package:frontend/src/widgets/banking/bank_accounts.dart';
import 'package:frontend/src/widgets/budgeting/transaction_card.dart';
import 'package:frontend/src/widgets/budgeting/transaction_card_shimmer.dart';
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
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(getTransactionsProvider);
          ref.invalidate(getBankAccountsProvider);
        },
        child: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Bank accounts"),
                      TextButton(
                        style: TextButton.styleFrom(
                          overlayColor: Colors.grey,
                          textStyle:
                              const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        onPressed: () async {
                          context.go("/transactions/getBanks");
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
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.2,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: BankAccounts(),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: OverflowBar(
                alignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Hero(
                    tag: "categorize",
                    child: TextButton( child: const Text('Categorize'), onPressed: () {
                      context.go("/transactions/categorize");
                    }),
                  ),
                  TextButton( child: const Text('Button 2'), onPressed: () {}),
                  TextButton( child: const Text('Button 3'), onPressed: () {}),
                ],
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
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
            )
          ],
        ),
      ),
    );
  }
}
