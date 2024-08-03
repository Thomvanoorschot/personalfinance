import 'dart:io';

import 'package:frontend/generated/proto/banking.pb.dart';
import 'package:frontend/generated/proto/budgeting.pb.dart';
import 'package:frontend/generated/proto/google/protobuf/timestamp.pb.dart';
import 'package:frontend/generated/proto/user.pb.dart';
import 'package:frontend/src/clients/budgeting_client.dart';
import 'package:frontend/src/clients/grpc_client.dart';
import 'package:frontend/src/models/generic/time_range_model.dart';
import 'package:frontend/src/models/transaction/balances_per_day_model.dart';
import 'package:frontend/src/models/transaction/categorize_transaction_model.dart';
import 'package:frontend/src/models/user/user_model.dart';
import 'package:frontend/src/providers/time_range.dart';
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
    ref.listen<TimeRangeModel>(timeRangeProvider, (TimeRangeModel? prevModel, TimeRangeModel newModel) async {
      if (prevModel?.selectedIndex != newModel.selectedIndex ||
          prevModel?.start != newModel.start ||
          prevModel?.end != newModel.end) {
        await update((data) async {
          final balancesPerDay = await ref.read(bankingServiceProvider).getBalancesPerDay(GetBalancesPerDayRequest(
            start: dateTimeToProtoTimestamp(newModel.start),
            end: dateTimeToProtoTimestamp(newModel.end),
          ));
          return data.copyWith(balancesPerDay: balancesPerDay);
        });
      }
    });
    return getBalancesPerDay();
  }

  Future<BalancesPerDayModel> getBalancesPerDay() async {
    final timeRange = ref.read(timeRangeProvider);
    final balancesPerDay = await ref.read(bankingServiceProvider).getBalancesPerDay(GetBalancesPerDayRequest(
          start: dateTimeToProtoTimestamp(timeRange.start),
          end: dateTimeToProtoTimestamp(timeRange.end),
        ));

    return BalancesPerDayModel(balancesPerDay: balancesPerDay);
  }
}
