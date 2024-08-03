// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_range_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TimeRangeModel {
  int get selectedIndex => throw _privateConstructorUsedError;
  DateTime get start => throw _privateConstructorUsedError;
  DateTime get end => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimeRangeModelCopyWith<TimeRangeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeRangeModelCopyWith<$Res> {
  factory $TimeRangeModelCopyWith(
          TimeRangeModel value, $Res Function(TimeRangeModel) then) =
      _$TimeRangeModelCopyWithImpl<$Res, TimeRangeModel>;
  @useResult
  $Res call({int selectedIndex, DateTime start, DateTime end});
}

/// @nodoc
class _$TimeRangeModelCopyWithImpl<$Res, $Val extends TimeRangeModel>
    implements $TimeRangeModelCopyWith<$Res> {
  _$TimeRangeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_value.copyWith(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimeRangeModelImplCopyWith<$Res>
    implements $TimeRangeModelCopyWith<$Res> {
  factory _$$TimeRangeModelImplCopyWith(_$TimeRangeModelImpl value,
          $Res Function(_$TimeRangeModelImpl) then) =
      __$$TimeRangeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int selectedIndex, DateTime start, DateTime end});
}

/// @nodoc
class __$$TimeRangeModelImplCopyWithImpl<$Res>
    extends _$TimeRangeModelCopyWithImpl<$Res, _$TimeRangeModelImpl>
    implements _$$TimeRangeModelImplCopyWith<$Res> {
  __$$TimeRangeModelImplCopyWithImpl(
      _$TimeRangeModelImpl _value, $Res Function(_$TimeRangeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedIndex = null,
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_$TimeRangeModelImpl(
      selectedIndex: null == selectedIndex
          ? _value.selectedIndex
          : selectedIndex // ignore: cast_nullable_to_non_nullable
              as int,
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as DateTime,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$TimeRangeModelImpl implements _TimeRangeModel {
  _$TimeRangeModelImpl(
      {required this.selectedIndex, required this.start, required this.end});

  @override
  final int selectedIndex;
  @override
  final DateTime start;
  @override
  final DateTime end;

  @override
  String toString() {
    return 'TimeRangeModel(selectedIndex: $selectedIndex, start: $start, end: $end)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeRangeModelImpl &&
            (identical(other.selectedIndex, selectedIndex) ||
                other.selectedIndex == selectedIndex) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedIndex, start, end);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeRangeModelImplCopyWith<_$TimeRangeModelImpl> get copyWith =>
      __$$TimeRangeModelImplCopyWithImpl<_$TimeRangeModelImpl>(
          this, _$identity);
}

abstract class _TimeRangeModel implements TimeRangeModel {
  factory _TimeRangeModel(
      {required final int selectedIndex,
      required final DateTime start,
      required final DateTime end}) = _$TimeRangeModelImpl;

  @override
  int get selectedIndex;
  @override
  DateTime get start;
  @override
  DateTime get end;
  @override
  @JsonKey(ignore: true)
  _$$TimeRangeModelImplCopyWith<_$TimeRangeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
