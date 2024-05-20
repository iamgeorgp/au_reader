// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_update_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TestUpdateModel _$TestUpdateModelFromJson(Map<String, dynamic> json) {
  return _TestUpdateModel.fromJson(json);
}

/// @nodoc
mixin _$TestUpdateModel {
  @JsonKey(name: 'login')
  String get login => throw _privateConstructorUsedError;
  @JsonKey(name: 'password')
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: 'number')
  String get testId => throw _privateConstructorUsedError;
  @JsonKey(name: 'test')
  List<TestUpdateRowModel> get test => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestUpdateModelCopyWith<TestUpdateModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestUpdateModelCopyWith<$Res> {
  factory $TestUpdateModelCopyWith(
          TestUpdateModel value, $Res Function(TestUpdateModel) then) =
      _$TestUpdateModelCopyWithImpl<$Res, TestUpdateModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'login') String login,
      @JsonKey(name: 'password') String password,
      @JsonKey(name: 'number') String testId,
      @JsonKey(name: 'test') List<TestUpdateRowModel> test});
}

/// @nodoc
class _$TestUpdateModelCopyWithImpl<$Res, $Val extends TestUpdateModel>
    implements $TestUpdateModelCopyWith<$Res> {
  _$TestUpdateModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? password = null,
    Object? testId = null,
    Object? test = null,
  }) {
    return _then(_value.copyWith(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      testId: null == testId
          ? _value.testId
          : testId // ignore: cast_nullable_to_non_nullable
              as String,
      test: null == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as List<TestUpdateRowModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestUpdateModelImplCopyWith<$Res>
    implements $TestUpdateModelCopyWith<$Res> {
  factory _$$TestUpdateModelImplCopyWith(_$TestUpdateModelImpl value,
          $Res Function(_$TestUpdateModelImpl) then) =
      __$$TestUpdateModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'login') String login,
      @JsonKey(name: 'password') String password,
      @JsonKey(name: 'number') String testId,
      @JsonKey(name: 'test') List<TestUpdateRowModel> test});
}

/// @nodoc
class __$$TestUpdateModelImplCopyWithImpl<$Res>
    extends _$TestUpdateModelCopyWithImpl<$Res, _$TestUpdateModelImpl>
    implements _$$TestUpdateModelImplCopyWith<$Res> {
  __$$TestUpdateModelImplCopyWithImpl(
      _$TestUpdateModelImpl _value, $Res Function(_$TestUpdateModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? password = null,
    Object? testId = null,
    Object? test = null,
  }) {
    return _then(_$TestUpdateModelImpl(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      testId: null == testId
          ? _value.testId
          : testId // ignore: cast_nullable_to_non_nullable
              as String,
      test: null == test
          ? _value._test
          : test // ignore: cast_nullable_to_non_nullable
              as List<TestUpdateRowModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$TestUpdateModelImpl implements _TestUpdateModel {
  const _$TestUpdateModelImpl(
      {@JsonKey(name: 'login') this.login = '',
      @JsonKey(name: 'password') this.password = '',
      @JsonKey(name: 'number') this.testId = '',
      @JsonKey(name: 'test') final List<TestUpdateRowModel> test = const []})
      : _test = test;

  factory _$TestUpdateModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestUpdateModelImplFromJson(json);

  @override
  @JsonKey(name: 'login')
  final String login;
  @override
  @JsonKey(name: 'password')
  final String password;
  @override
  @JsonKey(name: 'number')
  final String testId;
  final List<TestUpdateRowModel> _test;
  @override
  @JsonKey(name: 'test')
  List<TestUpdateRowModel> get test {
    if (_test is EqualUnmodifiableListView) return _test;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_test);
  }

  @override
  String toString() {
    return 'TestUpdateModel(login: $login, password: $password, testId: $testId, test: $test)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestUpdateModelImpl &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.testId, testId) || other.testId == testId) &&
            const DeepCollectionEquality().equals(other._test, _test));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, login, password, testId,
      const DeepCollectionEquality().hash(_test));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestUpdateModelImplCopyWith<_$TestUpdateModelImpl> get copyWith =>
      __$$TestUpdateModelImplCopyWithImpl<_$TestUpdateModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestUpdateModelImplToJson(
      this,
    );
  }
}

abstract class _TestUpdateModel implements TestUpdateModel {
  const factory _TestUpdateModel(
          {@JsonKey(name: 'login') final String login,
          @JsonKey(name: 'password') final String password,
          @JsonKey(name: 'number') final String testId,
          @JsonKey(name: 'test') final List<TestUpdateRowModel> test}) =
      _$TestUpdateModelImpl;

  factory _TestUpdateModel.fromJson(Map<String, dynamic> json) =
      _$TestUpdateModelImpl.fromJson;

  @override
  @JsonKey(name: 'login')
  String get login;
  @override
  @JsonKey(name: 'password')
  String get password;
  @override
  @JsonKey(name: 'number')
  String get testId;
  @override
  @JsonKey(name: 'test')
  List<TestUpdateRowModel> get test;
  @override
  @JsonKey(ignore: true)
  _$$TestUpdateModelImplCopyWith<_$TestUpdateModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TestUpdateRowModel _$TestUpdateRowModelFromJson(Map<String, dynamic> json) {
  return _TestUpdateRowModel.fromJson(json);
}

/// @nodoc
mixin _$TestUpdateRowModel {
  @JsonKey(name: 'question')
  String get question => throw _privateConstructorUsedError;
  @JsonKey(name: 'correct_answer')
  String get answer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestUpdateRowModelCopyWith<TestUpdateRowModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestUpdateRowModelCopyWith<$Res> {
  factory $TestUpdateRowModelCopyWith(
          TestUpdateRowModel value, $Res Function(TestUpdateRowModel) then) =
      _$TestUpdateRowModelCopyWithImpl<$Res, TestUpdateRowModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'question') String question,
      @JsonKey(name: 'correct_answer') String answer});
}

/// @nodoc
class _$TestUpdateRowModelCopyWithImpl<$Res, $Val extends TestUpdateRowModel>
    implements $TestUpdateRowModelCopyWith<$Res> {
  _$TestUpdateRowModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? answer = null,
  }) {
    return _then(_value.copyWith(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestUpdateRowModelImplCopyWith<$Res>
    implements $TestUpdateRowModelCopyWith<$Res> {
  factory _$$TestUpdateRowModelImplCopyWith(_$TestUpdateRowModelImpl value,
          $Res Function(_$TestUpdateRowModelImpl) then) =
      __$$TestUpdateRowModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'question') String question,
      @JsonKey(name: 'correct_answer') String answer});
}

/// @nodoc
class __$$TestUpdateRowModelImplCopyWithImpl<$Res>
    extends _$TestUpdateRowModelCopyWithImpl<$Res, _$TestUpdateRowModelImpl>
    implements _$$TestUpdateRowModelImplCopyWith<$Res> {
  __$$TestUpdateRowModelImplCopyWithImpl(_$TestUpdateRowModelImpl _value,
      $Res Function(_$TestUpdateRowModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? answer = null,
  }) {
    return _then(_$TestUpdateRowModelImpl(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$TestUpdateRowModelImpl implements _TestUpdateRowModel {
  const _$TestUpdateRowModelImpl(
      {@JsonKey(name: 'question') this.question = '',
      @JsonKey(name: 'correct_answer') this.answer = ''});

  factory _$TestUpdateRowModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestUpdateRowModelImplFromJson(json);

  @override
  @JsonKey(name: 'question')
  final String question;
  @override
  @JsonKey(name: 'correct_answer')
  final String answer;

  @override
  String toString() {
    return 'TestUpdateRowModel(question: $question, answer: $answer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestUpdateRowModelImpl &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, question, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestUpdateRowModelImplCopyWith<_$TestUpdateRowModelImpl> get copyWith =>
      __$$TestUpdateRowModelImplCopyWithImpl<_$TestUpdateRowModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestUpdateRowModelImplToJson(
      this,
    );
  }
}

abstract class _TestUpdateRowModel implements TestUpdateRowModel {
  const factory _TestUpdateRowModel(
          {@JsonKey(name: 'question') final String question,
          @JsonKey(name: 'correct_answer') final String answer}) =
      _$TestUpdateRowModelImpl;

  factory _TestUpdateRowModel.fromJson(Map<String, dynamic> json) =
      _$TestUpdateRowModelImpl.fromJson;

  @override
  @JsonKey(name: 'question')
  String get question;
  @override
  @JsonKey(name: 'correct_answer')
  String get answer;
  @override
  @JsonKey(ignore: true)
  _$$TestUpdateRowModelImplCopyWith<_$TestUpdateRowModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
