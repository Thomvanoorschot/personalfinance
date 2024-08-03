import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/generated/proto/banking.pb.dart';
import 'package:frontend/generated/proto/budgeting.pb.dart';
import 'package:frontend/generated/proto/google/protobuf/timestamp.pb.dart';

part 'time_range_model.freezed.dart';

@freezed
class TimeRangeModel with _$TimeRangeModel {
  factory TimeRangeModel({
    required int selectedIndex,
    required DateTime start,
    required DateTime end,
  }) = _TimeRangeModel;
}

