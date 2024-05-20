import 'dart:async';

import 'package:camera/camera.dart';
import 'package:injectable/injectable.dart';

import '../../models/device_camera_model.dart';

@singleton
class CamerasManager {
  final List<CameraDescription> _cameraList = [];
  DeviceCameraModel _state = const DeviceCameraModel.idle();
  late final StreamController<DeviceCameraModel> _streamController;

  Stream<DeviceCameraModel> get stream => _streamController.stream;
  DeviceCameraModel get stateSync => _state;
  List<CameraDescription> get availableCameraList => _cameraList;

  @PostConstruct()
  void init() {
    _streamController = StreamController();
    _streamController.sink.add(_state);
  }

  void updateCameras(List<CameraDescription> camerasList) {
    _cameraList.clear();
    _cameraList.addAll(camerasList);
    if (camerasList.isEmpty) {
      _state = const DeviceCameraModel.empty();
      _streamController.sink.add(_state);
    } else {
      _state = DeviceCameraModel.available(
        availableCameras: _cameraList,
      );
      _streamController.sink.add(_state);
    }
  }

  Future<void> getAvailableCameras() async {
    final photoCameras = await availableCameras();
    updateCameras(photoCameras);
  }

  void rejected() {
    _state = const DeviceCameraModel.rejected();
    _streamController.sink.add(_state);
  }

  void addError(String? message) {
    _state = DeviceCameraModel.error(message: message);
    _streamController.sink.add(_state);
  }

  void turnOff() {
    _state = const DeviceCameraModel.idle();
    _streamController.sink.add(_state);
  }

  @disposeMethod
  Future<void> dispose() async {
    await _streamController.close();
  }
}
