import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/generated/proto/banking.pb.dart';
import 'package:frontend/generated/proto/budgeting.pb.dart';
import 'package:frontend/generated/proto/google/protobuf/timestamp.pb.dart';

part 'categorized_transactions_model.freezed.dart';

@freezed
class CategorizedTransactionsModel with _$CategorizedTransactionsModel {
  factory CategorizedTransactionsModel({
    required GetCategorizedTransactionResultsResponse categorizedTransactions,
    String? selectedTransactionCategoryGroupSlug
  }) = _CategorizedTransactionsModel;
}

