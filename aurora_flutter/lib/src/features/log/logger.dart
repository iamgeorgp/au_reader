import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart' as l;

import 'log.dart';

@LazySingleton(as: Log)
class Logger implements Log {
  l.Logger logger;

  Logger(this.logger);

  @override
  void d(dynamic message, {DateTime? time, StackTrace? stackTrace}) {
    logger.d(message, time: time, stackTrace: stackTrace);
  }

  @override
  void e(dynamic message, {DateTime? time, StackTrace? stackTrace}) {
    logger.e(message, time: time, stackTrace: stackTrace);
  }

  @override
  void i(dynamic message, {DateTime? time, StackTrace? stackTrace}) {
    logger.i(message, time: time, stackTrace: stackTrace);
  }

  @override
  void w(dynamic message, {DateTime? time, StackTrace? stackTrace}) {
    logger.w(message, time: time, stackTrace: stackTrace);
  }

  @override
  void wtf(dynamic message, {DateTime? time, StackTrace? stackTrace}) {
    logger.f(message, time: time, stackTrace: stackTrace);
  }
}
