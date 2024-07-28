import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frontend/generated/proto/banking.pb.dart';
import 'package:frontend/generated/proto/budgeting.pb.dart';
import 'package:frontend/src/utils/date_utils.dart';
import 'package:frontend/src/widgets/card/custom_card.dart';
import 'package:go_router/go_router.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({required this.transaction, super.key});

  final TransactionResponse transaction;

  @override
  Widget build(BuildContext context) {
    final formattedDate = epochToDateString(transaction.date);
    return Hero(
      tag: transaction.id,
      child: CustomCard(
        colorOverride: transaction.transactionAmount > 0
            ? Theme.of(context).colorScheme.secondaryContainer
            : Theme.of(context).colorScheme.primaryContainer,
        onTap: () {
          context.go("/transactions/detail/${transaction.id}");
        },
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: transaction.transactionCategoryGroupSlug.hasValue() ? SvgPicture.asset(
                width: 48,
                height: 48,
                "assets/${transaction.transactionCategoryGroupSlug.value}/${transaction.transactionCategorySlug.value}.svg",
              ) :  SvgPicture.asset(
                width: 48,
                height: 48,
                "assets/unknown_category.svg",
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(transaction.partyName),
                  Text(formattedDate),
                ],
              ),
            ),
            Text(
              transaction.transactionAmount > 0
                  ? "€${transaction.transactionAmount.toStringAsFixed(2)}"
                  : "€${transaction.transactionAmount.toStringAsFixed(2)}",
            ),
          ],
        ),
      ),
    );
  }
}
