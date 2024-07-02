import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:frontend/generated/proto/user.pb.dart';
import 'package:frontend/src/models/user/user_model.dart';
import 'package:frontend/src/providers/user.dart';
import 'package:frontend/src/repositories/grpc_client.dart';

class UserScreen extends ConsumerWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(userProvider('').notifier);


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Test"),
      ),
      body: FutureBuilder<UserModel>(
          future: notifier.getUser(''),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: CalendarDatePicker(
                      onDateChanged: (DateTime value) {},
                      lastDate: DateTime.now().add(Duration(days: 60)),
                      firstDate: DateTime.now(),
                      initialDate: DateTime.now(),
                      selectableDayPredicate: (day) {
                        return _isAvailable(day, snapshot.data!);
                      },
                    ),
                  ),
                ],
              );
            }
            return const Text("Waiting");
          }),
    );
  }
}
