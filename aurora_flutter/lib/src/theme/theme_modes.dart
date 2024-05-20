import 'topg_theme_data.dart';

enum TopGMode { light, dark }

extension TopGModeX on TopGMode {
  TopGMode get deagault => TopGMode.light;

  TopGThemeData resolveTheme() {
    switch (this) {
      case TopGMode.light:
        return const TopGThemeData.light();
      case TopGMode.dark:
        return const TopGThemeData.dark();
    }
  }

  static TopGMode resolveString(String? themeMode) {
    switch (themeMode) {
      case 'TopGMode.light':
        return TopGMode.light;
      case 'TopGMode.dark':
        return TopGMode.dark;
      default:
        return TopGMode.light;
    }
  }
}
