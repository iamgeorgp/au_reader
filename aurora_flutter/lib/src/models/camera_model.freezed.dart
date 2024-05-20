// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'camera_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CameraModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() enabled,
    required TResult Function(String? description) disabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enabled,
    TResult? Function(String? description)? disabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enabled,
    TResult Function(String? description)? disabled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EnabledCameraModel value) enabled,
    required TResult Function(_DisabledCameraModel value) disabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EnabledCameraModel value)? enabled,
    TResult? Function(_DisabledCameraModel value)? disabled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnabledCameraModel value)? enabled,
    TResult Function(_DisabledCameraModel value)? disabled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraModelCopyWith<$Res> {
  factory $CameraModelCopyWith(
          CameraModel value, $Res Function(CameraModel) then) =
      _$CameraModelCopyWithImpl<$Res, CameraModel>;
}

/// @nodoc
class _$CameraModelCopyWithImpl<$Res, $Val extends CameraModel>
    implements $CameraModelCopyWith<$Res> {
  _$CameraModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EnabledCameraModelImplCopyWith<$Res> {
  factory _$$EnabledCameraModelImplCopyWith(_$EnabledCameraModelImpl value,
          $Res Function(_$EnabledCameraModelImpl) then) =
      __$$EnabledCameraModelImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EnabledCameraModelImplCopyWithImpl<$Res>
    extends _$CameraModelCopyWithImpl<$Res, _$EnabledCameraModelImpl>
    implements _$$EnabledCameraModelImplCopyWith<$Res> {
  __$$EnabledCameraModelImplCopyWithImpl(_$EnabledCameraModelImpl _value,
      $Res Function(_$EnabledCameraModelImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EnabledCameraModelImpl implements _EnabledCameraModel {
  const _$EnabledCameraModelImpl();

  @override
  String toString() {
    return 'CameraModel.enabled()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EnabledCameraModelImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() enabled,
    required TResult Function(String? description) disabled,
  }) {
    return enabled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enabled,
    TResult? Function(String? description)? disabled,
  }) {
    return enabled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enabled,
    TResult Function(String? description)? disabled,
    required TResult orElse(),
  }) {
    if (enabled != null) {
      return enabled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EnabledCameraModel value) enabled,
    required TResult Function(_DisabledCameraModel value) disabled,
  }) {
    return enabled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EnabledCameraModel value)? enabled,
    TResult? Function(_DisabledCameraModel value)? disabled,
  }) {
    return enabled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnabledCameraModel value)? enabled,
    TResult Function(_DisabledCameraModel value)? disabled,
    required TResult orElse(),
  }) {
    if (enabled != null) {
      return enabled(this);
    }
    return orElse();
  }
}

abstract class _EnabledCameraModel implements CameraModel {
  const factory _EnabledCameraModel() = _$EnabledCameraModelImpl;
}

/// @nodoc
abstract class _$$DisabledCameraModelImplCopyWith<$Res> {
  factory _$$DisabledCameraModelImplCopyWith(_$DisabledCameraModelImpl value,
          $Res Function(_$DisabledCameraModelImpl) then) =
      __$$DisabledCameraModelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? description});
}

/// @nodoc
class __$$DisabledCameraModelImplCopyWithImpl<$Res>
    extends _$CameraModelCopyWithImpl<$Res, _$DisabledCameraModelImpl>
    implements _$$DisabledCameraModelImplCopyWith<$Res> {
  __$$DisabledCameraModelImplCopyWithImpl(_$DisabledCameraModelImpl _value,
      $Res Function(_$DisabledCameraModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_$DisabledCameraModelImpl(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$DisabledCameraModelImpl implements _DisabledCameraModel {
  const _$DisabledCameraModelImpl({this.description});

  @override
  final String? description;

  @override
  String toString() {
    return 'CameraModel.disabled(description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisabledCameraModelImpl &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DisabledCameraModelImplCopyWith<_$DisabledCameraModelImpl> get copyWith =>
      __$$DisabledCameraModelImplCopyWithImpl<_$DisabledCameraModelImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() enabled,
    required TResult Function(String? description) disabled,
  }) {
    return disabled(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? enabled,
    TResult? Function(String? description)? disabled,
  }) {
    return disabled?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? enabled,
    TResult Function(String? description)? disabled,
    required TResult orElse(),
  }) {
    if (disabled != null) {
      return disabled(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EnabledCameraModel value) enabled,
    required TResult Function(_DisabledCameraModel value) disabled,
  }) {
    return disabled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EnabledCameraModel value)? enabled,
    TResult? Function(_DisabledCameraModel value)? disabled,
  }) {
    return disabled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EnabledCameraModel value)? enabled,
    TResult Function(_DisabledCameraModel value)? disabled,
    required TResult orElse(),
  }) {
    if (disabled != null) {
      return disabled(this);
    }
    return orElse();
  }
}

abstract class _DisabledCameraModel implements CameraModel {
  const factory _DisabledCameraModel({final String? description}) =
      _$DisabledCameraModelImpl;

  String? get description;
  @JsonKey(ignore: true)
  _$$DisabledCameraModelImplCopyWith<_$DisabledCameraModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
