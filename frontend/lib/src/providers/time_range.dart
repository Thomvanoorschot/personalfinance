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
import 'package:frontend/src/providers/transactions.dart';
import 'package:frontend/src/utils/date_utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'time_range.g.dart';

@riverpod
class TimeRange extends _$TimeRange {
  @override
  TimeRangeModel build() {
    ref.keepAlive();
    return getTimeRange();
  }

  final List<String> rangeList = List.from(["Custom", "7 Days", "30 Days", "90 Days", "Year"]);

  TimeRangeModel getTimeRange() {
    final start = DateTime.now().subtract(const Duration(days: 60));
    final end = DateTime.now();

    return TimeRangeModel(selectedIndex: 2, start: start, end: end);
  }

  void setSelectedRangeIndex(int index) {
    switch (index) {
      case 0:
        break;
      case 1:
        var (start, end) = getStartEndRange(7);
        state = state.copyWith(selectedIndex: index, start: start, end: end);
      case 2:
        var (start, end) = getStartEndRange(30);
        state = state.copyWith(selectedIndex: index, start: start, end: end);
      case 3:
        var (start, end) = getStartEndRange(90);
        state = state.copyWith(selectedIndex: index, start: start, end: end);
      case 4:
        var (start, end) = getStartEndRange(365);
        state = state.copyWith(selectedIndex: index, start: start, end: end);
    }
  }

  void setStart(DateTime start) {
    state = state.copyWith(start: start, selectedIndex: 0);
  }

  void setEnd(DateTime end) {
    state = state.copyWith(end: end, selectedIndex: 0);
  }

  (DateTime, DateTime) getStartEndRange(int days) {
    final start = DateTime.now().subtract(Duration(days: days));
    final end = DateTime.now();
    return (start, end);
  }
}
