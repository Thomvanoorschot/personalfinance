import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/generated/proto/banking.pb.dart';
import 'package:frontend/src/clients/banking_client.dart';
import 'package:frontend/src/widgets/banking/bank_account.dart';

class BankAccounts extends ConsumerWidget {
  const BankAccounts({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<GetBankAccountsResponse> getBankAccountsResponse = ref.watch(
      getBankAccountsProvider(
        req: GetBankAccountsRequest(),
      ),
    );

    return getBankAccountsResponse.when(
      loading: () => const SizedBox(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      ),
      error: (err, stack) => Text('error: $err'),
      data: (resp) {
        return ListView.builder(
          scrollDirection: Axis.horizontal,
          // shrinkWrap: true,
          itemCount: resp.accounts.length,
          itemBuilder: (context, index) {
            return BankAccount(
              bankAccount: resp.accounts[index],
            );
          },
        );
      },
    );

    return const Placeholder();
  }
}
