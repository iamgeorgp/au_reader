import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../features/photo_check/notifier.dart';
import '../features/results/notifier.dart';
import '../models/photo_check_model.dart';
import '../models/test_results_model.dart';
import '../services/test_check.dart';
import 'di.dart';

abstract class PhotoTestDi {
  static final photoCheckProvider =
      StateNotifierProvider.autoDispose<PhotoCheckNotifier, PhotoCheckModel>(
    (ref) => PhotoCheckNotifier(),
  );

  static final testResultsProvider =
      StateNotifierProvider.autoDispose<TestResultsNotifier, TestResultsModel>(
    (ref) => TestResultsNotifier(
      testCheckService: getIt.get<TestCheckService>(),
    ),
  );
}
