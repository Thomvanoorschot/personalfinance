import 'package:flutter/material.dart';
import 'package:frontend/generated/proto/banking.pb.dart';
import 'package:frontend/src/widgets/card/custom_card.dart';

enum SampleItem { itemOne, itemTwo, itemThree }

class BankAccount extends StatelessWidget {
  const BankAccount({required this.bankAccount, super.key});

  final BankAccountResponse bankAccount;

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width * 0.8,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    bankAccount.iconURL,
                    scale: 0.1,
                  ),
                  backgroundColor: Colors.transparent,
                ),
                Text(
                  bankAccount.iban,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                PopupMenuButton(
                  itemBuilder: (BuildContext context) => <PopupMenuEntry<SampleItem>>[
                    const PopupMenuItem<SampleItem>(
                      value: SampleItem.itemOne,
                      child: Text('Item 1'),
                    ),
                    const PopupMenuItem<SampleItem>(
                      value: SampleItem.itemTwo,
                      child: Text('Item 2'),
                    ),
                    const PopupMenuItem<SampleItem>(
                      value: SampleItem.itemThree,
                      child: Text('Item 3'),
                    ),
                  ]
                )
              ],
            ),
            Text(
              bankAccount.bankName,
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
