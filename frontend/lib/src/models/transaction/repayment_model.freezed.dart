// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repayment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RepaymentModel {
  bool get isRepayment => throw _privateConstructorUsedError;
  GetMinusTransactionsAroundDateResponse? get minusTransactionsAroundDate =>
      throw _privateConstructorUsedError;
  String? get selectedTransactionId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RepaymentModelCopyWith<RepaymentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepaymentModelCopyWith<$Res> {
  factory $RepaymentModelCopyWith(
          RepaymentModel value, $Res Function(RepaymentModel) then) =
      _$RepaymentModelCopyWithImpl<$Res, RepaymentModel>;
  @useResult
  $Res call(
      {bool isRepayment,
      GetMinusTransactionsAroundDateResponse? minusTransactionsAroundDate,
      String? selectedTransactionId});
}

/// @nodoc
class _$RepaymentModelCopyWithImpl<$Res, $Val extends RepaymentModel>
    implements $RepaymentModelCopyWith<$Res> {
  _$RepaymentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRepayment = null,
    Object? minusTransactionsAroundDate = freezed,
    Object? selectedTransactionId = freezed,
  }) {
    return _then(_value.copyWith(
      isRepayment: null == isRepayment
          ? _value.isRepayment
          : isRepayment // ignore: cast_nullable_to_non_nullable
              as bool,
      minusTransactionsAroundDate: freezed == minusTransactionsAroundDate
          ? _value.minusTransactionsAroundDate
          : minusTransactionsAroundDate // ignore: cast_nullable_to_non_nullable
              as GetMinusTransactionsAroundDateResponse?,
      selectedTransactionId: freezed == selectedTransactionId
          ? _value.selectedTransactionId
          : selectedTransactionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepaymentModelImplCopyWith<$Res>
    implements $RepaymentModelCopyWith<$Res> {
  factory _$$RepaymentModelImplCopyWith(_$RepaymentModelImpl value,
          $Res Function(_$RepaymentModelImpl) then) =
      __$$RepaymentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isRepayment,
      GetMinusTransactionsAroundDateResponse? minusTransactionsAroundDate,
      String? selectedTransactionId});
}

/// @nodoc
class __$$RepaymentModelImplCopyWithImpl<$Res>
    extends _$RepaymentModelCopyWithImpl<$Res, _$RepaymentModelImpl>
    implements _$$RepaymentModelImplCopyWith<$Res> {
  __$$RepaymentModelImplCopyWithImpl(
      _$RepaymentModelImpl _value, $Res Function(_$RepaymentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRepayment = null,
    Object? minusTransactionsAroundDate = freezed,
    Object? selectedTransactionId = freezed,
  }) {
    return _then(_$RepaymentModelImpl(
      isRepayment: null == isRepayment
          ? _value.isRepayment
          : isRepayment // ignore: cast_nullable_to_non_nullable
              as bool,
      minusTransactionsAroundDate: freezed == minusTransactionsAroundDate
          ? _value.minusTransactionsAroundDate
          : minusTransactionsAroundDate // ignore: cast_nullable_to_non_nullable
              as GetMinusTransactionsAroundDateResponse?,
      selectedTransactionId: freezed == selectedTransactionId
          ? _value.selectedTransactionId
          : selectedTransactionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RepaymentModelImpl implements _RepaymentModel {
  _$RepaymentModelImpl(
      {required this.isRepayment,
      this.minusTransactionsAroundDate,
      this.selectedTransactionId});

  @override
  final bool isRepayment;
  @override
  final GetMinusTransactionsAroundDateResponse? minusTransactionsAroundDate;
  @override
  final String? selectedTransactionId;

  @override
  String toString() {
    return 'RepaymentModel(isRepayment: $isRepayment, minusTransactionsAroundDate: $minusTransactionsAroundDate, selectedTransactionId: $selectedTransactionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepaymentModelImpl &&
            (identical(other.isRepayment, isRepayment) ||
                other.isRepayment == isRepayment) &&
            (identical(other.minusTransactionsAroundDate,
                    minusTransactionsAroundDate) ||
                other.minusTransactionsAroundDate ==
                    minusTransactionsAroundDate) &&
            (identical(other.selectedTransactionId, selectedTransactionId) ||
                other.selectedTransactionId == selectedTransactionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isRepayment,
      minusTransactionsAroundDate, selectedTransactionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RepaymentModelImplCopyWith<_$RepaymentModelImpl> get copyWith =>
      __$$RepaymentModelImplCopyWithImpl<_$RepaymentModelImpl>(
          this, _$identity);
}

abstract class _RepaymentModel implements RepaymentModel {
  factory _RepaymentModel(
      {required final bool isRepayment,
      final GetMinusTransactionsAroundDateResponse? minusTransactionsAroundDate,
      final String? selectedTransactionId}) = _$RepaymentModelImpl;

  @override
  bool get isRepayment;
  @override
  GetMinusTransactionsAroundDateResponse? get minusTransactionsAroundDate;
  @override
  String? get selectedTransactionId;
  @override
  @JsonKey(ignore: true)
  _$$RepaymentModelImplCopyWith<_$RepaymentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
