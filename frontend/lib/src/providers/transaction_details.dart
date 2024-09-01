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

part 'transaction_details.g.dart';

@riverpod
class TransactionDetails extends _$TransactionDetails {
  @override
  FutureOr<TransactionResponse> build({required String transactionId}) async {
    return getTransactionDetails(transactionId: transactionId);
  }

  Future<TransactionResponse> getTransactionDetails({required String transactionId}) async {
    final transactionDetailsResponse = await ref.read(budgetingServiceProvider).getTransactionById(GetTransactionByIdRequest(
      userId: "",
      transactionId: transactionId,
    ));

    return transactionDetailsResponse;
  }
}
