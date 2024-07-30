import 'dart:io';

import 'package:frontend/generated/proto/banking.pb.dart';
import 'package:frontend/generated/proto/budgeting.pb.dart';
import 'package:frontend/generated/proto/google/protobuf/timestamp.pb.dart';
import 'package:frontend/generated/proto/user.pb.dart';
import 'package:frontend/src/clients/budgeting_client.dart';
import 'package:frontend/src/clients/grpc_client.dart';
import 'package:frontend/src/models/transaction/balances_per_day_model.dart';
import 'package:frontend/src/models/transaction/categorize_transaction_model.dart';
import 'package:frontend/src/models/user/user_model.dart';
import 'package:frontend/src/providers/transactions.dart';
import 'package:frontend/src/utils/date_utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'balances_per_day.g.dart';

@riverpod
class BalancesPerDay extends _$BalancesPerDay {
  @override
  FutureOr<BalancesPerDayModel> build() async {
    return getBalancesPerDay();
  }

  final List<String> rangeList = List.from(["Custom", "7 Days", "30 Days", "90 Days", "Year"]);

  Future<BalancesPerDayModel> getBalancesPerDay() async {
    final start =DateTime.now().subtract(const Duration(days: 60));
    final end = DateTime.now();
    final balancesPerDay = await ref.read(bankingServiceProvider).getBalancesPerDay(GetBalancesPerDayRequest(
          start: dateTimeToProtoTimestamp(start),
          end: dateTimeToProtoTimestamp(end),
        ));

    return BalancesPerDayModel(selectedIndex: 2, start: start, end: end, balancesPerDay: balancesPerDay);
  }

  Future setSelectedRangeIndex(int index) async {
    await update((data) async {
      switch (index) {
        case 0:
          break;
        case 1:
          var (start, end, balancesPerDay) = await getBalancesBetweenRange(7);
          return data.copyWith(selectedIndex: index, start: start, end: end, balancesPerDay: balancesPerDay);
        case 2:
          var (start, end, balancesPerDay) = await getBalancesBetweenRange(30);
          return data.copyWith(selectedIndex: index, start: start, end: end, balancesPerDay: balancesPerDay);
        case 3:
          var (start, end, balancesPerDay) = await getBalancesBetweenRange(90);
          return data.copyWith(selectedIndex: index, start: start, end: end, balancesPerDay: balancesPerDay);
        case 4:
          var (start, end, balancesPerDay) = await getBalancesBetweenRange(365);
          return data.copyWith(selectedIndex: index, start: start, end: end, balancesPerDay: balancesPerDay);
      }
      return data.copyWith(selectedIndex: index);
    });
  }

  Future setStart(DateTime start) async {
    await update((data) async {
      final balancesPerDay = await ref.read(bankingServiceProvider).getBalancesPerDay(GetBalancesPerDayRequest(
        start: dateTimeToProtoTimestamp(start),
        end: dateTimeToProtoTimestamp(data.end),
      ));
      return data.copyWith(start: start, balancesPerDay: balancesPerDay, selectedIndex: 0);
    });
  }

  Future setEnd(DateTime end) async {
    await update((data) async {
      if(end.isBefore(data.start)){
        return data.copyWith(end: data.end);
      }
      final balancesPerDay = await ref.read(bankingServiceProvider).getBalancesPerDay(GetBalancesPerDayRequest(
        start: dateTimeToProtoTimestamp(data.start),
        end: dateTimeToProtoTimestamp(end),
      ));
      return data.copyWith(end: end, balancesPerDay: balancesPerDay, selectedIndex: 0);
    });
  }

  Future<(DateTime, DateTime, GetBalancesPerDayResponse)> getBalancesBetweenRange(int days) async {
    final start =DateTime.now().subtract(Duration(days: days));
    final end = DateTime.now();

    final balancesPerDay = await ref.read(bankingServiceProvider).getBalancesPerDay(GetBalancesPerDayRequest(
      start: dateTimeToProtoTimestamp(start),
      end: dateTimeToProtoTimestamp(end),
        ));
    return (start, end, balancesPerDay);
  }
}
