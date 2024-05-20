import 'package:freezed_annotation/freezed_annotation.dart';

part 'photo_check_model.freezed.dart';

@freezed
class PhotoCheckModel with _$PhotoCheckModel {
  const factory PhotoCheckModel.photo({
    required String path,
  }) = _PhotoCheckModelPhoto;

  const factory PhotoCheckModel.error({
    String? message,
  }) = _PhotoCheckModelError;

  const factory PhotoCheckModel.idle({
    String? description,
  }) = _PhotoCheckModelIdle;
}
