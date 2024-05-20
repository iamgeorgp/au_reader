import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../clients/test_check_client.dart';
import '../features/log/log.dart';
import 'di.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
void configureDependencies() => getIt.init();

@module
abstract class AppModule {
  @lazySingleton
  Logger createLog() => Logger();

  @testCheckClient
  @lazySingleton
  Dio testPhotoCheckClient(Log logger) => createTestCheckClient(logger);
}
