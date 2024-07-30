import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/generated/proto/banking.pb.dart';
import 'package:frontend/generated/proto/budgeting.pb.dart';
import 'package:frontend/src/clients/banking_client.dart';
import 'package:frontend/src/clients/budgeting_client.dart';
import 'package:frontend/src/providers/transactions.dart';
import 'package:frontend/src/utils/date_utils.dart';
import 'package:frontend/src/widgets/banking/bank_accounts.dart';
import 'package:frontend/src/widgets/budgeting/transaction_card.dart';
import 'package:frontend/src/widgets/budgeting/transaction_card_shimmer.dart';
import 'package:go_router/go_router.dart';
import 'package:fixnum/fixnum.dart' as fixnum;
import 'package:haptic_feedback/haptic_feedback.dart';
import 'package:collection/collection.dart'; // Add collection package for groupBy function

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
                child: balancesResponse.when(
                  error: (err, stack) => Text(err.toString()),
                  // todo Shimmer
                  loading: () => const CircularProgressIndicator(),
                  data: (resp) {
                    final flSpots = resp.balances.map((x) {
                      return FlSpot(x.date.seconds.toDouble(), x.balance.roundToDouble());
                    }).toList();
                    return LineChart(
                      LineChartData(
                        minY: 0,
                        lineTouchData: LineTouchData(touchCallback: (event, response) {
                          // if (event is FlTapUpEvent) {
                          if (response != null && response.lineBarSpots != null) {
                            Haptics.vibrate(HapticsType.selection);
                            // }
                          }
                        }),
                        borderData: FlBorderData(
                          show: false,
                        ),
                        backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
                        titlesData: FlTitlesData(
                          leftTitles: const AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                          topTitles: const AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                          rightTitles: AxisTitles(
                            sideTitles:
                                SideTitles(showTitles: true, interval: 1000, reservedSize: MediaQuery.sizeOf(context).width * 0.1
                                    // getTitlesWidget: (value, meta) => Text("data"),
                                    ),
                          ),
                          bottomTitles: const AxisTitles(
                            sideTitles: SideTitles(showTitles: false),
                          ),
                        ),
                        gridData: const FlGridData(
                          show: false,
                        ),
                        lineBarsData: [
                          LineChartBarData(
                            color: Colors.blue,
                            spots: flSpots,
                            barWidth: 3,
                            belowBarData: BarAreaData(
                              show: false,
                            ),
                            // isStepLineChart: true,
                            isCurved: true,
                            preventCurveOverShooting: true,
                            preventCurveOvershootingThreshold: 0.6,
                            dotData: const FlDotData(show: false),
                          ),
                        ],
                      ),

                      duration: const Duration(
                        milliseconds: 150,
                      ), // Optional
                      // curve: Curves.linear,
                    );
                  },
                ),
              ),
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
