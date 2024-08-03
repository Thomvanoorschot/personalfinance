import 'dart:io';

import 'package:frontend/generated/proto/banking.pb.dart';
import 'package:frontend/generated/proto/budgeting.pb.dart';
import 'package:frontend/generated/proto/google/protobuf/timestamp.pb.dart';
import 'package:frontend/generated/proto/user.pb.dart';
import 'package:frontend/src/clients/budgeting_client.dart';
import 'package:frontend/src/clients/grpc_client.dart';
import 'package:frontend/src/models/budgeting/categorized_transactions_model.dart';
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

part 'categorized_transactions.g.dart';

@riverpod
class CategorizedTransactions extends _$CategorizedTransactions {
  final Map<String, int> categoryGroupColorMap = Map.from({
    'transportation': 0xFFFF5733,
    'health-wellness': 0xFF33FF57,
    'food': 0xFFFF33A1,
    'pet-care': 0xFF33A1FF,
    'childcare-education': 0xFFA133FF,
    'debt-repayment': 0xFFFF3333,
    'education': 0xFF33FF99,
    'insurance': 0xFFFF9933,
    'personal-care': 0xFF3399FF,
    'income': 0xFF9933FF,
    'entertainment-leisure': 0xFF33FF33,
    'saving-and-investments': 0xFFFF3399,
    'housing': 0xFF33A1A1,
    'unknown_category': 0xFF00796B,
  });

  @override
  FutureOr<CategorizedTransactionsModel> build() async {
    ref.listen<TimeRangeModel>(timeRangeProvider, (TimeRangeModel? prevModel, TimeRangeModel newModel) async {
      if (prevModel?.selectedIndex != newModel.selectedIndex ||
          prevModel?.start != newModel.start ||
          prevModel?.end != newModel.end) {
        await update((data) async {
          final categorizedTransactions =
              await ref.read(budgetingServiceProvider).getCategorizedTransactionResults(GetCategorizedTransactionResultsRequest(
                    start: dateTimeToProtoTimestamp(newModel.start),
                    end: dateTimeToProtoTimestamp(newModel.end),
                  ));
          return CategorizedTransactionsModel(categorizedTransactions: categorizedTransactions);
        });
      }
    });
    return getCategorizedTransactions();
  }

  Future<CategorizedTransactionsModel> getCategorizedTransactions() async {
    final timeRange = ref.read(timeRangeProvider);
    final categorizedTransactions =
        await ref.read(budgetingServiceProvider).getCategorizedTransactionResults(GetCategorizedTransactionResultsRequest(
              start: dateTimeToProtoTimestamp(timeRange.start),
              end: dateTimeToProtoTimestamp(timeRange.end),
            ));
    return CategorizedTransactionsModel(categorizedTransactions: categorizedTransactions);
  }

  void selectCategoryGroup(String? slug) {
    update((data) {
      if (data.selectedTransactionCategoryGroupSlug != slug) {
        return data.copyWith(selectedTransactionCategoryGroupSlug: slug);
      }
      return data;
    });
  }
}
