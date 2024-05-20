// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i8;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i5;

import '../features/camera/manager.dart' as _i4;
import '../features/log/log.dart' as _i6;
import '../features/log/logger.dart' as _i7;
import '../routes/app_router/app_router.dart' as _i3;
import '../services/test_check.dart' as _i9;
import 'di.dart' as _i10;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final appModule = _$AppModule();
    gh.factory<_i3.AppRouter>(() => _i3.AppRouter());
    gh.singleton<_i4.CamerasManager>(
      () => _i4.CamerasManager()..init(),
      dispose: (i) => i.dispose(),
    );
    gh.lazySingleton<_i5.Logger>(() => appModule.createLog());
    gh.lazySingleton<_i6.Log>(() => _i7.Logger(gh<_i5.Logger>()));
    gh.lazySingleton<_i8.Dio>(
      () => appModule.testPhotoCheckClient(gh<_i6.Log>()),
      instanceName: 'TestCheckClient',
    );
    gh.singleton<_i9.TestCheckService>(() =>
        _i9.TestCheckService(gh<_i8.Dio>(instanceName: 'TestCheckClient')));
    return this;
  }
}

class _$AppModule extends _i10.AppModule {}
