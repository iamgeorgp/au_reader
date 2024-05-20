// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo_check_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PhotoCheckModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) photo,
    required TResult Function(String? message) error,
    required TResult Function(String? description) idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String path)? photo,
    TResult? Function(String? message)? error,
    TResult? Function(String? description)? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path)? photo,
    TResult Function(String? message)? error,
    TResult Function(String? description)? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhotoCheckModelPhoto value) photo,
    required TResult Function(_PhotoCheckModelError value) error,
    required TResult Function(_PhotoCheckModelIdle value) idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhotoCheckModelPhoto value)? photo,
    TResult? Function(_PhotoCheckModelError value)? error,
    TResult? Function(_PhotoCheckModelIdle value)? idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotoCheckModelPhoto value)? photo,
    TResult Function(_PhotoCheckModelError value)? error,
    TResult Function(_PhotoCheckModelIdle value)? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoCheckModelCopyWith<$Res> {
  factory $PhotoCheckModelCopyWith(
          PhotoCheckModel value, $Res Function(PhotoCheckModel) then) =
      _$PhotoCheckModelCopyWithImpl<$Res, PhotoCheckModel>;
}

/// @nodoc
class _$PhotoCheckModelCopyWithImpl<$Res, $Val extends PhotoCheckModel>
    implements $PhotoCheckModelCopyWith<$Res> {
  _$PhotoCheckModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$PhotoCheckModelPhotoImplCopyWith<$Res> {
  factory _$$PhotoCheckModelPhotoImplCopyWith(_$PhotoCheckModelPhotoImpl value,
          $Res Function(_$PhotoCheckModelPhotoImpl) then) =
      __$$PhotoCheckModelPhotoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$PhotoCheckModelPhotoImplCopyWithImpl<$Res>
    extends _$PhotoCheckModelCopyWithImpl<$Res, _$PhotoCheckModelPhotoImpl>
    implements _$$PhotoCheckModelPhotoImplCopyWith<$Res> {
  __$$PhotoCheckModelPhotoImplCopyWithImpl(_$PhotoCheckModelPhotoImpl _value,
      $Res Function(_$PhotoCheckModelPhotoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$PhotoCheckModelPhotoImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhotoCheckModelPhotoImpl implements _PhotoCheckModelPhoto {
  const _$PhotoCheckModelPhotoImpl({required this.path});

  @override
  final String path;

  @override
  String toString() {
    return 'PhotoCheckModel.photo(path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoCheckModelPhotoImpl &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoCheckModelPhotoImplCopyWith<_$PhotoCheckModelPhotoImpl>
      get copyWith =>
          __$$PhotoCheckModelPhotoImplCopyWithImpl<_$PhotoCheckModelPhotoImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) photo,
    required TResult Function(String? message) error,
    required TResult Function(String? description) idle,
  }) {
    return photo(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String path)? photo,
    TResult? Function(String? message)? error,
    TResult? Function(String? description)? idle,
  }) {
    return photo?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path)? photo,
    TResult Function(String? message)? error,
    TResult Function(String? description)? idle,
    required TResult orElse(),
  }) {
    if (photo != null) {
      return photo(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhotoCheckModelPhoto value) photo,
    required TResult Function(_PhotoCheckModelError value) error,
    required TResult Function(_PhotoCheckModelIdle value) idle,
  }) {
    return photo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhotoCheckModelPhoto value)? photo,
    TResult? Function(_PhotoCheckModelError value)? error,
    TResult? Function(_PhotoCheckModelIdle value)? idle,
  }) {
    return photo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotoCheckModelPhoto value)? photo,
    TResult Function(_PhotoCheckModelError value)? error,
    TResult Function(_PhotoCheckModelIdle value)? idle,
    required TResult orElse(),
  }) {
    if (photo != null) {
      return photo(this);
    }
    return orElse();
  }
}

abstract class _PhotoCheckModelPhoto implements PhotoCheckModel {
  const factory _PhotoCheckModelPhoto({required final String path}) =
      _$PhotoCheckModelPhotoImpl;

  String get path;
  @JsonKey(ignore: true)
  _$$PhotoCheckModelPhotoImplCopyWith<_$PhotoCheckModelPhotoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PhotoCheckModelErrorImplCopyWith<$Res> {
  factory _$$PhotoCheckModelErrorImplCopyWith(_$PhotoCheckModelErrorImpl value,
          $Res Function(_$PhotoCheckModelErrorImpl) then) =
      __$$PhotoCheckModelErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$PhotoCheckModelErrorImplCopyWithImpl<$Res>
    extends _$PhotoCheckModelCopyWithImpl<$Res, _$PhotoCheckModelErrorImpl>
    implements _$$PhotoCheckModelErrorImplCopyWith<$Res> {
  __$$PhotoCheckModelErrorImplCopyWithImpl(_$PhotoCheckModelErrorImpl _value,
      $Res Function(_$PhotoCheckModelErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$PhotoCheckModelErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PhotoCheckModelErrorImpl implements _PhotoCheckModelError {
  const _$PhotoCheckModelErrorImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'PhotoCheckModel.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoCheckModelErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoCheckModelErrorImplCopyWith<_$PhotoCheckModelErrorImpl>
      get copyWith =>
          __$$PhotoCheckModelErrorImplCopyWithImpl<_$PhotoCheckModelErrorImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) photo,
    required TResult Function(String? message) error,
    required TResult Function(String? description) idle,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String path)? photo,
    TResult? Function(String? message)? error,
    TResult? Function(String? description)? idle,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path)? photo,
    TResult Function(String? message)? error,
    TResult Function(String? description)? idle,
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
    required TResult Function(_PhotoCheckModelPhoto value) photo,
    required TResult Function(_PhotoCheckModelError value) error,
    required TResult Function(_PhotoCheckModelIdle value) idle,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhotoCheckModelPhoto value)? photo,
    TResult? Function(_PhotoCheckModelError value)? error,
    TResult? Function(_PhotoCheckModelIdle value)? idle,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotoCheckModelPhoto value)? photo,
    TResult Function(_PhotoCheckModelError value)? error,
    TResult Function(_PhotoCheckModelIdle value)? idle,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _PhotoCheckModelError implements PhotoCheckModel {
  const factory _PhotoCheckModelError({final String? message}) =
      _$PhotoCheckModelErrorImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$PhotoCheckModelErrorImplCopyWith<_$PhotoCheckModelErrorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PhotoCheckModelIdleImplCopyWith<$Res> {
  factory _$$PhotoCheckModelIdleImplCopyWith(_$PhotoCheckModelIdleImpl value,
          $Res Function(_$PhotoCheckModelIdleImpl) then) =
      __$$PhotoCheckModelIdleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? description});
}

/// @nodoc
class __$$PhotoCheckModelIdleImplCopyWithImpl<$Res>
    extends _$PhotoCheckModelCopyWithImpl<$Res, _$PhotoCheckModelIdleImpl>
    implements _$$PhotoCheckModelIdleImplCopyWith<$Res> {
  __$$PhotoCheckModelIdleImplCopyWithImpl(_$PhotoCheckModelIdleImpl _value,
      $Res Function(_$PhotoCheckModelIdleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
  }) {
    return _then(_$PhotoCheckModelIdleImpl(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PhotoCheckModelIdleImpl implements _PhotoCheckModelIdle {
  const _$PhotoCheckModelIdleImpl({this.description});

  @override
  final String? description;

  @override
  String toString() {
    return 'PhotoCheckModel.idle(description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhotoCheckModelIdleImpl &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhotoCheckModelIdleImplCopyWith<_$PhotoCheckModelIdleImpl> get copyWith =>
      __$$PhotoCheckModelIdleImplCopyWithImpl<_$PhotoCheckModelIdleImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) photo,
    required TResult Function(String? message) error,
    required TResult Function(String? description) idle,
  }) {
    return idle(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String path)? photo,
    TResult? Function(String? message)? error,
    TResult? Function(String? description)? idle,
  }) {
    return idle?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path)? photo,
    TResult Function(String? message)? error,
    TResult Function(String? description)? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PhotoCheckModelPhoto value) photo,
    required TResult Function(_PhotoCheckModelError value) error,
    required TResult Function(_PhotoCheckModelIdle value) idle,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PhotoCheckModelPhoto value)? photo,
    TResult? Function(_PhotoCheckModelError value)? error,
    TResult? Function(_PhotoCheckModelIdle value)? idle,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PhotoCheckModelPhoto value)? photo,
    TResult Function(_PhotoCheckModelError value)? error,
    TResult Function(_PhotoCheckModelIdle value)? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _PhotoCheckModelIdle implements PhotoCheckModel {
  const factory _PhotoCheckModelIdle({final String? description}) =
      _$PhotoCheckModelIdleImpl;

  String? get description;
  @JsonKey(ignore: true)
  _$$PhotoCheckModelIdleImplCopyWith<_$PhotoCheckModelIdleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
