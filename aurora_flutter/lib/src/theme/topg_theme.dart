import 'package:flutter/material.dart';

import 'theme_modes.dart';
import 'topg_provider.dart';
import 'topg_theme_data.dart';

/// Injects [TopGTheme] components and themes library and allow switch theme modes
/// Should invoke init() before runapp to initialize shared preferences
class TopG extends StatefulWidget {
  final Widget child;
  const TopG({required this.child, super.key});

  static Future<void> toggleThemeOf(BuildContext context) async {
    final _TopGState? topgState = context.findAncestorStateOfType<_TopGState>();

    if (topgState == null) {
      throw FlutterError(
        'TopG operation requested with a context that does not include a TopG.\n'
        'The context used to switch theme modes from the TopG must be that of a '
        'widget that is a descendant of a TopG widget.',
      );
    }

    await topgState.toggleTheme();
  }

  static Future<void> init() async {
    await TopGProvider.init();
  }

  @override
  State<TopG> createState() => _TopGState();
}

class _TopGState extends State<TopG> {
  late TopGThemeData data;

  @override
  void initState() {
    super.initState();
    data = TopGProvider.getThemeMode().resolveTheme();
  }

  Future<void> toggleTheme() async {
    setState(() {
      data = data.map<TopGThemeData>(
        light: (_) => const TopGThemeData.dark(),
        dark: (_) => const TopGThemeData.light(),
      );
    });
    await TopGProvider.setTheme(data.mode);
  }

  @override
  Widget build(BuildContext context) => TopGTheme(
        data: data,
        child: widget.child,
      );
}

/// Injects [TopGTheme] components and themes library.
/// Use [TopG] to enable theme mode switch.
class TopGTheme extends InheritedTheme {
  final TopGThemeData data;

  const TopGTheme({
    required this.data,
    required super.child,
    super.key,
  });

  static TopGThemeData of(BuildContext context) {
    final TopGTheme? topgTheme =
        context.dependOnInheritedWidgetOfExactType<TopGTheme>();
    final TopGThemeData? topgThemeData = topgTheme?.data;

    if (topgThemeData == null) {
      throw FlutterError(
        'TopGTheme operation requested with a context that does not include a TopGTheme.\n'
        'The context used to get theme from the TopGTheme must be that of a '
        'widget that is a descendant of a TopG widget.',
      );
    }

    return topgThemeData;
  }

  @override
  bool updateShouldNotify(TopGTheme oldWidget) => data != oldWidget.data;

  @override
  Widget wrap(BuildContext context, Widget child) =>
      TopGTheme(data: data, child: child);
}
