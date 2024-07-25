import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frontend/generated/proto/budgeting.pb.dart';

part 'categorize_transaction_model.freezed.dart';

@freezed
class CategorizeTransactionModel with _$CategorizeTransactionModel {
  factory CategorizeTransactionModel({
    required GetUncategorizedTransactionResponse uncategorizedTransaction,
    required List<String> toBeCategorizedTransactionIds,
    TransactionCategoryGroupResponse? selectedTransactionCategoryGroup,
    TransactionCategoryResponse? selectedTransactionCategory,
  }) = _CategorizeTransactionModel;
}

