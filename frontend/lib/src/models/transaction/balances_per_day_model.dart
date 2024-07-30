import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/generated/proto/banking.pb.dart';
import 'package:frontend/generated/proto/budgeting.pb.dart';
import 'package:frontend/generated/proto/google/protobuf/timestamp.pb.dart';

part 'balances_per_day_model.freezed.dart';

@freezed
class BalancesPerDayModel with _$BalancesPerDayModel {
  factory BalancesPerDayModel({
    required GetBalancesPerDayResponse balancesPerDay,
    required int selectedIndex,
    required DateTime start,
    required DateTime end,
    int? amountOfDays,
  }) = _BalancesPerDayModel;
}

