import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/generated/proto/banking.pb.dart';
import 'package:frontend/generated/proto/budgeting.pb.dart';
import 'package:frontend/generated/proto/google/protobuf/timestamp.pb.dart';

part 'period_model.freezed.dart';

@freezed
class PeriodModel with _$PeriodModel {
  factory PeriodModel({
    required GetInAndOutgoingTransactionAmountsPerPeriodRequest_Period period,
    required String LabelEN,
    required String LabelNL,
  }) = _PeriodModel;
}

