import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/generated/proto/budgeting.pb.dart';
import 'package:frontend/src/providers/repayment.dart';
import 'package:frontend/src/utils/date_utils.dart';
import 'package:frontend/src/utils/size_config.dart';
import 'package:frontend/src/widgets/pickers/cupertino_value_button.dart';
import 'package:frontend/src/widgets/switch/labeled_switch.dart';

class Repayment extends ConsumerWidget {
  const Repayment({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final repayment = ref.watch(repaymentProvider);
    final repaymentNotifier = ref.watch(repaymentProvider.notifier);

    return Column(
      children: [
        LabeledSwitch(
          label: "Was this a repayment?",
          value: repayment.isRepayment,
          onChanged: (value) {
            repaymentNotifier.toggleIsRepayment();
          },
        ),
        if (repayment.minusTransactionsAroundDate != null)
          for (var x in repayment.minusTransactionsAroundDate!.transactions)
            RadioListTile(
              title: Text(
                x.partyName,
                style: TextStyle(
                  fontSize: SizeConfig.safeBlockHorizontal * 3,
                ),
              ),
              // subtitle: ,
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    epochToDateString(
                      x.date,
                    ),
                    style: TextStyle(
                      fontSize: SizeConfig.safeBlockHorizontal * 3,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  Text(
                    "€${x.transactionAmount.toStringAsFixed(2)}",
                    style: TextStyle(
                      fontSize: SizeConfig.safeBlockHorizontal * 3,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
              value: x.id,
              groupValue: repayment.selectedTransactionId,
              onChanged: (value) {
                repaymentNotifier.selectRepayment(x.id);
              },
              toggleable: true,
            )
        // CupertinoListTile(
        //   backgroundColor: x.id == repayment.selectedTransactionId
        //       ? Theme.of(context).colorScheme.secondary
        //       : Theme.of(context).colorScheme.secondary,
        //   onTap: (){
        //     repaymentNotifier.selectRepayment(x.id);
        //   },
        //   title: Text(
        //     x.partyName,
        //     style: TextStyle(
        //       fontSize: SizeConfig.safeBlockHorizontal * 3,
        //     ),
        //   ),
        //   subtitle: Text(
        //     epochToDateString(
        //       x.date,
        //     ),
        //     style: TextStyle(
        //       fontSize: SizeConfig.safeBlockHorizontal * 3,
        //     ),
        //   ),
        //   trailing: Text(
        //     "€${x.transactionAmount.toStringAsFixed(2)}",
        //     style: TextStyle(
        //       fontSize: SizeConfig.safeBlockHorizontal * 3,
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
