// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'period_selector_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PeriodSelectorModel {
  int get selectedIndex => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PeriodSelectorModelCopyWith<PeriodSelectorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeriodSelectorModelCopyWith<$Res> {
  factory $PeriodSelectorModelCopyWith(
          PeriodSelectorModel value, $Res Function(PeriodSelectorModel) then) =
      _$PeriodSelectorModelCopyWithImpl<$Res, PeriodSelectorModel>;
  @useResult
  $Res call({int selectedIndex, int limit, int offset});
}

/// @nodoc
class _$PeriodSelectorModelCopyWithImpl<$Res, $Val extends PeriodSelectorModel>
    implements $PeriodSelectorModelCopyWith<$Res> {
  _$PeriodSelectorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
    Object? limit = null,
    Object? offset = null,
  }) {
    return _then(_value.copyWith(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PeriodSelectorModelImplCopyWith<$Res>
    implements $PeriodSelectorModelCopyWith<$Res> {
  factory _$$PeriodSelectorModelImplCopyWith(_$PeriodSelectorModelImpl value,
          $Res Function(_$PeriodSelectorModelImpl) then) =
      __$$PeriodSelectorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int selectedIndex, int limit, int offset});
}

/// @nodoc
class __$$PeriodSelectorModelImplCopyWithImpl<$Res>
    extends _$PeriodSelectorModelCopyWithImpl<$Res, _$PeriodSelectorModelImpl>
    implements _$$PeriodSelectorModelImplCopyWith<$Res> {
  __$$PeriodSelectorModelImplCopyWithImpl(_$PeriodSelectorModelImpl _value,
      $Res Function(_$PeriodSelectorModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
    Object? limit = null,
    Object? offset = null,
  }) {
    return _then(_$PeriodSelectorModelImpl(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PeriodSelectorModelImpl implements _PeriodSelectorModel {
  _$PeriodSelectorModelImpl(
      {required this.selectedIndex, required this.limit, required this.offset});

  @override
  final int selectedIndex;
  @override
  final int limit;
  @override
  final int offset;

  @override
  String toString() {
    return 'PeriodSelectorModel(selectedIndex: $selectedIndex, limit: $limit, offset: $offset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PeriodSelectorModelImpl &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedIndex, limit, offset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PeriodSelectorModelImplCopyWith<_$PeriodSelectorModelImpl> get copyWith =>
      __$$PeriodSelectorModelImplCopyWithImpl<_$PeriodSelectorModelImpl>(
          this, _$identity);
}

abstract class _PeriodSelectorModel implements PeriodSelectorModel {
  factory _PeriodSelectorModel(
      {required final int selectedIndex,
      required final int limit,
      required final int offset}) = _$PeriodSelectorModelImpl;

  @override
  int get selectedIndex;
  @override
  int get limit;
  @override
  int get offset;
  @override
  @JsonKey(ignore: true)
  _$$PeriodSelectorModelImplCopyWith<_$PeriodSelectorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
