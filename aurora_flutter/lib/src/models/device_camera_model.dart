import 'package:camera/camera.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_camera_model.freezed.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class DeviceCameraModel with _$DeviceCameraModel {
  const factory DeviceCameraModel.available({
    required List<CameraDescription> availableCameras,
  }) = _AvailableDeviceCameraModel;

  const factory DeviceCameraModel.empty() = _EmptyDeviceCameraModel;

  const factory DeviceCameraModel.rejected() = _RejectedDeviceCameraModel;

  const factory DeviceCameraModel.error({
    String? message,
  }) = _ErrorDeviceCameraModel;

  const factory DeviceCameraModel.idle() = _IdleDeviceCameraModel;
}
