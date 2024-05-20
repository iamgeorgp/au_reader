import 'dart:async';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:i18n/i18n.dart';

import 'src/di/di.dart';
import 'src/features/camera/manager.dart';
import 'src/features/log/log.dart';
import 'src/routes/app_router/app_router.dart';
import 'src/theme/topg_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  final camerasManager = getIt.get<CamerasManager>();
  try {
    await camerasManager.getAvailableCameras();
  } on CameraException catch (e) {
    getIt.get<Log>().e('Error: ${e.code}\n${e.description}');
  }
  await TopG.init();
  await ScarlettLocalization.init();
  runApp(
    const ProviderScope(
      child: TopG(
        child: PhotoTestApp(),
      ),
    ),
  );
}

class PhotoTestApp extends StatefulWidget {
  const PhotoTestApp({super.key});

  @override
  State<PhotoTestApp> createState() => _PhotoTestAppState();
}

class _PhotoTestAppState extends State<PhotoTestApp> {
  final _router = AppRouter();
  @override
  Widget build(BuildContext context) {
    unawaited(SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]));

    final theme = TopGTheme.of(context);
    final colorTheme = theme.colorScheme;

    return ScarlettLocalization(
      builder: (locale) => MaterialApp.router(
        locale: locale,
        supportedLocales: S.supportedLocales,
        localizationsDelegates: S.localizationDelegates,
        theme: ThemeData(colorScheme: colorTheme),
        routerConfig: _router.config(),
      ),
    );
  }

  @override
  void dispose() {
    _router.dispose();
    super.dispose();
  }
}
