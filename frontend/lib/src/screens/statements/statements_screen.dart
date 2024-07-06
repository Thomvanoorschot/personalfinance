import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frontend/generated/proto/banking.pb.dart';
import 'package:frontend/src/clients/grpc_client.dart';
import 'package:frontend/src/providers/user.dart';
import 'package:frontend/src/widgets/card/custom_card.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:fixnum/fixnum.dart' as fixnum;

class StatementsScreen extends ConsumerStatefulWidget {
  const StatementsScreen({super.key});

  @override
  StatementsState createState() => StatementsState();
}

class StatementsState extends ConsumerState<StatementsScreen> {
  static const _pageSize = 20;

  final PagingController<int, TransactionResponse> _pagingController =
      PagingController(firstPageKey: 0);

  @override
  void initState() {
    _pagingController.addPageRequestListener((pageKey) {
      _fetchPage(pageKey);
    });
    super.initState();
  }

  Future<void> _fetchPage(int pageKey) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final userId = prefs.getString("userId");
    try {
      final txResponse = await ref.read(bankingServiceProvider).getTransactions(
            GetTransactionsRequest(
              userId: userId,
              limit: fixnum.Int64(_pageSize),
              offset: fixnum.Int64(pageKey),
            ),
          );
      final isLastPage = txResponse.transactions.length < _pageSize;
      if (isLastPage) {
        _pagingController.appendLastPage(txResponse.transactions);
      } else {
        final nextPageKey = pageKey + txResponse.transactions.length;
        _pagingController.appendPage(txResponse.transactions, nextPageKey);
      }
    } catch (error) {
      _pagingController.error = error;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: const Text("Statements"),
      ),
      body: PagedListView<int, TransactionResponse>(
        pagingController: _pagingController,
        builderDelegate: PagedChildBuilderDelegate<TransactionResponse>(
          itemBuilder: (context, item, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomCard(
              colorOverride: item.transactionAmount > 0
                  ? Theme.of(context).colorScheme.secondaryContainer
                  : Theme.of(context).colorScheme.primaryContainer,
              body: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(item.creditorName.isNotEmpty
                      ? item.creditorName
                      : item.debtorName),
                  Text(
                    item.transactionAmount > 0
                        ? "€${item.transactionAmount.toStringAsFixed(2)}"
                        : "€${item.transactionAmount.toStringAsFixed(2)}",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
