// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_results_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResultsTestResultsModelImpl _$$ResultsTestResultsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ResultsTestResultsModelImpl(
      answersList: (json['answers'] as List<dynamic>)
          .map((e) => TestAnswerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      correctAnswers: (json['total-correct-answers'] as num).toInt(),
      incorrectAnswers: (json['total-incorrect-answers'] as num).toInt(),
      testNumber: (json['test_number'] as num).toInt(),
      sex: json['sex'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ResultsTestResultsModelImplToJson(
        _$ResultsTestResultsModelImpl instance) =>
    <String, dynamic>{
      'answers': instance.answersList,
      'total-correct-answers': instance.correctAnswers,
      'total-incorrect-answers': instance.incorrectAnswers,
      'test_number': instance.testNumber,
      'sex': instance.sex,
      'runtimeType': instance.$type,
    };

_$LoadingTestResultsModelImpl _$$LoadingTestResultsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoadingTestResultsModelImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoadingTestResultsModelImplToJson(
        _$LoadingTestResultsModelImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$BadTestResultsModelImpl _$$BadTestResultsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BadTestResultsModelImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$BadTestResultsModelImplToJson(
        _$BadTestResultsModelImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$ErrorTestResultsModelImpl _$$ErrorTestResultsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ErrorTestResultsModelImpl(
      message: json['message'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ErrorTestResultsModelImplToJson(
        _$ErrorTestResultsModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'runtimeType': instance.$type,
    };

_$TestIdTestResultsModelImpl _$$TestIdTestResultsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TestIdTestResultsModelImpl(
      path: json['path'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TestIdTestResultsModelImplToJson(
        _$TestIdTestResultsModelImpl instance) =>
    <String, dynamic>{
      'path': instance.path,
      'runtimeType': instance.$type,
    };

_$TestAnswerModelImpl _$$TestAnswerModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TestAnswerModelImpl(
      question: json['question'] as String,
      answer: json['answer'] as String,
      correctAnswer: json['correct-answer'] as String,
    );

Map<String, dynamic> _$$TestAnswerModelImplToJson(
        _$TestAnswerModelImpl instance) =>
    <String, dynamic>{
      'question': instance.question,
      'answer': instance.answer,
      'correct-answer': instance.correctAnswer,
    };
