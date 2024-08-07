// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'period_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PeriodModel {
  GetInAndOutgoingTransactionAmountsPerPeriodRequest_Period get period =>
      throw _privateConstructorUsedError;
  String get LabelEN => throw _privateConstructorUsedError;
  String get LabelNL => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PeriodModelCopyWith<PeriodModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeriodModelCopyWith<$Res> {
  factory $PeriodModelCopyWith(
          PeriodModel value, $Res Function(PeriodModel) then) =
      _$PeriodModelCopyWithImpl<$Res, PeriodModel>;
  @useResult
  $Res call(
      {GetInAndOutgoingTransactionAmountsPerPeriodRequest_Period period,
      String LabelEN,
      String LabelNL});
}

/// @nodoc
class _$PeriodModelCopyWithImpl<$Res, $Val extends PeriodModel>
    implements $PeriodModelCopyWith<$Res> {
  _$PeriodModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? period = null,
    Object? LabelEN = null,
    Object? LabelNL = null,
  }) {
    return _then(_value.copyWith(
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as GetInAndOutgoingTransactionAmountsPerPeriodRequest_Period,
      LabelEN: null == LabelEN
          ? _value.LabelEN
          : LabelEN // ignore: cast_nullable_to_non_nullable
              as String,
      LabelNL: null == LabelNL
          ? _value.LabelNL
          : LabelNL // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PeriodModelImplCopyWith<$Res>
    implements $PeriodModelCopyWith<$Res> {
  factory _$$PeriodModelImplCopyWith(
          _$PeriodModelImpl value, $Res Function(_$PeriodModelImpl) then) =
      __$$PeriodModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {GetInAndOutgoingTransactionAmountsPerPeriodRequest_Period period,
      String LabelEN,
      String LabelNL});
}

/// @nodoc
class __$$PeriodModelImplCopyWithImpl<$Res>
    extends _$PeriodModelCopyWithImpl<$Res, _$PeriodModelImpl>
    implements _$$PeriodModelImplCopyWith<$Res> {
  __$$PeriodModelImplCopyWithImpl(
      _$PeriodModelImpl _value, $Res Function(_$PeriodModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? period = null,
    Object? LabelEN = null,
    Object? LabelNL = null,
  }) {
    return _then(_$PeriodModelImpl(
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as GetInAndOutgoingTransactionAmountsPerPeriodRequest_Period,
      LabelEN: null == LabelEN
          ? _value.LabelEN
          : LabelEN // ignore: cast_nullable_to_non_nullable
              as String,
      LabelNL: null == LabelNL
          ? _value.LabelNL
          : LabelNL // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PeriodModelImpl implements _PeriodModel {
  _$PeriodModelImpl(
      {required this.period, required this.LabelEN, required this.LabelNL});

  @override
  final GetInAndOutgoingTransactionAmountsPerPeriodRequest_Period period;
  @override
  final String LabelEN;
  @override
  final String LabelNL;

  @override
  String toString() {
    return 'PeriodModel(period: $period, LabelEN: $LabelEN, LabelNL: $LabelNL)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PeriodModelImpl &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.LabelEN, LabelEN) || other.LabelEN == LabelEN) &&
            (identical(other.LabelNL, LabelNL) || other.LabelNL == LabelNL));
  }

  @override
  int get hashCode => Object.hash(runtimeType, period, LabelEN, LabelNL);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PeriodModelImplCopyWith<_$PeriodModelImpl> get copyWith =>
      __$$PeriodModelImplCopyWithImpl<_$PeriodModelImpl>(this, _$identity);
}

abstract class _PeriodModel implements PeriodModel {
  factory _PeriodModel(
      {required final GetInAndOutgoingTransactionAmountsPerPeriodRequest_Period
          period,
      required final String LabelEN,
      required final String LabelNL}) = _$PeriodModelImpl;

  @override
  GetInAndOutgoingTransactionAmountsPerPeriodRequest_Period get period;
  @override
  String get LabelEN;
  @override
  String get LabelNL;
  @override
  @JsonKey(ignore: true)
  _$$PeriodModelImplCopyWith<_$PeriodModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
