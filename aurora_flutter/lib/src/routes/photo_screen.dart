import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n/s.dart';

import '../di/di.dart';
import '../di/photo_test_di.dart';
import '../features/camera/flash_button.dart';
import '../features/camera/info_button.dart';
import '../features/camera/manager.dart';
import '../features/camera/photo_button.dart';
import '../features/log/log.dart';
import '../features/photo_check/notifier.dart';
import '../features/settings/button.dart';
import '../models/device_camera_model.dart';
import '../theme/topg_theme.dart';
import 'app_router/app_router.dart';

@RoutePage()
class PhotoScreen extends ConsumerStatefulWidget {
  const PhotoScreen({super.key});

  @override
  ConsumerState<PhotoScreen> createState() => _PhotoScreenState();
}

class _PhotoScreenState extends ConsumerState<PhotoScreen>
    with WidgetsBindingObserver, TickerProviderStateMixin {
  CameraController? controller;
  StreamSubscription<DeviceCameraModel>? _subscription;
  String description = '';
  FlashMode flashMode = FlashMode.always;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    final camerasManager = getIt.get<CamerasManager>();
    _subscription ??= camerasManager.stream.listen(_onCamerasMangerEvent);
  }

  void _onCamerasMangerEvent(DeviceCameraModel cameraModel) =>
      cameraModel.when<void>(
        available: (cameras) {
          CameraDescription cameraDesc = cameras.first;
          for (final camera in cameras) {
            if (camera.lensDirection == CameraLensDirection.back) {
              cameraDesc = camera;
              break;
            }
          }
          unawaited(onNewCameraSelected(cameraDesc));
          setState(() {});
        },
        empty: () {
          description = 'Нет доступных камер';
          setState(() {});
        },
        rejected: () {
          description = 'Нажмите, чтобы дать разрешение к камере';
          setState(() {});
        },
        error: (message) {
          description = 'Произошла ошибка';
          setState(() {});
        },
        idle: () {
          description = 'Загрузка...';
          setState(() {});
        },
      );

  Future<void> onNewCameraSelected(CameraDescription cameraDescription) async {
    if (controller != null) {
      return controller!.setDescription(cameraDescription);
    } else {
      return _initializeCameraController(cameraDescription);
    }
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final CameraController? cameraController = controller;

    // App state changed before we got the chance to initialize.
    if (cameraController == null || !cameraController.value.isInitialized) {
      return;
    }

    if (state == AppLifecycleState.inactive) {
      unawaited(cameraController.dispose());
    } else if (state == AppLifecycleState.resumed) {
      unawaited(_initializeCameraController(cameraController.description));
    }
  }

  @override
  Widget build(BuildContext context) {
    final photoCheckNotifier =
        ref.watch(PhotoTestDi.photoCheckProvider.notifier);
    final theme = TopGTheme.of(context);
    final settingsTheme = theme.settings;
    return Scaffold(
      backgroundColor: settingsTheme.backgroundColor,
      appBar: AppBar(
        backgroundColor: settingsTheme.backgroundColor,
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 69, 83, 209),
              ),
              child: _cameraPreviewWidget(),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional.center,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: SizedBox(
                      child: PhotoButton(
                        onPressed: controller != null &&
                                controller!.value.isInitialized &&
                                !controller!.value.isRecordingVideo
                            ? () async => onTakePictureButtonPressed(
                                context, photoCheckNotifier)
                            : null,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.centerEnd,
                  child: SettingsButton(
                    onTap: () async {
                      await context.router.push(const SettingsRoute());
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Display the preview from the camera (or a message if the preview is not available).
  Widget _cameraPreviewWidget() {
    final CameraController? cameraController = controller;

    if (cameraController == null || !cameraController.value.isInitialized) {
      return GestureDetector(
        child: Text(
          description,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24.0,
            fontWeight: FontWeight.w900,
          ),
        ),
        onTap: () async {
          final camerasManager = getIt.get<CamerasManager>();
          final cameras = await availableCameras();
          camerasManager.updateCameras(cameras);
        },
      );
    } else {
      return CameraPreview(
        controller!,
      );
    }
  }

  Future<void> onTakePictureButtonPressed(
      BuildContext context, PhotoCheckNotifier photoCheckNotifier) async {
    await takePicture().then(
      (XFile? file) async {
        if (mounted) {
          if (file != null) {
            getIt.get<Log>().d(file.path);
            photoCheckNotifier.checkPhoto(file.path);
            final camerasManager = getIt.get<CamerasManager>();
            camerasManager.turnOff();
            await context.router.push(const PhotoCheckRoute());
          }
        }
      },
    );
  }

  Future<XFile?> takePicture() async {
    final CameraController? cameraController = controller;
    if (cameraController == null || !cameraController.value.isInitialized) {
      _showInSnackBar('Error: select a camera first.');
      return null;
    }

    if (cameraController.value.isTakingPicture) {
      // A capture is already pending, do nothing.
      return null;
    }

    try {
      final XFile file = await cameraController.takePicture();
      return file;
    } on CameraException catch (e) {
      getIt.get<Log>().e('Error: ${e.code}\n${e.description}');
      _showInSnackBar('Error: ${e.code}\n${e.description}');
      return null;
    }
  }

  Future<void> _initializeCameraController(
      CameraDescription cameraDescription) async {
    final CameraController cameraController = CameraController(
      cameraDescription,
      kIsWeb ? ResolutionPreset.max : ResolutionPreset.medium,
      imageFormatGroup: ImageFormatGroup.jpeg,
    );

    controller = cameraController;

    // If the controller is updated then update the UI.
    cameraController.addListener(() {
      if (mounted) {
        setState(() {});
      }
      if (cameraController.value.hasError) {
        _showInSnackBar(
          'Camera error ${cameraController.value.errorDescription}',
        );
      }
    });

    try {
      await cameraController.initialize();
      await cameraController.setFlashMode(FlashMode.off);
    } on CameraException catch (e) {
      switch (e.code) {
        case 'CameraAccessDenied':
          _showInSnackBar('You have denied camera access.');
        case 'CameraAccessDeniedWithoutPrompt':
          // iOS only
          _showInSnackBar('Please go to Settings app to enable camera access.');
        case 'CameraAccessRestricted':
          // iOS only
          _showInSnackBar('Camera access is restricted.');
        case 'AudioAccessDenied':
          _showInSnackBar('You have denied audio access.');
        case 'AudioAccessDeniedWithoutPrompt':
          // iOS only
          _showInSnackBar('Please go to Settings app to enable audio access.');
        case 'AudioAccessRestricted':
          // iOS only
          _showInSnackBar('Audio access is restricted.');
        default:
          getIt.get<Log>().e('Error: ${e.code}\n${e.description}');
          _showInSnackBar('Error: ${e.code}\n${e.description}');
          break;
      }
    }

    if (mounted) {
      setState(() {});
    }
  }

  void _showInSnackBar(String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Future<void> dispose() async {
    WidgetsBinding.instance.removeObserver(this);
    await _subscription?.cancel();
    super.dispose();
  }
}
