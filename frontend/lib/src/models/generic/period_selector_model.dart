import 'package:freezed_annotation/freezed_annotation.dart';

part 'period_selector_model.freezed.dart';

@freezed
class PeriodSelectorModel with _$PeriodSelectorModel {
  factory PeriodSelectorModel({
    required int selectedIndex,
    required int limit,
    required int offset,
  }) = _PeriodSelectorModel;
}

