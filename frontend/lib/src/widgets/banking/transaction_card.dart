import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:frontend/generated/proto/banking.pb.dart';
import 'package:frontend/src/widgets/card/custom_card.dart';
import 'package:intl/intl.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({required this.transaction, super.key});

  final TransactionResponse transaction;

  @override
  Widget build(BuildContext context) {
    final bookingDate = DateTime.fromMillisecondsSinceEpoch(
        transaction.bookingDate.seconds.toInt() * 1000);
    final formattedDate = DateFormat('d MMM yyyy').format(bookingDate);

    return CustomCard(
      colorOverride: transaction.transactionAmount > 0
          ? Theme.of(context).colorScheme.secondaryContainer
          : Theme.of(context).colorScheme.primaryContainer,
      onTap: (){
        // TODO Temporary
        showCupertinoModalBottomSheet(context: context, builder: (context) => Text("data"),);
      },
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              padding: const EdgeInsets.all(8), // Padding inside the container
              decoration: BoxDecoration(
                color: Colors.grey[200], // Background color of the container
                borderRadius: BorderRadius.circular(12), // Rounded edges
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(2, 2), // Shadow effect
                  ),
                ],
              ),
              child: SvgPicture.asset(
                'assets/shopping.svg',
                height: 24,
                width: 24,
                colorFilter: ColorFilter.mode(
                  Theme.of(context).colorScheme.secondary,
                  BlendMode.srcIn,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(transaction.creditorName.isNotEmpty
                    ? transaction.creditorName
                    : transaction.debtorName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold
                ),),
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
    );
  }
}
