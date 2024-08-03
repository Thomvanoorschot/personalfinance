// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'balances_per_day_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BalancesPerDayModel {
  GetBalancesPerDayResponse get balancesPerDay =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BalancesPerDayModelCopyWith<BalancesPerDayModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BalancesPerDayModelCopyWith<$Res> {
  factory $BalancesPerDayModelCopyWith(
          BalancesPerDayModel value, $Res Function(BalancesPerDayModel) then) =
      _$BalancesPerDayModelCopyWithImpl<$Res, BalancesPerDayModel>;
  @useResult
  $Res call({GetBalancesPerDayResponse balancesPerDay});
}

/// @nodoc
class _$BalancesPerDayModelCopyWithImpl<$Res, $Val extends BalancesPerDayModel>
    implements $BalancesPerDayModelCopyWith<$Res> {
  _$BalancesPerDayModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balancesPerDay = null,
  }) {
    return _then(_value.copyWith(
      balancesPerDay: null == balancesPerDay
          ? _value.balancesPerDay
          : balancesPerDay // ignore: cast_nullable_to_non_nullable
              as GetBalancesPerDayResponse,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BalancesPerDayModelImplCopyWith<$Res>
    implements $BalancesPerDayModelCopyWith<$Res> {
  factory _$$BalancesPerDayModelImplCopyWith(_$BalancesPerDayModelImpl value,
          $Res Function(_$BalancesPerDayModelImpl) then) =
      __$$BalancesPerDayModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GetBalancesPerDayResponse balancesPerDay});
}

/// @nodoc
class __$$BalancesPerDayModelImplCopyWithImpl<$Res>
    extends _$BalancesPerDayModelCopyWithImpl<$Res, _$BalancesPerDayModelImpl>
    implements _$$BalancesPerDayModelImplCopyWith<$Res> {
  __$$BalancesPerDayModelImplCopyWithImpl(_$BalancesPerDayModelImpl _value,
      $Res Function(_$BalancesPerDayModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balancesPerDay = null,
  }) {
    return _then(_$BalancesPerDayModelImpl(
      balancesPerDay: null == balancesPerDay
          ? _value.balancesPerDay
          : balancesPerDay // ignore: cast_nullable_to_non_nullable
              as GetBalancesPerDayResponse,
    ));
  }
}

/// @nodoc

class _$BalancesPerDayModelImpl implements _BalancesPerDayModel {
  _$BalancesPerDayModelImpl({required this.balancesPerDay});

  @override
  final GetBalancesPerDayResponse balancesPerDay;

  @override
  String toString() {
    return 'BalancesPerDayModel(balancesPerDay: $balancesPerDay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BalancesPerDayModelImpl &&
            (identical(other.balancesPerDay, balancesPerDay) ||
                other.balancesPerDay == balancesPerDay));
  }

  @override
  int get hashCode => Object.hash(runtimeType, balancesPerDay);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BalancesPerDayModelImplCopyWith<_$BalancesPerDayModelImpl> get copyWith =>
      __$$BalancesPerDayModelImplCopyWithImpl<_$BalancesPerDayModelImpl>(
          this, _$identity);
}

abstract class _BalancesPerDayModel implements BalancesPerDayModel {
  factory _BalancesPerDayModel(
          {required final GetBalancesPerDayResponse balancesPerDay}) =
      _$BalancesPerDayModelImpl;

  @override
  GetBalancesPerDayResponse get balancesPerDay;
  @override
  @JsonKey(ignore: true)
  _$$BalancesPerDayModelImplCopyWith<_$BalancesPerDayModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
