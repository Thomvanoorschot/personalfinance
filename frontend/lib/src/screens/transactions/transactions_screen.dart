import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/generated/proto/banking.pb.dart';
import 'package:frontend/src/clients/banking_client.dart';
import 'package:frontend/src/providers/transactions.dart';
import 'package:frontend/src/utils/date_utils.dart';
import 'package:frontend/src/widgets/banking/balances_per_day_chart.dart';
import 'package:frontend/src/widgets/banking/bank_accounts.dart';
import 'package:frontend/src/widgets/banking/categorized_transactions_chart.dart';
import 'package:frontend/src/widgets/banking/time_range_selector.dart';
import 'package:frontend/src/widgets/budgeting/transaction_card.dart';
import 'package:frontend/src/widgets/budgeting/transaction_card_shimmer.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<TransactionsScreenState> transactionScreenKey = GlobalKey<TransactionsScreenState>();

class TransactionsScreen extends ConsumerStatefulWidget {
  TransactionsScreen({Key? key}) : super(key: transactionScreenKey);

  @override
  TransactionsScreenState createState() => TransactionsScreenState();
}

class TransactionsScreenState extends ConsumerState<TransactionsScreen> {
  final ScrollController _scrollController = ScrollController();

  // final GlobalKey _key = GlobalKey();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void scrollToTop() {
    if (_scrollController.hasClients) {
      _scrollController.animateTo(
        0,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final transactionsResponse = ref.watch(transactionsProvider);

    final balancesResponse = ref.watch(
      getBalancesPerDayProvider(
        req: GetBalancesPerDayRequest(
          start: dateTimeToProtoTimestamp(DateTime.now().subtract(const Duration(days: 60))),
          end: dateTimeToProtoTimestamp(DateTime.now()),
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: const Text("Transactions"),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.read(transactionsProvider.notifier).getTransactions(reset: true);
          ref.invalidate(getBankAccountsProvider);
        },
        child: CustomScrollView(
          controller: _scrollController,
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
                          textStyle: const TextStyle(fontWeight: FontWeight.bold),
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
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.2,
                child: const BalancesPerDayChart(),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height * 0.2,
                child: const CategorizedTransactionsChart(),
              ),
            ),
            SliverToBoxAdapter(
              child: TimeRangeSelector(),
            ),
            SliverToBoxAdapter(
              child: OverflowBar(
                alignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Hero(
                    // key: _key,
                    tag: "categorize",
                    child: TextButton(
                        child: const Text('Categorize'),
                        onPressed: () {
                          context.go("/transactions/categorize");
                        }),
                  ),
                  TextButton(child: const Text('Button 2'), onPressed: () {}),
                  TextButton(child: const Text('Button 3'), onPressed: () {}),
                ],
              ),
            ),
            SliverList.builder(
              itemCount: ((transactionsResponse.value?.totalCount.toInt() ?? 0) == 0
                  ? 20
                  : transactionsResponse.value!.totalCount.toInt()),
              itemBuilder: (context, index) {
                return transactionsResponse.when(
                  error: (err, stack) => Text(err.toString()),
                  loading: () => const TransactionCardShimmer(),
                  data: (resp) {
                    if (index < resp.transactions.length) {
                      final transaction = resp.transactions[index];

                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TransactionCard(
                          transaction: transaction,
                        ),
                      );
                    } else {
                      ref.read(transactionsProvider.notifier).getTransactions();
                      return const TransactionCardShimmer();
                    }
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
