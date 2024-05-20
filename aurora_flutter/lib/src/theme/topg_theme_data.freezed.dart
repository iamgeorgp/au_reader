// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'topg_theme_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TopGThemeData {
  TopGMode get mode => throw _privateConstructorUsedError;
  ColorScheme get colorScheme => throw _privateConstructorUsedError;
  SettingsThemeData get settings => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            TopGMode mode, ColorScheme colorScheme, SettingsThemeData settings)
        light,
    required TResult Function(
            TopGMode mode, ColorScheme colorScheme, SettingsThemeData settings)
        dark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            TopGMode mode, ColorScheme colorScheme, SettingsThemeData settings)?
        light,
    TResult? Function(
            TopGMode mode, ColorScheme colorScheme, SettingsThemeData settings)?
        dark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            TopGMode mode, ColorScheme colorScheme, SettingsThemeData settings)?
        light,
    TResult Function(
            TopGMode mode, ColorScheme colorScheme, SettingsThemeData settings)?
        dark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TopGThemeDataLight value) light,
    required TResult Function(_TopGThemeDataDark value) dark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TopGThemeDataLight value)? light,
    TResult? Function(_TopGThemeDataDark value)? dark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TopGThemeDataLight value)? light,
    TResult Function(_TopGThemeDataDark value)? dark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TopGThemeDataCopyWith<TopGThemeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopGThemeDataCopyWith<$Res> {
  factory $TopGThemeDataCopyWith(
          TopGThemeData value, $Res Function(TopGThemeData) then) =
      _$TopGThemeDataCopyWithImpl<$Res, TopGThemeData>;
  @useResult
  $Res call(
      {TopGMode mode, ColorScheme colorScheme, SettingsThemeData settings});

  $SettingsThemeDataCopyWith<$Res> get settings;
}

/// @nodoc
class _$TopGThemeDataCopyWithImpl<$Res, $Val extends TopGThemeData>
    implements $TopGThemeDataCopyWith<$Res> {
  _$TopGThemeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
    Object? colorScheme = null,
    Object? settings = null,
  }) {
    return _then(_value.copyWith(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as TopGMode,
      colorScheme: null == colorScheme
          ? _value.colorScheme
          : colorScheme // ignore: cast_nullable_to_non_nullable
              as ColorScheme,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as SettingsThemeData,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SettingsThemeDataCopyWith<$Res> get settings {
    return $SettingsThemeDataCopyWith<$Res>(_value.settings, (value) {
      return _then(_value.copyWith(settings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TopGThemeDataLightImplCopyWith<$Res>
    implements $TopGThemeDataCopyWith<$Res> {
  factory _$$TopGThemeDataLightImplCopyWith(_$TopGThemeDataLightImpl value,
          $Res Function(_$TopGThemeDataLightImpl) then) =
      __$$TopGThemeDataLightImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TopGMode mode, ColorScheme colorScheme, SettingsThemeData settings});

  @override
  $SettingsThemeDataCopyWith<$Res> get settings;
}

/// @nodoc
class __$$TopGThemeDataLightImplCopyWithImpl<$Res>
    extends _$TopGThemeDataCopyWithImpl<$Res, _$TopGThemeDataLightImpl>
    implements _$$TopGThemeDataLightImplCopyWith<$Res> {
  __$$TopGThemeDataLightImplCopyWithImpl(_$TopGThemeDataLightImpl _value,
      $Res Function(_$TopGThemeDataLightImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
    Object? colorScheme = null,
    Object? settings = null,
  }) {
    return _then(_$TopGThemeDataLightImpl(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as TopGMode,
      colorScheme: null == colorScheme
          ? _value.colorScheme
          : colorScheme // ignore: cast_nullable_to_non_nullable
              as ColorScheme,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as SettingsThemeData,
    ));
  }
}

/// @nodoc

class _$TopGThemeDataLightImpl implements _TopGThemeDataLight {
  const _$TopGThemeDataLightImpl(
      {this.mode = TopGMode.light,
      this.colorScheme = TopGColorScheme.light,
      this.settings = const SettingsThemeData.light()});

  @override
  @JsonKey()
  final TopGMode mode;
  @override
  @JsonKey()
  final ColorScheme colorScheme;
  @override
  @JsonKey()
  final SettingsThemeData settings;

  @override
  String toString() {
    return 'TopGThemeData.light(mode: $mode, colorScheme: $colorScheme, settings: $settings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopGThemeDataLightImpl &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.colorScheme, colorScheme) ||
                other.colorScheme == colorScheme) &&
            (identical(other.settings, settings) ||
                other.settings == settings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mode, colorScheme, settings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopGThemeDataLightImplCopyWith<_$TopGThemeDataLightImpl> get copyWith =>
      __$$TopGThemeDataLightImplCopyWithImpl<_$TopGThemeDataLightImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            TopGMode mode, ColorScheme colorScheme, SettingsThemeData settings)
        light,
    required TResult Function(
            TopGMode mode, ColorScheme colorScheme, SettingsThemeData settings)
        dark,
  }) {
    return light(mode, colorScheme, settings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            TopGMode mode, ColorScheme colorScheme, SettingsThemeData settings)?
        light,
    TResult? Function(
            TopGMode mode, ColorScheme colorScheme, SettingsThemeData settings)?
        dark,
  }) {
    return light?.call(mode, colorScheme, settings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            TopGMode mode, ColorScheme colorScheme, SettingsThemeData settings)?
        light,
    TResult Function(
            TopGMode mode, ColorScheme colorScheme, SettingsThemeData settings)?
        dark,
    required TResult orElse(),
  }) {
    if (light != null) {
      return light(mode, colorScheme, settings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TopGThemeDataLight value) light,
    required TResult Function(_TopGThemeDataDark value) dark,
  }) {
    return light(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TopGThemeDataLight value)? light,
    TResult? Function(_TopGThemeDataDark value)? dark,
  }) {
    return light?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TopGThemeDataLight value)? light,
    TResult Function(_TopGThemeDataDark value)? dark,
    required TResult orElse(),
  }) {
    if (light != null) {
      return light(this);
    }
    return orElse();
  }
}

abstract class _TopGThemeDataLight implements TopGThemeData {
  const factory _TopGThemeDataLight(
      {final TopGMode mode,
      final ColorScheme colorScheme,
      final SettingsThemeData settings}) = _$TopGThemeDataLightImpl;

  @override
  TopGMode get mode;
  @override
  ColorScheme get colorScheme;
  @override
  SettingsThemeData get settings;
  @override
  @JsonKey(ignore: true)
  _$$TopGThemeDataLightImplCopyWith<_$TopGThemeDataLightImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TopGThemeDataDarkImplCopyWith<$Res>
    implements $TopGThemeDataCopyWith<$Res> {
  factory _$$TopGThemeDataDarkImplCopyWith(_$TopGThemeDataDarkImpl value,
          $Res Function(_$TopGThemeDataDarkImpl) then) =
      __$$TopGThemeDataDarkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TopGMode mode, ColorScheme colorScheme, SettingsThemeData settings});

  @override
  $SettingsThemeDataCopyWith<$Res> get settings;
}

/// @nodoc
class __$$TopGThemeDataDarkImplCopyWithImpl<$Res>
    extends _$TopGThemeDataCopyWithImpl<$Res, _$TopGThemeDataDarkImpl>
    implements _$$TopGThemeDataDarkImplCopyWith<$Res> {
  __$$TopGThemeDataDarkImplCopyWithImpl(_$TopGThemeDataDarkImpl _value,
      $Res Function(_$TopGThemeDataDarkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mode = null,
    Object? colorScheme = null,
    Object? settings = null,
  }) {
    return _then(_$TopGThemeDataDarkImpl(
      mode: null == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as TopGMode,
      colorScheme: null == colorScheme
          ? _value.colorScheme
          : colorScheme // ignore: cast_nullable_to_non_nullable
              as ColorScheme,
      settings: null == settings
          ? _value.settings
          : settings // ignore: cast_nullable_to_non_nullable
              as SettingsThemeData,
    ));
  }
}

/// @nodoc

class _$TopGThemeDataDarkImpl implements _TopGThemeDataDark {
  const _$TopGThemeDataDarkImpl(
      {this.mode = TopGMode.dark,
      this.colorScheme = TopGColorScheme.dark,
      this.settings = const SettingsThemeData.dark()});

  @override
  @JsonKey()
  final TopGMode mode;
  @override
  @JsonKey()
  final ColorScheme colorScheme;
  @override
  @JsonKey()
  final SettingsThemeData settings;

  @override
  String toString() {
    return 'TopGThemeData.dark(mode: $mode, colorScheme: $colorScheme, settings: $settings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopGThemeDataDarkImpl &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.colorScheme, colorScheme) ||
                other.colorScheme == colorScheme) &&
            (identical(other.settings, settings) ||
                other.settings == settings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, mode, colorScheme, settings);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TopGThemeDataDarkImplCopyWith<_$TopGThemeDataDarkImpl> get copyWith =>
      __$$TopGThemeDataDarkImplCopyWithImpl<_$TopGThemeDataDarkImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            TopGMode mode, ColorScheme colorScheme, SettingsThemeData settings)
        light,
    required TResult Function(
            TopGMode mode, ColorScheme colorScheme, SettingsThemeData settings)
        dark,
  }) {
    return dark(mode, colorScheme, settings);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            TopGMode mode, ColorScheme colorScheme, SettingsThemeData settings)?
        light,
    TResult? Function(
            TopGMode mode, ColorScheme colorScheme, SettingsThemeData settings)?
        dark,
  }) {
    return dark?.call(mode, colorScheme, settings);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            TopGMode mode, ColorScheme colorScheme, SettingsThemeData settings)?
        light,
    TResult Function(
            TopGMode mode, ColorScheme colorScheme, SettingsThemeData settings)?
        dark,
    required TResult orElse(),
  }) {
    if (dark != null) {
      return dark(mode, colorScheme, settings);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TopGThemeDataLight value) light,
    required TResult Function(_TopGThemeDataDark value) dark,
  }) {
    return dark(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TopGThemeDataLight value)? light,
    TResult? Function(_TopGThemeDataDark value)? dark,
  }) {
    return dark?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TopGThemeDataLight value)? light,
    TResult Function(_TopGThemeDataDark value)? dark,
    required TResult orElse(),
  }) {
    if (dark != null) {
      return dark(this);
    }
    return orElse();
  }
}

abstract class _TopGThemeDataDark implements TopGThemeData {
  const factory _TopGThemeDataDark(
      {final TopGMode mode,
      final ColorScheme colorScheme,
      final SettingsThemeData settings}) = _$TopGThemeDataDarkImpl;

  @override
  TopGMode get mode;
  @override
  ColorScheme get colorScheme;
  @override
  SettingsThemeData get settings;
  @override
  @JsonKey(ignore: true)
  _$$TopGThemeDataDarkImplCopyWith<_$TopGThemeDataDarkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
