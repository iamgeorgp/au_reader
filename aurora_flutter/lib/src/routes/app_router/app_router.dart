import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import '../photo_check_screen.dart';
import '../photo_screen.dart';
import '../settings_screen.dart';
import '../test_results_screen.dart';
import '../test_update_screen.dart';

part 'app_router.gr.dart';

@injectable
@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SettingsRoute.page),
        AutoRoute(page: PhotoRoute.page, initial: true),
        AutoRoute(page: PhotoCheckRoute.page),
        AutoRoute(page: TestResultsRoute.page),
        AutoRoute(page: TestUpdateRoute.page),
      ];
}
