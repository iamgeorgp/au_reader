import 'package:freezed_annotation/freezed_annotation.dart';

part 'camera_model.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class CameraModel with _$CameraModel {
  const factory CameraModel.enabled() = _EnabledCameraModel;

  const factory CameraModel.disabled({
    String? description,
  }) = _DisabledCameraModel;
}
