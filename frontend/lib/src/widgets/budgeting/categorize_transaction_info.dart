import 'package:flutter/material.dart';

class CategorizeTransactionInfo extends StatelessWidget {
  const CategorizeTransactionInfo(
      {required this.partyName, required this.description, required this.transactionAmount, super.key});

  final String partyName;
  final String description;
  final double transactionAmount;

  @override
  Widget build(BuildContext context) {
    final textColor = Theme.of(context).colorScheme.primaryContainer;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Text(
                partyName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: textColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Tooltip(
                  triggerMode: TooltipTriggerMode.tap,
                  showDuration: const Duration(milliseconds: 5000),
                  message: description,
                  child: Icon(
                    Icons.info,
                    color: textColor,
                  ),
                ),
              ),
            )
          ],
        ),
        Text(
          "€${transactionAmount.toStringAsFixed(2)}",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: textColor,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
