// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_update_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TestUpdateModelImpl _$$TestUpdateModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TestUpdateModelImpl(
      login: json['login'] as String? ?? '',
      password: json['password'] as String? ?? '',
      testId: json['number'] as String? ?? '',
      test: (json['test'] as List<dynamic>?)
              ?.map(
                  (e) => TestUpdateRowModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$TestUpdateModelImplToJson(
        _$TestUpdateModelImpl instance) =>
    <String, dynamic>{
      'login': instance.login,
      'password': instance.password,
      'number': instance.testId,
      'test': instance.test.map((e) => e.toJson()).toList(),
    };

_$TestUpdateRowModelImpl _$$TestUpdateRowModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TestUpdateRowModelImpl(
      question: json['question'] as String? ?? '',
      answer: json['correct_answer'] as String? ?? '',
    );

Map<String, dynamic> _$$TestUpdateRowModelImplToJson(
        _$TestUpdateRowModelImpl instance) =>
    <String, dynamic>{
      'question': instance.question,
      'correct_answer': instance.answer,
    };
