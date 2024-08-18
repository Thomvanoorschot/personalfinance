import 'package:flutter/material.dart';

class CategorizeTransactionInfo extends StatelessWidget {
  const CategorizeTransactionInfo(
      {required this.partyName, required this.description, required this.transactionAmount, super.key});

  final String partyName;
  final String description;
  final double transactionAmount;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Text(
                partyName,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
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
                  child: const Icon(
                    Icons.info,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
        Text(
          transactionAmount.toStringAsFixed(2),
          style: const TextStyle(fontStyle: FontStyle.italic, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
