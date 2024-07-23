// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'categorize_transaction_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategorizeTransactionModel {
  GetUncategorizedTransactionResponse get uncategorizedTransaction =>
      throw _privateConstructorUsedError;
  List<String> get toBeCategorizedTransactionIds =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CategorizeTransactionModelCopyWith<CategorizeTransactionModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategorizeTransactionModelCopyWith<$Res> {
  factory $CategorizeTransactionModelCopyWith(CategorizeTransactionModel value,
          $Res Function(CategorizeTransactionModel) then) =
      _$CategorizeTransactionModelCopyWithImpl<$Res,
          CategorizeTransactionModel>;
  @useResult
  $Res call(
      {GetUncategorizedTransactionResponse uncategorizedTransaction,
      List<String> toBeCategorizedTransactionIds});
}

/// @nodoc
class _$CategorizeTransactionModelCopyWithImpl<$Res,
        $Val extends CategorizeTransactionModel>
    implements $CategorizeTransactionModelCopyWith<$Res> {
  _$CategorizeTransactionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uncategorizedTransaction = null,
    Object? toBeCategorizedTransactionIds = null,
  }) {
    return _then(_value.copyWith(
      uncategorizedTransaction: null == uncategorizedTransaction
          ? _value.uncategorizedTransaction
          : uncategorizedTransaction // ignore: cast_nullable_to_non_nullable
              as GetUncategorizedTransactionResponse,
      toBeCategorizedTransactionIds: null == toBeCategorizedTransactionIds
          ? _value.toBeCategorizedTransactionIds
          : toBeCategorizedTransactionIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategorizeTransactionModelImplCopyWith<$Res>
    implements $CategorizeTransactionModelCopyWith<$Res> {
  factory _$$CategorizeTransactionModelImplCopyWith(
          _$CategorizeTransactionModelImpl value,
          $Res Function(_$CategorizeTransactionModelImpl) then) =
      __$$CategorizeTransactionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GetUncategorizedTransactionResponse uncategorizedTransaction,
      List<String> toBeCategorizedTransactionIds});
}

/// @nodoc
class __$$CategorizeTransactionModelImplCopyWithImpl<$Res>
    extends _$CategorizeTransactionModelCopyWithImpl<$Res,
        _$CategorizeTransactionModelImpl>
    implements _$$CategorizeTransactionModelImplCopyWith<$Res> {
  __$$CategorizeTransactionModelImplCopyWithImpl(
      _$CategorizeTransactionModelImpl _value,
      $Res Function(_$CategorizeTransactionModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uncategorizedTransaction = null,
    Object? toBeCategorizedTransactionIds = null,
  }) {
    return _then(_$CategorizeTransactionModelImpl(
      uncategorizedTransaction: null == uncategorizedTransaction
          ? _value.uncategorizedTransaction
          : uncategorizedTransaction // ignore: cast_nullable_to_non_nullable
              as GetUncategorizedTransactionResponse,
      toBeCategorizedTransactionIds: null == toBeCategorizedTransactionIds
          ? _value._toBeCategorizedTransactionIds
          : toBeCategorizedTransactionIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$CategorizeTransactionModelImpl implements _CategorizeTransactionModel {
  _$CategorizeTransactionModelImpl(
      {required this.uncategorizedTransaction,
      required final List<String> toBeCategorizedTransactionIds})
      : _toBeCategorizedTransactionIds = toBeCategorizedTransactionIds;

  @override
  final GetUncategorizedTransactionResponse uncategorizedTransaction;
  final List<String> _toBeCategorizedTransactionIds;
  @override
  List<String> get toBeCategorizedTransactionIds {
    if (_toBeCategorizedTransactionIds is EqualUnmodifiableListView)
      return _toBeCategorizedTransactionIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_toBeCategorizedTransactionIds);
  }

  @override
  String toString() {
    return 'CategorizeTransactionModel(uncategorizedTransaction: $uncategorizedTransaction, toBeCategorizedTransactionIds: $toBeCategorizedTransactionIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategorizeTransactionModelImpl &&
            (identical(
                    other.uncategorizedTransaction, uncategorizedTransaction) ||
                other.uncategorizedTransaction == uncategorizedTransaction) &&
            const DeepCollectionEquality().equals(
                other._toBeCategorizedTransactionIds,
                _toBeCategorizedTransactionIds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uncategorizedTransaction,
      const DeepCollectionEquality().hash(_toBeCategorizedTransactionIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategorizeTransactionModelImplCopyWith<_$CategorizeTransactionModelImpl>
      get copyWith => __$$CategorizeTransactionModelImplCopyWithImpl<
          _$CategorizeTransactionModelImpl>(this, _$identity);
}

abstract class _CategorizeTransactionModel
    implements CategorizeTransactionModel {
  factory _CategorizeTransactionModel(
          {required final GetUncategorizedTransactionResponse
              uncategorizedTransaction,
          required final List<String> toBeCategorizedTransactionIds}) =
      _$CategorizeTransactionModelImpl;

  @override
  GetUncategorizedTransactionResponse get uncategorizedTransaction;
  @override
  List<String> get toBeCategorizedTransactionIds;
  @override
  @JsonKey(ignore: true)
  _$$CategorizeTransactionModelImplCopyWith<_$CategorizeTransactionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
