import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/generated/proto/banking.pb.dart';
import 'package:frontend/generated/proto/budgeting.pb.dart';
import 'package:frontend/generated/proto/google/protobuf/timestamp.pb.dart';

part 'in_and_outgoing_transaction_amounts_per_period_model.freezed.dart';

@freezed
class InAndOutgoingTransactionAmountsPerPeriodModel with _$InAndOutgoingTransactionAmountsPerPeriodModel {
  factory InAndOutgoingTransactionAmountsPerPeriodModel({
    required GetInAndOutgoingTransactionAmountsPerPeriodResponse inAndOutgoingTransactionAmountsPerPeriodModel,
    required int currentLimit,
    required int currentOffset,
  }) = _InAndOutgoingTransactionAmountsPerPeriodModel;
}

