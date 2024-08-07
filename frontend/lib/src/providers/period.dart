import 'dart:io';

import 'package:frontend/generated/proto/banking.pb.dart';
import 'package:frontend/generated/proto/budgeting.pb.dart';
import 'package:frontend/generated/proto/google/protobuf/timestamp.pb.dart';
import 'package:frontend/generated/proto/user.pb.dart';
import 'package:frontend/src/clients/budgeting_client.dart';
import 'package:frontend/src/clients/grpc_client.dart';
import 'package:frontend/src/models/budgeting/period_model.dart';
import 'package:frontend/src/models/generic/period_selector_model.dart';
import 'package:frontend/src/models/generic/time_range_model.dart';
import 'package:frontend/src/models/transaction/balances_per_day_model.dart';
import 'package:frontend/src/models/transaction/categorize_transaction_model.dart';
import 'package:frontend/src/models/user/user_model.dart';
import 'package:frontend/src/providers/transactions.dart';
import 'package:frontend/src/utils/date_utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'period.g.dart';

@riverpod
class Period extends _$Period {
  @override
  PeriodSelectorModel build() {
    ref.keepAlive();
    return getPeriod();
  }

  final List<PeriodModel> periodList = List.from([
    PeriodModel(period: GetInAndOutgoingTransactionAmountsPerPeriodRequest_Period.day, LabelEN: "Day", LabelNL: "Dag"),
    PeriodModel(period: GetInAndOutgoingTransactionAmountsPerPeriodRequest_Period.week, LabelEN: "Week", LabelNL: "Week"),
    PeriodModel(period: GetInAndOutgoingTransactionAmountsPerPeriodRequest_Period.month, LabelEN: "Month", LabelNL: "Maand"),
  ]);

  PeriodSelectorModel getPeriod() {
    return PeriodSelectorModel(selectedIndex: 2, limit: 8, offset: 0);
  }

  void setSelectedRangeIndex(int index) {
    switch (index) {
      case 0:
        state = state.copyWith(selectedIndex: index, limit: 7, offset: 0);
      case 1:
        state = state.copyWith(selectedIndex: index, limit: 8, offset: 0);
      case 2:
        state = state.copyWith(selectedIndex: index, limit: 8, offset: 0);
    }
  }
}
