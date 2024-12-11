// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'taskmo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Taskmo _$TaskmoFromJson(Map<String, dynamic> json) {
  return _Taskmo.fromJson(json);
}

/// @nodoc
mixin _$Taskmo {
  String get task => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;

  /// Serializes this Taskmo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Taskmo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TaskmoCopyWith<Taskmo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskmoCopyWith<$Res> {
  factory $TaskmoCopyWith(Taskmo value, $Res Function(Taskmo) then) =
      _$TaskmoCopyWithImpl<$Res, Taskmo>;
  @useResult
  $Res call({String task, bool completed});
}

/// @nodoc
class _$TaskmoCopyWithImpl<$Res, $Val extends Taskmo>
    implements $TaskmoCopyWith<$Res> {
  _$TaskmoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Taskmo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
    Object? completed = null,
  }) {
    return _then(_value.copyWith(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskmoImplCopyWith<$Res> implements $TaskmoCopyWith<$Res> {
  factory _$$TaskmoImplCopyWith(
          _$TaskmoImpl value, $Res Function(_$TaskmoImpl) then) =
      __$$TaskmoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String task, bool completed});
}

/// @nodoc
class __$$TaskmoImplCopyWithImpl<$Res>
    extends _$TaskmoCopyWithImpl<$Res, _$TaskmoImpl>
    implements _$$TaskmoImplCopyWith<$Res> {
  __$$TaskmoImplCopyWithImpl(
      _$TaskmoImpl _value, $Res Function(_$TaskmoImpl) _then)
      : super(_value, _then);

  /// Create a copy of Taskmo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
    Object? completed = null,
  }) {
    return _then(_$TaskmoImpl(
      task: null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TaskmoImpl implements _Taskmo {
  const _$TaskmoImpl({required this.task, required this.completed});

  factory _$TaskmoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskmoImplFromJson(json);

  @override
  final String task;
  @override
  final bool completed;

  @override
  String toString() {
    return 'Taskmo(task: $task, completed: $completed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskmoImpl &&
            (identical(other.task, task) || other.task == task) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, task, completed);

  /// Create a copy of Taskmo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskmoImplCopyWith<_$TaskmoImpl> get copyWith =>
      __$$TaskmoImplCopyWithImpl<_$TaskmoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaskmoImplToJson(
      this,
    );
  }
}

abstract class _Taskmo implements Taskmo {
  const factory _Taskmo(
      {required final String task,
      required final bool completed}) = _$TaskmoImpl;

  factory _Taskmo.fromJson(Map<String, dynamic> json) = _$TaskmoImpl.fromJson;

  @override
  String get task;
  @override
  bool get completed;

  /// Create a copy of Taskmo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TaskmoImplCopyWith<_$TaskmoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
