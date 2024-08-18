import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/generated/proto/banking.pb.dart';
import 'package:frontend/generated/proto/budgeting.pb.dart';
import 'package:frontend/generated/proto/google/protobuf/timestamp.pb.dart';

part 'repayment_model.freezed.dart';

@freezed
class RepaymentModel with _$RepaymentModel {
  factory RepaymentModel({
    required bool isRepayment,
    GetMinusTransactionsAroundDateResponse? minusTransactionsAroundDate,
    String? selectedTransactionId,
  }) = _RepaymentModel;
}

