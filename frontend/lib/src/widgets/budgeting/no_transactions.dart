import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NoBankAccounts extends StatelessWidget {
  const NoBankAccounts({this.label, super.key});

  final String? label;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "We couldn't find any ${label ?? 'transactions'}.\n Try linking a bank account.",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: ElevatedButton(
              onPressed: () {
                context.go("/transactions/getBanks");
              },
              child: const Text("Link bank account"),
            ),
          ),
        ],
      ),
    );
  }
}
