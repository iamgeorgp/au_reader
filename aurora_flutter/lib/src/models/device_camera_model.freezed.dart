// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_camera_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeviceCameraModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CameraDescription> availableCameras)
        available,
    required TResult Function() empty,
    required TResult Function() rejected,
    required TResult Function(String? message) error,
    required TResult Function() idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CameraDescription> availableCameras)? available,
    TResult? Function()? empty,
    TResult? Function()? rejected,
    TResult? Function(String? message)? error,
    TResult? Function()? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CameraDescription> availableCameras)? available,
    TResult Function()? empty,
    TResult Function()? rejected,
    TResult Function(String? message)? error,
    TResult Function()? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AvailableDeviceCameraModel value) available,
    required TResult Function(_EmptyDeviceCameraModel value) empty,
    required TResult Function(_RejectedDeviceCameraModel value) rejected,
    required TResult Function(_ErrorDeviceCameraModel value) error,
    required TResult Function(_IdleDeviceCameraModel value) idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AvailableDeviceCameraModel value)? available,
    TResult? Function(_EmptyDeviceCameraModel value)? empty,
    TResult? Function(_RejectedDeviceCameraModel value)? rejected,
    TResult? Function(_ErrorDeviceCameraModel value)? error,
    TResult? Function(_IdleDeviceCameraModel value)? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AvailableDeviceCameraModel value)? available,
    TResult Function(_EmptyDeviceCameraModel value)? empty,
    TResult Function(_RejectedDeviceCameraModel value)? rejected,
    TResult Function(_ErrorDeviceCameraModel value)? error,
    TResult Function(_IdleDeviceCameraModel value)? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceCameraModelCopyWith<$Res> {
  factory $DeviceCameraModelCopyWith(
          DeviceCameraModel value, $Res Function(DeviceCameraModel) then) =
      _$DeviceCameraModelCopyWithImpl<$Res, DeviceCameraModel>;
}

/// @nodoc
class _$DeviceCameraModelCopyWithImpl<$Res, $Val extends DeviceCameraModel>
    implements $DeviceCameraModelCopyWith<$Res> {
  _$DeviceCameraModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AvailableDeviceCameraModelImplCopyWith<$Res> {
  factory _$$AvailableDeviceCameraModelImplCopyWith(
          _$AvailableDeviceCameraModelImpl value,
          $Res Function(_$AvailableDeviceCameraModelImpl) then) =
      __$$AvailableDeviceCameraModelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<CameraDescription> availableCameras});
}

/// @nodoc
class __$$AvailableDeviceCameraModelImplCopyWithImpl<$Res>
    extends _$DeviceCameraModelCopyWithImpl<$Res,
        _$AvailableDeviceCameraModelImpl>
    implements _$$AvailableDeviceCameraModelImplCopyWith<$Res> {
  __$$AvailableDeviceCameraModelImplCopyWithImpl(
      _$AvailableDeviceCameraModelImpl _value,
      $Res Function(_$AvailableDeviceCameraModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? availableCameras = null,
  }) {
    return _then(_$AvailableDeviceCameraModelImpl(
      availableCameras: null == availableCameras
          ? _value.availableCameras
          : availableCameras // ignore: cast_nullable_to_non_nullable
              as List<CameraDescription>,
    ));
  }
}

/// @nodoc

class _$AvailableDeviceCameraModelImpl implements _AvailableDeviceCameraModel {
  const _$AvailableDeviceCameraModelImpl({required this.availableCameras});

  @override
  final List<CameraDescription> availableCameras;

  @override
  String toString() {
    return 'DeviceCameraModel.available(availableCameras: $availableCameras)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailableDeviceCameraModelImpl &&
            const DeepCollectionEquality()
                .equals(other.availableCameras, availableCameras));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(availableCameras));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailableDeviceCameraModelImplCopyWith<_$AvailableDeviceCameraModelImpl>
      get copyWith => __$$AvailableDeviceCameraModelImplCopyWithImpl<
          _$AvailableDeviceCameraModelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CameraDescription> availableCameras)
        available,
    required TResult Function() empty,
    required TResult Function() rejected,
    required TResult Function(String? message) error,
    required TResult Function() idle,
  }) {
    return available(availableCameras);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CameraDescription> availableCameras)? available,
    TResult? Function()? empty,
    TResult? Function()? rejected,
    TResult? Function(String? message)? error,
    TResult? Function()? idle,
  }) {
    return available?.call(availableCameras);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CameraDescription> availableCameras)? available,
    TResult Function()? empty,
    TResult Function()? rejected,
    TResult Function(String? message)? error,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (available != null) {
      return available(availableCameras);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AvailableDeviceCameraModel value) available,
    required TResult Function(_EmptyDeviceCameraModel value) empty,
    required TResult Function(_RejectedDeviceCameraModel value) rejected,
    required TResult Function(_ErrorDeviceCameraModel value) error,
    required TResult Function(_IdleDeviceCameraModel value) idle,
  }) {
    return available(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AvailableDeviceCameraModel value)? available,
    TResult? Function(_EmptyDeviceCameraModel value)? empty,
    TResult? Function(_RejectedDeviceCameraModel value)? rejected,
    TResult? Function(_ErrorDeviceCameraModel value)? error,
    TResult? Function(_IdleDeviceCameraModel value)? idle,
  }) {
    return available?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AvailableDeviceCameraModel value)? available,
    TResult Function(_EmptyDeviceCameraModel value)? empty,
    TResult Function(_RejectedDeviceCameraModel value)? rejected,
    TResult Function(_ErrorDeviceCameraModel value)? error,
    TResult Function(_IdleDeviceCameraModel value)? idle,
    required TResult orElse(),
  }) {
    if (available != null) {
      return available(this);
    }
    return orElse();
  }
}

abstract class _AvailableDeviceCameraModel implements DeviceCameraModel {
  const factory _AvailableDeviceCameraModel(
          {required final List<CameraDescription> availableCameras}) =
      _$AvailableDeviceCameraModelImpl;

  List<CameraDescription> get availableCameras;
  @JsonKey(ignore: true)
  _$$AvailableDeviceCameraModelImplCopyWith<_$AvailableDeviceCameraModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyDeviceCameraModelImplCopyWith<$Res> {
  factory _$$EmptyDeviceCameraModelImplCopyWith(
          _$EmptyDeviceCameraModelImpl value,
          $Res Function(_$EmptyDeviceCameraModelImpl) then) =
      __$$EmptyDeviceCameraModelImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmptyDeviceCameraModelImplCopyWithImpl<$Res>
    extends _$DeviceCameraModelCopyWithImpl<$Res, _$EmptyDeviceCameraModelImpl>
    implements _$$EmptyDeviceCameraModelImplCopyWith<$Res> {
  __$$EmptyDeviceCameraModelImplCopyWithImpl(
      _$EmptyDeviceCameraModelImpl _value,
      $Res Function(_$EmptyDeviceCameraModelImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmptyDeviceCameraModelImpl implements _EmptyDeviceCameraModel {
  const _$EmptyDeviceCameraModelImpl();

  @override
  String toString() {
    return 'DeviceCameraModel.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmptyDeviceCameraModelImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CameraDescription> availableCameras)
        available,
    required TResult Function() empty,
    required TResult Function() rejected,
    required TResult Function(String? message) error,
    required TResult Function() idle,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CameraDescription> availableCameras)? available,
    TResult? Function()? empty,
    TResult? Function()? rejected,
    TResult? Function(String? message)? error,
    TResult? Function()? idle,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CameraDescription> availableCameras)? available,
    TResult Function()? empty,
    TResult Function()? rejected,
    TResult Function(String? message)? error,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AvailableDeviceCameraModel value) available,
    required TResult Function(_EmptyDeviceCameraModel value) empty,
    required TResult Function(_RejectedDeviceCameraModel value) rejected,
    required TResult Function(_ErrorDeviceCameraModel value) error,
    required TResult Function(_IdleDeviceCameraModel value) idle,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AvailableDeviceCameraModel value)? available,
    TResult? Function(_EmptyDeviceCameraModel value)? empty,
    TResult? Function(_RejectedDeviceCameraModel value)? rejected,
    TResult? Function(_ErrorDeviceCameraModel value)? error,
    TResult? Function(_IdleDeviceCameraModel value)? idle,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AvailableDeviceCameraModel value)? available,
    TResult Function(_EmptyDeviceCameraModel value)? empty,
    TResult Function(_RejectedDeviceCameraModel value)? rejected,
    TResult Function(_ErrorDeviceCameraModel value)? error,
    TResult Function(_IdleDeviceCameraModel value)? idle,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _EmptyDeviceCameraModel implements DeviceCameraModel {
  const factory _EmptyDeviceCameraModel() = _$EmptyDeviceCameraModelImpl;
}

/// @nodoc
abstract class _$$RejectedDeviceCameraModelImplCopyWith<$Res> {
  factory _$$RejectedDeviceCameraModelImplCopyWith(
          _$RejectedDeviceCameraModelImpl value,
          $Res Function(_$RejectedDeviceCameraModelImpl) then) =
      __$$RejectedDeviceCameraModelImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RejectedDeviceCameraModelImplCopyWithImpl<$Res>
    extends _$DeviceCameraModelCopyWithImpl<$Res,
        _$RejectedDeviceCameraModelImpl>
    implements _$$RejectedDeviceCameraModelImplCopyWith<$Res> {
  __$$RejectedDeviceCameraModelImplCopyWithImpl(
      _$RejectedDeviceCameraModelImpl _value,
      $Res Function(_$RejectedDeviceCameraModelImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RejectedDeviceCameraModelImpl implements _RejectedDeviceCameraModel {
  const _$RejectedDeviceCameraModelImpl();

  @override
  String toString() {
    return 'DeviceCameraModel.rejected()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RejectedDeviceCameraModelImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CameraDescription> availableCameras)
        available,
    required TResult Function() empty,
    required TResult Function() rejected,
    required TResult Function(String? message) error,
    required TResult Function() idle,
  }) {
    return rejected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CameraDescription> availableCameras)? available,
    TResult? Function()? empty,
    TResult? Function()? rejected,
    TResult? Function(String? message)? error,
    TResult? Function()? idle,
  }) {
    return rejected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CameraDescription> availableCameras)? available,
    TResult Function()? empty,
    TResult Function()? rejected,
    TResult Function(String? message)? error,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (rejected != null) {
      return rejected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AvailableDeviceCameraModel value) available,
    required TResult Function(_EmptyDeviceCameraModel value) empty,
    required TResult Function(_RejectedDeviceCameraModel value) rejected,
    required TResult Function(_ErrorDeviceCameraModel value) error,
    required TResult Function(_IdleDeviceCameraModel value) idle,
  }) {
    return rejected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AvailableDeviceCameraModel value)? available,
    TResult? Function(_EmptyDeviceCameraModel value)? empty,
    TResult? Function(_RejectedDeviceCameraModel value)? rejected,
    TResult? Function(_ErrorDeviceCameraModel value)? error,
    TResult? Function(_IdleDeviceCameraModel value)? idle,
  }) {
    return rejected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AvailableDeviceCameraModel value)? available,
    TResult Function(_EmptyDeviceCameraModel value)? empty,
    TResult Function(_RejectedDeviceCameraModel value)? rejected,
    TResult Function(_ErrorDeviceCameraModel value)? error,
    TResult Function(_IdleDeviceCameraModel value)? idle,
    required TResult orElse(),
  }) {
    if (rejected != null) {
      return rejected(this);
    }
    return orElse();
  }
}

abstract class _RejectedDeviceCameraModel implements DeviceCameraModel {
  const factory _RejectedDeviceCameraModel() = _$RejectedDeviceCameraModelImpl;
}

/// @nodoc
abstract class _$$ErrorDeviceCameraModelImplCopyWith<$Res> {
  factory _$$ErrorDeviceCameraModelImplCopyWith(
          _$ErrorDeviceCameraModelImpl value,
          $Res Function(_$ErrorDeviceCameraModelImpl) then) =
      __$$ErrorDeviceCameraModelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ErrorDeviceCameraModelImplCopyWithImpl<$Res>
    extends _$DeviceCameraModelCopyWithImpl<$Res, _$ErrorDeviceCameraModelImpl>
    implements _$$ErrorDeviceCameraModelImplCopyWith<$Res> {
  __$$ErrorDeviceCameraModelImplCopyWithImpl(
      _$ErrorDeviceCameraModelImpl _value,
      $Res Function(_$ErrorDeviceCameraModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ErrorDeviceCameraModelImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorDeviceCameraModelImpl implements _ErrorDeviceCameraModel {
  const _$ErrorDeviceCameraModelImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'DeviceCameraModel.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorDeviceCameraModelImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorDeviceCameraModelImplCopyWith<_$ErrorDeviceCameraModelImpl>
      get copyWith => __$$ErrorDeviceCameraModelImplCopyWithImpl<
          _$ErrorDeviceCameraModelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CameraDescription> availableCameras)
        available,
    required TResult Function() empty,
    required TResult Function() rejected,
    required TResult Function(String? message) error,
    required TResult Function() idle,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CameraDescription> availableCameras)? available,
    TResult? Function()? empty,
    TResult? Function()? rejected,
    TResult? Function(String? message)? error,
    TResult? Function()? idle,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CameraDescription> availableCameras)? available,
    TResult Function()? empty,
    TResult Function()? rejected,
    TResult Function(String? message)? error,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AvailableDeviceCameraModel value) available,
    required TResult Function(_EmptyDeviceCameraModel value) empty,
    required TResult Function(_RejectedDeviceCameraModel value) rejected,
    required TResult Function(_ErrorDeviceCameraModel value) error,
    required TResult Function(_IdleDeviceCameraModel value) idle,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AvailableDeviceCameraModel value)? available,
    TResult? Function(_EmptyDeviceCameraModel value)? empty,
    TResult? Function(_RejectedDeviceCameraModel value)? rejected,
    TResult? Function(_ErrorDeviceCameraModel value)? error,
    TResult? Function(_IdleDeviceCameraModel value)? idle,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AvailableDeviceCameraModel value)? available,
    TResult Function(_EmptyDeviceCameraModel value)? empty,
    TResult Function(_RejectedDeviceCameraModel value)? rejected,
    TResult Function(_ErrorDeviceCameraModel value)? error,
    TResult Function(_IdleDeviceCameraModel value)? idle,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorDeviceCameraModel implements DeviceCameraModel {
  const factory _ErrorDeviceCameraModel({final String? message}) =
      _$ErrorDeviceCameraModelImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$ErrorDeviceCameraModelImplCopyWith<_$ErrorDeviceCameraModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IdleDeviceCameraModelImplCopyWith<$Res> {
  factory _$$IdleDeviceCameraModelImplCopyWith(
          _$IdleDeviceCameraModelImpl value,
          $Res Function(_$IdleDeviceCameraModelImpl) then) =
      __$$IdleDeviceCameraModelImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IdleDeviceCameraModelImplCopyWithImpl<$Res>
    extends _$DeviceCameraModelCopyWithImpl<$Res, _$IdleDeviceCameraModelImpl>
    implements _$$IdleDeviceCameraModelImplCopyWith<$Res> {
  __$$IdleDeviceCameraModelImplCopyWithImpl(_$IdleDeviceCameraModelImpl _value,
      $Res Function(_$IdleDeviceCameraModelImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IdleDeviceCameraModelImpl implements _IdleDeviceCameraModel {
  const _$IdleDeviceCameraModelImpl();

  @override
  String toString() {
    return 'DeviceCameraModel.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdleDeviceCameraModelImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<CameraDescription> availableCameras)
        available,
    required TResult Function() empty,
    required TResult Function() rejected,
    required TResult Function(String? message) error,
    required TResult Function() idle,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<CameraDescription> availableCameras)? available,
    TResult? Function()? empty,
    TResult? Function()? rejected,
    TResult? Function(String? message)? error,
    TResult? Function()? idle,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<CameraDescription> availableCameras)? available,
    TResult Function()? empty,
    TResult Function()? rejected,
    TResult Function(String? message)? error,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AvailableDeviceCameraModel value) available,
    required TResult Function(_EmptyDeviceCameraModel value) empty,
    required TResult Function(_RejectedDeviceCameraModel value) rejected,
    required TResult Function(_ErrorDeviceCameraModel value) error,
    required TResult Function(_IdleDeviceCameraModel value) idle,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AvailableDeviceCameraModel value)? available,
    TResult? Function(_EmptyDeviceCameraModel value)? empty,
    TResult? Function(_RejectedDeviceCameraModel value)? rejected,
    TResult? Function(_ErrorDeviceCameraModel value)? error,
    TResult? Function(_IdleDeviceCameraModel value)? idle,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AvailableDeviceCameraModel value)? available,
    TResult Function(_EmptyDeviceCameraModel value)? empty,
    TResult Function(_RejectedDeviceCameraModel value)? rejected,
    TResult Function(_ErrorDeviceCameraModel value)? error,
    TResult Function(_IdleDeviceCameraModel value)? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _IdleDeviceCameraModel implements DeviceCameraModel {
  const factory _IdleDeviceCameraModel() = _$IdleDeviceCameraModelImpl;
}
