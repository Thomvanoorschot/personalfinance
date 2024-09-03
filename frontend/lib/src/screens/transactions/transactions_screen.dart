import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/generated/proto/banking.pb.dart';
import 'package:frontend/src/clients/banking_client.dart';
import 'package:frontend/src/providers/categorize_transaction.dart';
import 'package:frontend/src/providers/transactions.dart';
import 'package:frontend/src/utils/date_utils.dart';
import 'package:frontend/src/utils/size_config.dart';
import 'package:frontend/src/widgets/banking/balances_per_day_chart.dart';
import 'package:frontend/src/widgets/banking/bank_accounts.dart';
import 'package:frontend/src/widgets/budgeting/no_transactions.dart';
import 'package:frontend/src/widgets/budgeting/transaction_category_group_chart.dart';
import 'package:frontend/src/widgets/banking/time_range_selector.dart';
import 'package:frontend/src/widgets/budgeting/transaction_card.dart';
import 'package:frontend/src/widgets/shimmers/transaction_card_shimmer.dart';
import 'package:frontend/src/widgets/budgeting/transaction_list.dart';
import 'package:go_router/go_router.dart';

final GlobalKey<TransactionsScreenState> transactionScreenKey = GlobalKey<TransactionsScreenState>();

class TransactionsScreen extends ConsumerStatefulWidget {
  TransactionsScreen({Key? key}) : super(key: transactionScreenKey);

  @override
  TransactionsScreenState createState() => TransactionsScreenState();
}

class TransactionsScreenState extends ConsumerState<TransactionsScreen> {
  final ScrollController _scrollController = ScrollController();

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
    final _ = ref.watch(categorizeTransactionProvider);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Transactions"),
        actions: [
          IconButton(
            onPressed: () {
              context.go("/transactions/getBanks");
            },
            icon: const Icon(
              Icons.add_card,
            ),
          ),
          Hero(
            tag: "categorize",
            child: IconButton(
              onPressed: () {
                context.go("/transactions/categorize");
              },
              icon: const Icon(
                Icons.dashboard_customize,
              ),
            ),
          ),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          ref.read(transactionsProvider.notifier).getTransactions(reset: true);
          ref.invalidate(getBankAccountsProvider);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: transactionsResponse.when(
            error: (err, stack) => Text(err.toString()),
            loading: () => ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return const TransactionCardShimmer();
              },
            ),
            data: (resp) {
              if (resp.transactions.isEmpty) {
                return const NoBankAccounts();
              }
              return CustomScrollView(
                controller: _scrollController,
                slivers: [TransactionList(txResp: resp)],
              );
            },
          ),
        ),
      ),
    );
  }
}
