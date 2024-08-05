// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categorized_transactions_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategorizedTransactionsModel {
  GetCategorizedTransactionResultsResponse get categorizedTransactions =>
      throw _privateConstructorUsedError;
  String? get selectedTransactionCategoryGroupSlug =>
      throw _privateConstructorUsedError;
  GetCategorizedTransactionResultResponse?
      get selectedTransactionCategoryGroup =>
          throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategorizedTransactionsModelCopyWith<CategorizedTransactionsModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategorizedTransactionsModelCopyWith<$Res> {
  factory $CategorizedTransactionsModelCopyWith(
          CategorizedTransactionsModel value,
          $Res Function(CategorizedTransactionsModel) then) =
      _$CategorizedTransactionsModelCopyWithImpl<$Res,
          CategorizedTransactionsModel>;
  @useResult
  $Res call(
      {GetCategorizedTransactionResultsResponse categorizedTransactions,
      String? selectedTransactionCategoryGroupSlug,
      GetCategorizedTransactionResultResponse?
          selectedTransactionCategoryGroup});
}

/// @nodoc
class _$CategorizedTransactionsModelCopyWithImpl<$Res,
        $Val extends CategorizedTransactionsModel>
    implements $CategorizedTransactionsModelCopyWith<$Res> {
  _$CategorizedTransactionsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categorizedTransactions = null,
    Object? selectedTransactionCategoryGroupSlug = freezed,
    Object? selectedTransactionCategoryGroup = freezed,
  }) {
    return _then(_value.copyWith(
      categorizedTransactions: null == categorizedTransactions
          ? _value.categorizedTransactions
          : categorizedTransactions // ignore: cast_nullable_to_non_nullable
              as GetCategorizedTransactionResultsResponse,
      selectedTransactionCategoryGroupSlug: freezed ==
              selectedTransactionCategoryGroupSlug
          ? _value.selectedTransactionCategoryGroupSlug
          : selectedTransactionCategoryGroupSlug // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedTransactionCategoryGroup: freezed ==
              selectedTransactionCategoryGroup
          ? _value.selectedTransactionCategoryGroup
          : selectedTransactionCategoryGroup // ignore: cast_nullable_to_non_nullable
              as GetCategorizedTransactionResultResponse?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategorizedTransactionsModelImplCopyWith<$Res>
    implements $CategorizedTransactionsModelCopyWith<$Res> {
  factory _$$CategorizedTransactionsModelImplCopyWith(
          _$CategorizedTransactionsModelImpl value,
          $Res Function(_$CategorizedTransactionsModelImpl) then) =
      __$$CategorizedTransactionsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GetCategorizedTransactionResultsResponse categorizedTransactions,
      String? selectedTransactionCategoryGroupSlug,
      GetCategorizedTransactionResultResponse?
          selectedTransactionCategoryGroup});
}

/// @nodoc
class __$$CategorizedTransactionsModelImplCopyWithImpl<$Res>
    extends _$CategorizedTransactionsModelCopyWithImpl<$Res,
        _$CategorizedTransactionsModelImpl>
    implements _$$CategorizedTransactionsModelImplCopyWith<$Res> {
  __$$CategorizedTransactionsModelImplCopyWithImpl(
      _$CategorizedTransactionsModelImpl _value,
      $Res Function(_$CategorizedTransactionsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categorizedTransactions = null,
    Object? selectedTransactionCategoryGroupSlug = freezed,
    Object? selectedTransactionCategoryGroup = freezed,
  }) {
    return _then(_$CategorizedTransactionsModelImpl(
      categorizedTransactions: null == categorizedTransactions
          ? _value.categorizedTransactions
          : categorizedTransactions // ignore: cast_nullable_to_non_nullable
              as GetCategorizedTransactionResultsResponse,
      selectedTransactionCategoryGroupSlug: freezed ==
              selectedTransactionCategoryGroupSlug
          ? _value.selectedTransactionCategoryGroupSlug
          : selectedTransactionCategoryGroupSlug // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedTransactionCategoryGroup: freezed ==
              selectedTransactionCategoryGroup
          ? _value.selectedTransactionCategoryGroup
          : selectedTransactionCategoryGroup // ignore: cast_nullable_to_non_nullable
              as GetCategorizedTransactionResultResponse?,
    ));
  }
}

/// @nodoc

class _$CategorizedTransactionsModelImpl
    implements _CategorizedTransactionsModel {
  _$CategorizedTransactionsModelImpl(
      {required this.categorizedTransactions,
      this.selectedTransactionCategoryGroupSlug,
      this.selectedTransactionCategoryGroup});

  @override
  final GetCategorizedTransactionResultsResponse categorizedTransactions;
  @override
  final String? selectedTransactionCategoryGroupSlug;
  @override
  final GetCategorizedTransactionResultResponse?
      selectedTransactionCategoryGroup;

  @override
  String toString() {
    return 'CategorizedTransactionsModel(categorizedTransactions: $categorizedTransactions, selectedTransactionCategoryGroupSlug: $selectedTransactionCategoryGroupSlug, selectedTransactionCategoryGroup: $selectedTransactionCategoryGroup)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategorizedTransactionsModelImpl &&
            (identical(
                    other.categorizedTransactions, categorizedTransactions) ||
                other.categorizedTransactions == categorizedTransactions) &&
            (identical(other.selectedTransactionCategoryGroupSlug,
                    selectedTransactionCategoryGroupSlug) ||
                other.selectedTransactionCategoryGroupSlug ==
                    selectedTransactionCategoryGroupSlug) &&
            (identical(other.selectedTransactionCategoryGroup,
                    selectedTransactionCategoryGroup) ||
                other.selectedTransactionCategoryGroup ==
                    selectedTransactionCategoryGroup));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categorizedTransactions,
      selectedTransactionCategoryGroupSlug, selectedTransactionCategoryGroup);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategorizedTransactionsModelImplCopyWith<
          _$CategorizedTransactionsModelImpl>
      get copyWith => __$$CategorizedTransactionsModelImplCopyWithImpl<
          _$CategorizedTransactionsModelImpl>(this, _$identity);
}

abstract class _CategorizedTransactionsModel
    implements CategorizedTransactionsModel {
  factory _CategorizedTransactionsModel(
          {required final GetCategorizedTransactionResultsResponse
              categorizedTransactions,
          final String? selectedTransactionCategoryGroupSlug,
          final GetCategorizedTransactionResultResponse?
              selectedTransactionCategoryGroup}) =
      _$CategorizedTransactionsModelImpl;

  @override
  GetCategorizedTransactionResultsResponse get categorizedTransactions;
  @override
  String? get selectedTransactionCategoryGroupSlug;
  @override
  GetCategorizedTransactionResultResponse? get selectedTransactionCategoryGroup;
  @override
  @JsonKey(ignore: true)
  _$$CategorizedTransactionsModelImplCopyWith<
          _$CategorizedTransactionsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
