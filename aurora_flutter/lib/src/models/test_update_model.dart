import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_update_model.freezed.dart';
part 'test_update_model.g.dart';

@freezed
class TestUpdateModel with _$TestUpdateModel {
  @JsonSerializable(explicitToJson: true)
  const factory TestUpdateModel({
    @JsonKey(name: 'login') @Default('') String login,
    @JsonKey(name: 'password') @Default('') String password,
    @JsonKey(name: 'number') @Default('') String testId,
    @JsonKey(name: 'test') @Default([]) List<TestUpdateRowModel> test,
  }) = _TestUpdateModel;

  factory TestUpdateModel.fromJson(Map<String, dynamic> json) =>
      _$TestUpdateModelFromJson(json);
}

@freezed
class TestUpdateRowModel with _$TestUpdateRowModel {
  @JsonSerializable(explicitToJson: true)
  const factory TestUpdateRowModel({
    @JsonKey(name: 'question') @Default('') String question,
    @JsonKey(name: 'correct_answer') @Default('') String answer,
  }) = _TestUpdateRowModel;

  factory TestUpdateRowModel.fromJson(Map<String, dynamic> json) =>
      _$TestUpdateRowModelFromJson(json);
}

class TestUpdateConverter
    implements JsonConverter<TestUpdateModel, Map<String, dynamic>> {
  const TestUpdateConverter();

  @override
  TestUpdateModel fromJson(Map<String, dynamic> json) =>
      TestUpdateModel.fromJson(json);

  @override
  Map<String, dynamic> toJson(TestUpdateModel data) => data.toJson();
}
