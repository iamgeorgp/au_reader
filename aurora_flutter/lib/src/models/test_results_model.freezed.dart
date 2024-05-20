// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_results_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TestResultsModel _$TestResultsModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'results':
      return _ResultsTestResultsModel.fromJson(json);
    case 'loading':
      return _LoadingTestResultsModel.fromJson(json);
    case 'bad':
      return _BadTestResultsModel.fromJson(json);
    case 'error':
      return _ErrorTestResultsModel.fromJson(json);
    case 'parameters':
      return _TestIdTestResultsModel.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'TestResultsModel',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$TestResultsModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'answers') List<TestAnswerModel> answersList,
            @JsonKey(name: 'total-correct-answers') int correctAnswers,
            @JsonKey(name: 'total-incorrect-answers') int incorrectAnswers,
            @JsonKey(name: 'test_number') int testNumber,
            @JsonKey(name: 'sex', defaultValue: null) String? sex)
        results,
    required TResult Function() loading,
    required TResult Function() bad,
    required TResult Function(String? message) error,
    required TResult Function(String path) parameters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'answers') List<TestAnswerModel> answersList,
            @JsonKey(name: 'total-correct-answers') int correctAnswers,
            @JsonKey(name: 'total-incorrect-answers') int incorrectAnswers,
            @JsonKey(name: 'test_number') int testNumber,
            @JsonKey(name: 'sex', defaultValue: null) String? sex)?
        results,
    TResult? Function()? loading,
    TResult? Function()? bad,
    TResult? Function(String? message)? error,
    TResult? Function(String path)? parameters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'answers') List<TestAnswerModel> answersList,
            @JsonKey(name: 'total-correct-answers') int correctAnswers,
            @JsonKey(name: 'total-incorrect-answers') int incorrectAnswers,
            @JsonKey(name: 'test_number') int testNumber,
            @JsonKey(name: 'sex', defaultValue: null) String? sex)?
        results,
    TResult Function()? loading,
    TResult Function()? bad,
    TResult Function(String? message)? error,
    TResult Function(String path)? parameters,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResultsTestResultsModel value) results,
    required TResult Function(_LoadingTestResultsModel value) loading,
    required TResult Function(_BadTestResultsModel value) bad,
    required TResult Function(_ErrorTestResultsModel value) error,
    required TResult Function(_TestIdTestResultsModel value) parameters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResultsTestResultsModel value)? results,
    TResult? Function(_LoadingTestResultsModel value)? loading,
    TResult? Function(_BadTestResultsModel value)? bad,
    TResult? Function(_ErrorTestResultsModel value)? error,
    TResult? Function(_TestIdTestResultsModel value)? parameters,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultsTestResultsModel value)? results,
    TResult Function(_LoadingTestResultsModel value)? loading,
    TResult Function(_BadTestResultsModel value)? bad,
    TResult Function(_ErrorTestResultsModel value)? error,
    TResult Function(_TestIdTestResultsModel value)? parameters,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestResultsModelCopyWith<$Res> {
  factory $TestResultsModelCopyWith(
          TestResultsModel value, $Res Function(TestResultsModel) then) =
      _$TestResultsModelCopyWithImpl<$Res, TestResultsModel>;
}

/// @nodoc
class _$TestResultsModelCopyWithImpl<$Res, $Val extends TestResultsModel>
    implements $TestResultsModelCopyWith<$Res> {
  _$TestResultsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ResultsTestResultsModelImplCopyWith<$Res> {
  factory _$$ResultsTestResultsModelImplCopyWith(
          _$ResultsTestResultsModelImpl value,
          $Res Function(_$ResultsTestResultsModelImpl) then) =
      __$$ResultsTestResultsModelImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {@JsonKey(name: 'answers') List<TestAnswerModel> answersList,
      @JsonKey(name: 'total-correct-answers') int correctAnswers,
      @JsonKey(name: 'total-incorrect-answers') int incorrectAnswers,
      @JsonKey(name: 'test_number') int testNumber,
      @JsonKey(name: 'sex', defaultValue: null) String? sex});
}

/// @nodoc
class __$$ResultsTestResultsModelImplCopyWithImpl<$Res>
    extends _$TestResultsModelCopyWithImpl<$Res, _$ResultsTestResultsModelImpl>
    implements _$$ResultsTestResultsModelImplCopyWith<$Res> {
  __$$ResultsTestResultsModelImplCopyWithImpl(
      _$ResultsTestResultsModelImpl _value,
      $Res Function(_$ResultsTestResultsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? answersList = null,
    Object? correctAnswers = null,
    Object? incorrectAnswers = null,
    Object? testNumber = null,
    Object? sex = freezed,
  }) {
    return _then(_$ResultsTestResultsModelImpl(
      answersList: null == answersList
          ? _value._answersList
          : answersList // ignore: cast_nullable_to_non_nullable
              as List<TestAnswerModel>,
      correctAnswers: null == correctAnswers
          ? _value.correctAnswers
          : correctAnswers // ignore: cast_nullable_to_non_nullable
              as int,
      incorrectAnswers: null == incorrectAnswers
          ? _value.incorrectAnswers
          : incorrectAnswers // ignore: cast_nullable_to_non_nullable
              as int,
      testNumber: null == testNumber
          ? _value.testNumber
          : testNumber // ignore: cast_nullable_to_non_nullable
              as int,
      sex: freezed == sex
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultsTestResultsModelImpl implements _ResultsTestResultsModel {
  const _$ResultsTestResultsModelImpl(
      {@JsonKey(name: 'answers')
      required final List<TestAnswerModel> answersList,
      @JsonKey(name: 'total-correct-answers') required this.correctAnswers,
      @JsonKey(name: 'total-incorrect-answers') required this.incorrectAnswers,
      @JsonKey(name: 'test_number') required this.testNumber,
      @JsonKey(name: 'sex', defaultValue: null) this.sex,
      final String? $type})
      : _answersList = answersList,
        $type = $type ?? 'results';

  factory _$ResultsTestResultsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultsTestResultsModelImplFromJson(json);

  final List<TestAnswerModel> _answersList;
  @override
  @JsonKey(name: 'answers')
  List<TestAnswerModel> get answersList {
    if (_answersList is EqualUnmodifiableListView) return _answersList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_answersList);
  }

  @override
  @JsonKey(name: 'total-correct-answers')
  final int correctAnswers;
  @override
  @JsonKey(name: 'total-incorrect-answers')
  final int incorrectAnswers;
  @override
  @JsonKey(name: 'test_number')
  final int testNumber;
  @override
  @JsonKey(name: 'sex', defaultValue: null)
  final String? sex;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TestResultsModel.results(answersList: $answersList, correctAnswers: $correctAnswers, incorrectAnswers: $incorrectAnswers, testNumber: $testNumber, sex: $sex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultsTestResultsModelImpl &&
            const DeepCollectionEquality()
                .equals(other._answersList, _answersList) &&
            (identical(other.correctAnswers, correctAnswers) ||
                other.correctAnswers == correctAnswers) &&
            (identical(other.incorrectAnswers, incorrectAnswers) ||
                other.incorrectAnswers == incorrectAnswers) &&
            (identical(other.testNumber, testNumber) ||
                other.testNumber == testNumber) &&
            (identical(other.sex, sex) || other.sex == sex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_answersList),
      correctAnswers,
      incorrectAnswers,
      testNumber,
      sex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultsTestResultsModelImplCopyWith<_$ResultsTestResultsModelImpl>
      get copyWith => __$$ResultsTestResultsModelImplCopyWithImpl<
          _$ResultsTestResultsModelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'answers') List<TestAnswerModel> answersList,
            @JsonKey(name: 'total-correct-answers') int correctAnswers,
            @JsonKey(name: 'total-incorrect-answers') int incorrectAnswers,
            @JsonKey(name: 'test_number') int testNumber,
            @JsonKey(name: 'sex', defaultValue: null) String? sex)
        results,
    required TResult Function() loading,
    required TResult Function() bad,
    required TResult Function(String? message) error,
    required TResult Function(String path) parameters,
  }) {
    return results(
        answersList, correctAnswers, incorrectAnswers, testNumber, sex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'answers') List<TestAnswerModel> answersList,
            @JsonKey(name: 'total-correct-answers') int correctAnswers,
            @JsonKey(name: 'total-incorrect-answers') int incorrectAnswers,
            @JsonKey(name: 'test_number') int testNumber,
            @JsonKey(name: 'sex', defaultValue: null) String? sex)?
        results,
    TResult? Function()? loading,
    TResult? Function()? bad,
    TResult? Function(String? message)? error,
    TResult? Function(String path)? parameters,
  }) {
    return results?.call(
        answersList, correctAnswers, incorrectAnswers, testNumber, sex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'answers') List<TestAnswerModel> answersList,
            @JsonKey(name: 'total-correct-answers') int correctAnswers,
            @JsonKey(name: 'total-incorrect-answers') int incorrectAnswers,
            @JsonKey(name: 'test_number') int testNumber,
            @JsonKey(name: 'sex', defaultValue: null) String? sex)?
        results,
    TResult Function()? loading,
    TResult Function()? bad,
    TResult Function(String? message)? error,
    TResult Function(String path)? parameters,
    required TResult orElse(),
  }) {
    if (results != null) {
      return results(
          answersList, correctAnswers, incorrectAnswers, testNumber, sex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResultsTestResultsModel value) results,
    required TResult Function(_LoadingTestResultsModel value) loading,
    required TResult Function(_BadTestResultsModel value) bad,
    required TResult Function(_ErrorTestResultsModel value) error,
    required TResult Function(_TestIdTestResultsModel value) parameters,
  }) {
    return results(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResultsTestResultsModel value)? results,
    TResult? Function(_LoadingTestResultsModel value)? loading,
    TResult? Function(_BadTestResultsModel value)? bad,
    TResult? Function(_ErrorTestResultsModel value)? error,
    TResult? Function(_TestIdTestResultsModel value)? parameters,
  }) {
    return results?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultsTestResultsModel value)? results,
    TResult Function(_LoadingTestResultsModel value)? loading,
    TResult Function(_BadTestResultsModel value)? bad,
    TResult Function(_ErrorTestResultsModel value)? error,
    TResult Function(_TestIdTestResultsModel value)? parameters,
    required TResult orElse(),
  }) {
    if (results != null) {
      return results(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultsTestResultsModelImplToJson(
      this,
    );
  }
}

abstract class _ResultsTestResultsModel implements TestResultsModel {
  const factory _ResultsTestResultsModel(
      {@JsonKey(name: 'answers')
      required final List<TestAnswerModel> answersList,
      @JsonKey(name: 'total-correct-answers') required final int correctAnswers,
      @JsonKey(name: 'total-incorrect-answers')
      required final int incorrectAnswers,
      @JsonKey(name: 'test_number') required final int testNumber,
      @JsonKey(name: 'sex', defaultValue: null)
      final String? sex}) = _$ResultsTestResultsModelImpl;

  factory _ResultsTestResultsModel.fromJson(Map<String, dynamic> json) =
      _$ResultsTestResultsModelImpl.fromJson;

  @JsonKey(name: 'answers')
  List<TestAnswerModel> get answersList;
  @JsonKey(name: 'total-correct-answers')
  int get correctAnswers;
  @JsonKey(name: 'total-incorrect-answers')
  int get incorrectAnswers;
  @JsonKey(name: 'test_number')
  int get testNumber;
  @JsonKey(name: 'sex', defaultValue: null)
  String? get sex;
  @JsonKey(ignore: true)
  _$$ResultsTestResultsModelImplCopyWith<_$ResultsTestResultsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingTestResultsModelImplCopyWith<$Res> {
  factory _$$LoadingTestResultsModelImplCopyWith(
          _$LoadingTestResultsModelImpl value,
          $Res Function(_$LoadingTestResultsModelImpl) then) =
      __$$LoadingTestResultsModelImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingTestResultsModelImplCopyWithImpl<$Res>
    extends _$TestResultsModelCopyWithImpl<$Res, _$LoadingTestResultsModelImpl>
    implements _$$LoadingTestResultsModelImplCopyWith<$Res> {
  __$$LoadingTestResultsModelImplCopyWithImpl(
      _$LoadingTestResultsModelImpl _value,
      $Res Function(_$LoadingTestResultsModelImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$LoadingTestResultsModelImpl implements _LoadingTestResultsModel {
  const _$LoadingTestResultsModelImpl({final String? $type})
      : $type = $type ?? 'loading';

  factory _$LoadingTestResultsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoadingTestResultsModelImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TestResultsModel.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingTestResultsModelImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'answers') List<TestAnswerModel> answersList,
            @JsonKey(name: 'total-correct-answers') int correctAnswers,
            @JsonKey(name: 'total-incorrect-answers') int incorrectAnswers,
            @JsonKey(name: 'test_number') int testNumber,
            @JsonKey(name: 'sex', defaultValue: null) String? sex)
        results,
    required TResult Function() loading,
    required TResult Function() bad,
    required TResult Function(String? message) error,
    required TResult Function(String path) parameters,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'answers') List<TestAnswerModel> answersList,
            @JsonKey(name: 'total-correct-answers') int correctAnswers,
            @JsonKey(name: 'total-incorrect-answers') int incorrectAnswers,
            @JsonKey(name: 'test_number') int testNumber,
            @JsonKey(name: 'sex', defaultValue: null) String? sex)?
        results,
    TResult? Function()? loading,
    TResult? Function()? bad,
    TResult? Function(String? message)? error,
    TResult? Function(String path)? parameters,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'answers') List<TestAnswerModel> answersList,
            @JsonKey(name: 'total-correct-answers') int correctAnswers,
            @JsonKey(name: 'total-incorrect-answers') int incorrectAnswers,
            @JsonKey(name: 'test_number') int testNumber,
            @JsonKey(name: 'sex', defaultValue: null) String? sex)?
        results,
    TResult Function()? loading,
    TResult Function()? bad,
    TResult Function(String? message)? error,
    TResult Function(String path)? parameters,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResultsTestResultsModel value) results,
    required TResult Function(_LoadingTestResultsModel value) loading,
    required TResult Function(_BadTestResultsModel value) bad,
    required TResult Function(_ErrorTestResultsModel value) error,
    required TResult Function(_TestIdTestResultsModel value) parameters,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResultsTestResultsModel value)? results,
    TResult? Function(_LoadingTestResultsModel value)? loading,
    TResult? Function(_BadTestResultsModel value)? bad,
    TResult? Function(_ErrorTestResultsModel value)? error,
    TResult? Function(_TestIdTestResultsModel value)? parameters,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultsTestResultsModel value)? results,
    TResult Function(_LoadingTestResultsModel value)? loading,
    TResult Function(_BadTestResultsModel value)? bad,
    TResult Function(_ErrorTestResultsModel value)? error,
    TResult Function(_TestIdTestResultsModel value)? parameters,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LoadingTestResultsModelImplToJson(
      this,
    );
  }
}

abstract class _LoadingTestResultsModel implements TestResultsModel {
  const factory _LoadingTestResultsModel() = _$LoadingTestResultsModelImpl;

  factory _LoadingTestResultsModel.fromJson(Map<String, dynamic> json) =
      _$LoadingTestResultsModelImpl.fromJson;
}

/// @nodoc
abstract class _$$BadTestResultsModelImplCopyWith<$Res> {
  factory _$$BadTestResultsModelImplCopyWith(_$BadTestResultsModelImpl value,
          $Res Function(_$BadTestResultsModelImpl) then) =
      __$$BadTestResultsModelImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BadTestResultsModelImplCopyWithImpl<$Res>
    extends _$TestResultsModelCopyWithImpl<$Res, _$BadTestResultsModelImpl>
    implements _$$BadTestResultsModelImplCopyWith<$Res> {
  __$$BadTestResultsModelImplCopyWithImpl(_$BadTestResultsModelImpl _value,
      $Res Function(_$BadTestResultsModelImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$BadTestResultsModelImpl implements _BadTestResultsModel {
  const _$BadTestResultsModelImpl({final String? $type})
      : $type = $type ?? 'bad';

  factory _$BadTestResultsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BadTestResultsModelImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TestResultsModel.bad()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BadTestResultsModelImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'answers') List<TestAnswerModel> answersList,
            @JsonKey(name: 'total-correct-answers') int correctAnswers,
            @JsonKey(name: 'total-incorrect-answers') int incorrectAnswers,
            @JsonKey(name: 'test_number') int testNumber,
            @JsonKey(name: 'sex', defaultValue: null) String? sex)
        results,
    required TResult Function() loading,
    required TResult Function() bad,
    required TResult Function(String? message) error,
    required TResult Function(String path) parameters,
  }) {
    return bad();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'answers') List<TestAnswerModel> answersList,
            @JsonKey(name: 'total-correct-answers') int correctAnswers,
            @JsonKey(name: 'total-incorrect-answers') int incorrectAnswers,
            @JsonKey(name: 'test_number') int testNumber,
            @JsonKey(name: 'sex', defaultValue: null) String? sex)?
        results,
    TResult? Function()? loading,
    TResult? Function()? bad,
    TResult? Function(String? message)? error,
    TResult? Function(String path)? parameters,
  }) {
    return bad?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'answers') List<TestAnswerModel> answersList,
            @JsonKey(name: 'total-correct-answers') int correctAnswers,
            @JsonKey(name: 'total-incorrect-answers') int incorrectAnswers,
            @JsonKey(name: 'test_number') int testNumber,
            @JsonKey(name: 'sex', defaultValue: null) String? sex)?
        results,
    TResult Function()? loading,
    TResult Function()? bad,
    TResult Function(String? message)? error,
    TResult Function(String path)? parameters,
    required TResult orElse(),
  }) {
    if (bad != null) {
      return bad();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResultsTestResultsModel value) results,
    required TResult Function(_LoadingTestResultsModel value) loading,
    required TResult Function(_BadTestResultsModel value) bad,
    required TResult Function(_ErrorTestResultsModel value) error,
    required TResult Function(_TestIdTestResultsModel value) parameters,
  }) {
    return bad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResultsTestResultsModel value)? results,
    TResult? Function(_LoadingTestResultsModel value)? loading,
    TResult? Function(_BadTestResultsModel value)? bad,
    TResult? Function(_ErrorTestResultsModel value)? error,
    TResult? Function(_TestIdTestResultsModel value)? parameters,
  }) {
    return bad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultsTestResultsModel value)? results,
    TResult Function(_LoadingTestResultsModel value)? loading,
    TResult Function(_BadTestResultsModel value)? bad,
    TResult Function(_ErrorTestResultsModel value)? error,
    TResult Function(_TestIdTestResultsModel value)? parameters,
    required TResult orElse(),
  }) {
    if (bad != null) {
      return bad(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BadTestResultsModelImplToJson(
      this,
    );
  }
}

abstract class _BadTestResultsModel implements TestResultsModel {
  const factory _BadTestResultsModel() = _$BadTestResultsModelImpl;

  factory _BadTestResultsModel.fromJson(Map<String, dynamic> json) =
      _$BadTestResultsModelImpl.fromJson;
}

/// @nodoc
abstract class _$$ErrorTestResultsModelImplCopyWith<$Res> {
  factory _$$ErrorTestResultsModelImplCopyWith(
          _$ErrorTestResultsModelImpl value,
          $Res Function(_$ErrorTestResultsModelImpl) then) =
      __$$ErrorTestResultsModelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ErrorTestResultsModelImplCopyWithImpl<$Res>
    extends _$TestResultsModelCopyWithImpl<$Res, _$ErrorTestResultsModelImpl>
    implements _$$ErrorTestResultsModelImplCopyWith<$Res> {
  __$$ErrorTestResultsModelImplCopyWithImpl(_$ErrorTestResultsModelImpl _value,
      $Res Function(_$ErrorTestResultsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ErrorTestResultsModelImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ErrorTestResultsModelImpl implements _ErrorTestResultsModel {
  const _$ErrorTestResultsModelImpl({this.message, final String? $type})
      : $type = $type ?? 'error';

  factory _$ErrorTestResultsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ErrorTestResultsModelImplFromJson(json);

  @override
  final String? message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TestResultsModel.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorTestResultsModelImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorTestResultsModelImplCopyWith<_$ErrorTestResultsModelImpl>
      get copyWith => __$$ErrorTestResultsModelImplCopyWithImpl<
          _$ErrorTestResultsModelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'answers') List<TestAnswerModel> answersList,
            @JsonKey(name: 'total-correct-answers') int correctAnswers,
            @JsonKey(name: 'total-incorrect-answers') int incorrectAnswers,
            @JsonKey(name: 'test_number') int testNumber,
            @JsonKey(name: 'sex', defaultValue: null) String? sex)
        results,
    required TResult Function() loading,
    required TResult Function() bad,
    required TResult Function(String? message) error,
    required TResult Function(String path) parameters,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'answers') List<TestAnswerModel> answersList,
            @JsonKey(name: 'total-correct-answers') int correctAnswers,
            @JsonKey(name: 'total-incorrect-answers') int incorrectAnswers,
            @JsonKey(name: 'test_number') int testNumber,
            @JsonKey(name: 'sex', defaultValue: null) String? sex)?
        results,
    TResult? Function()? loading,
    TResult? Function()? bad,
    TResult? Function(String? message)? error,
    TResult? Function(String path)? parameters,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'answers') List<TestAnswerModel> answersList,
            @JsonKey(name: 'total-correct-answers') int correctAnswers,
            @JsonKey(name: 'total-incorrect-answers') int incorrectAnswers,
            @JsonKey(name: 'test_number') int testNumber,
            @JsonKey(name: 'sex', defaultValue: null) String? sex)?
        results,
    TResult Function()? loading,
    TResult Function()? bad,
    TResult Function(String? message)? error,
    TResult Function(String path)? parameters,
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
    required TResult Function(_ResultsTestResultsModel value) results,
    required TResult Function(_LoadingTestResultsModel value) loading,
    required TResult Function(_BadTestResultsModel value) bad,
    required TResult Function(_ErrorTestResultsModel value) error,
    required TResult Function(_TestIdTestResultsModel value) parameters,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResultsTestResultsModel value)? results,
    TResult? Function(_LoadingTestResultsModel value)? loading,
    TResult? Function(_BadTestResultsModel value)? bad,
    TResult? Function(_ErrorTestResultsModel value)? error,
    TResult? Function(_TestIdTestResultsModel value)? parameters,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultsTestResultsModel value)? results,
    TResult Function(_LoadingTestResultsModel value)? loading,
    TResult Function(_BadTestResultsModel value)? bad,
    TResult Function(_ErrorTestResultsModel value)? error,
    TResult Function(_TestIdTestResultsModel value)? parameters,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ErrorTestResultsModelImplToJson(
      this,
    );
  }
}

abstract class _ErrorTestResultsModel implements TestResultsModel {
  const factory _ErrorTestResultsModel({final String? message}) =
      _$ErrorTestResultsModelImpl;

  factory _ErrorTestResultsModel.fromJson(Map<String, dynamic> json) =
      _$ErrorTestResultsModelImpl.fromJson;

  String? get message;
  @JsonKey(ignore: true)
  _$$ErrorTestResultsModelImplCopyWith<_$ErrorTestResultsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TestIdTestResultsModelImplCopyWith<$Res> {
  factory _$$TestIdTestResultsModelImplCopyWith(
          _$TestIdTestResultsModelImpl value,
          $Res Function(_$TestIdTestResultsModelImpl) then) =
      __$$TestIdTestResultsModelImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$TestIdTestResultsModelImplCopyWithImpl<$Res>
    extends _$TestResultsModelCopyWithImpl<$Res, _$TestIdTestResultsModelImpl>
    implements _$$TestIdTestResultsModelImplCopyWith<$Res> {
  __$$TestIdTestResultsModelImplCopyWithImpl(
      _$TestIdTestResultsModelImpl _value,
      $Res Function(_$TestIdTestResultsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$TestIdTestResultsModelImpl(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestIdTestResultsModelImpl implements _TestIdTestResultsModel {
  const _$TestIdTestResultsModelImpl({required this.path, final String? $type})
      : $type = $type ?? 'parameters';

  factory _$TestIdTestResultsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestIdTestResultsModelImplFromJson(json);

  @override
  final String path;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'TestResultsModel.parameters(path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestIdTestResultsModelImpl &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestIdTestResultsModelImplCopyWith<_$TestIdTestResultsModelImpl>
      get copyWith => __$$TestIdTestResultsModelImplCopyWithImpl<
          _$TestIdTestResultsModelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            @JsonKey(name: 'answers') List<TestAnswerModel> answersList,
            @JsonKey(name: 'total-correct-answers') int correctAnswers,
            @JsonKey(name: 'total-incorrect-answers') int incorrectAnswers,
            @JsonKey(name: 'test_number') int testNumber,
            @JsonKey(name: 'sex', defaultValue: null) String? sex)
        results,
    required TResult Function() loading,
    required TResult Function() bad,
    required TResult Function(String? message) error,
    required TResult Function(String path) parameters,
  }) {
    return parameters(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            @JsonKey(name: 'answers') List<TestAnswerModel> answersList,
            @JsonKey(name: 'total-correct-answers') int correctAnswers,
            @JsonKey(name: 'total-incorrect-answers') int incorrectAnswers,
            @JsonKey(name: 'test_number') int testNumber,
            @JsonKey(name: 'sex', defaultValue: null) String? sex)?
        results,
    TResult? Function()? loading,
    TResult? Function()? bad,
    TResult? Function(String? message)? error,
    TResult? Function(String path)? parameters,
  }) {
    return parameters?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            @JsonKey(name: 'answers') List<TestAnswerModel> answersList,
            @JsonKey(name: 'total-correct-answers') int correctAnswers,
            @JsonKey(name: 'total-incorrect-answers') int incorrectAnswers,
            @JsonKey(name: 'test_number') int testNumber,
            @JsonKey(name: 'sex', defaultValue: null) String? sex)?
        results,
    TResult Function()? loading,
    TResult Function()? bad,
    TResult Function(String? message)? error,
    TResult Function(String path)? parameters,
    required TResult orElse(),
  }) {
    if (parameters != null) {
      return parameters(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ResultsTestResultsModel value) results,
    required TResult Function(_LoadingTestResultsModel value) loading,
    required TResult Function(_BadTestResultsModel value) bad,
    required TResult Function(_ErrorTestResultsModel value) error,
    required TResult Function(_TestIdTestResultsModel value) parameters,
  }) {
    return parameters(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ResultsTestResultsModel value)? results,
    TResult? Function(_LoadingTestResultsModel value)? loading,
    TResult? Function(_BadTestResultsModel value)? bad,
    TResult? Function(_ErrorTestResultsModel value)? error,
    TResult? Function(_TestIdTestResultsModel value)? parameters,
  }) {
    return parameters?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ResultsTestResultsModel value)? results,
    TResult Function(_LoadingTestResultsModel value)? loading,
    TResult Function(_BadTestResultsModel value)? bad,
    TResult Function(_ErrorTestResultsModel value)? error,
    TResult Function(_TestIdTestResultsModel value)? parameters,
    required TResult orElse(),
  }) {
    if (parameters != null) {
      return parameters(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TestIdTestResultsModelImplToJson(
      this,
    );
  }
}

abstract class _TestIdTestResultsModel implements TestResultsModel {
  const factory _TestIdTestResultsModel({required final String path}) =
      _$TestIdTestResultsModelImpl;

  factory _TestIdTestResultsModel.fromJson(Map<String, dynamic> json) =
      _$TestIdTestResultsModelImpl.fromJson;

  String get path;
  @JsonKey(ignore: true)
  _$$TestIdTestResultsModelImplCopyWith<_$TestIdTestResultsModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TestAnswerModel _$TestAnswerModelFromJson(Map<String, dynamic> json) {
  return _TestAnswerModel.fromJson(json);
}

/// @nodoc
mixin _$TestAnswerModel {
  @JsonKey(name: 'question')
  String get question => throw _privateConstructorUsedError;
  @JsonKey(name: 'answer')
  String get answer => throw _privateConstructorUsedError;
  @JsonKey(name: 'correct-answer')
  String get correctAnswer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestAnswerModelCopyWith<TestAnswerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestAnswerModelCopyWith<$Res> {
  factory $TestAnswerModelCopyWith(
          TestAnswerModel value, $Res Function(TestAnswerModel) then) =
      _$TestAnswerModelCopyWithImpl<$Res, TestAnswerModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'question') String question,
      @JsonKey(name: 'answer') String answer,
      @JsonKey(name: 'correct-answer') String correctAnswer});
}

/// @nodoc
class _$TestAnswerModelCopyWithImpl<$Res, $Val extends TestAnswerModel>
    implements $TestAnswerModelCopyWith<$Res> {
  _$TestAnswerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? answer = null,
    Object? correctAnswer = null,
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
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestAnswerModelImplCopyWith<$Res>
    implements $TestAnswerModelCopyWith<$Res> {
  factory _$$TestAnswerModelImplCopyWith(_$TestAnswerModelImpl value,
          $Res Function(_$TestAnswerModelImpl) then) =
      __$$TestAnswerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'question') String question,
      @JsonKey(name: 'answer') String answer,
      @JsonKey(name: 'correct-answer') String correctAnswer});
}

/// @nodoc
class __$$TestAnswerModelImplCopyWithImpl<$Res>
    extends _$TestAnswerModelCopyWithImpl<$Res, _$TestAnswerModelImpl>
    implements _$$TestAnswerModelImplCopyWith<$Res> {
  __$$TestAnswerModelImplCopyWithImpl(
      _$TestAnswerModelImpl _value, $Res Function(_$TestAnswerModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? answer = null,
    Object? correctAnswer = null,
  }) {
    return _then(_$TestAnswerModelImpl(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      correctAnswer: null == correctAnswer
          ? _value.correctAnswer
          : correctAnswer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestAnswerModelImpl implements _TestAnswerModel {
  const _$TestAnswerModelImpl(
      {@JsonKey(name: 'question') required this.question,
      @JsonKey(name: 'answer') required this.answer,
      @JsonKey(name: 'correct-answer') required this.correctAnswer});

  factory _$TestAnswerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestAnswerModelImplFromJson(json);

  @override
  @JsonKey(name: 'question')
  final String question;
  @override
  @JsonKey(name: 'answer')
  final String answer;
  @override
  @JsonKey(name: 'correct-answer')
  final String correctAnswer;

  @override
  String toString() {
    return 'TestAnswerModel(question: $question, answer: $answer, correctAnswer: $correctAnswer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestAnswerModelImpl &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            (identical(other.correctAnswer, correctAnswer) ||
                other.correctAnswer == correctAnswer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, question, answer, correctAnswer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestAnswerModelImplCopyWith<_$TestAnswerModelImpl> get copyWith =>
      __$$TestAnswerModelImplCopyWithImpl<_$TestAnswerModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestAnswerModelImplToJson(
      this,
    );
  }
}

abstract class _TestAnswerModel implements TestAnswerModel {
  const factory _TestAnswerModel(
      {@JsonKey(name: 'question') required final String question,
      @JsonKey(name: 'answer') required final String answer,
      @JsonKey(name: 'correct-answer')
      required final String correctAnswer}) = _$TestAnswerModelImpl;

  factory _TestAnswerModel.fromJson(Map<String, dynamic> json) =
      _$TestAnswerModelImpl.fromJson;

  @override
  @JsonKey(name: 'question')
  String get question;
  @override
  @JsonKey(name: 'answer')
  String get answer;
  @override
  @JsonKey(name: 'correct-answer')
  String get correctAnswer;
  @override
  @JsonKey(ignore: true)
  _$$TestAnswerModelImplCopyWith<_$TestAnswerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
