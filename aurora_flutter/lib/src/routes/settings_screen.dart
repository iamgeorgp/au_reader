import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:i18n/i18n.dart';

import '../features/settings/settings_block.dart';
import '../features/settings/settings_tyle.dart';
import '../features/settings/settings_view.dart';
import '../theme/constants/constants.dart';
import '../theme/theme_modes.dart';
import '../theme/topg_theme.dart';
import 'app_router/app_router.dart';

class ThemeRadio extends StatelessWidget {
  final TopGMode themeMode;
  const ThemeRadio({required this.themeMode, super.key});

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          ListTile(
            title: Text('Светлая'),
            leading: Radio<TopGMode>(
              value: TopGMode.light,
              groupValue: themeMode,
              onChanged: (TopGMode? value) async {
                await TopG.toggleThemeOf(context);
              },
            ),
          ),
          ListTile(
            title: Text('Темная'),
            leading: Radio<TopGMode>(
              value: TopGMode.dark,
              groupValue: themeMode,
              onChanged: (TopGMode? value) async {
                await TopG.toggleThemeOf(context);
              },
            ),
          ),
        ],
      );
}

class LanguageRadio extends StatelessWidget {
  const LanguageRadio({super.key});

  @override
  Widget build(BuildContext context) => ScarlettLocalization(
        builder: (locale) => Column(
          children: <Widget>[
            ListTile(
              title: const Text('Русский'),
              leading: Radio<String>(
                value: 'Русский',
                groupValue: S.of(context).localeFull,
                onChanged: (String? value) async {
                  await ScarlettLocalization.switchLocaleOf(context);
                },
              ),
            ),
            ListTile(
              title: const Text('English'),
              leading: Radio<String>(
                value: 'English',
                groupValue: S.of(context).localeFull,
                onChanged: (String? value) async {
                  await ScarlettLocalization.switchLocaleOf(context);
                },
              ),
            ),
          ],
        ),
      );
}

@RoutePage()
class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = TopGTheme.of(context);
    final themeMode = theme.mode;
    final themeTitle = themeMode == TopGMode.light
        ? S.of(context).lightTheme
        : S.of(context).darkTheme;
    final themeIcon = themeMode == TopGMode.light
        ? Icons.sunny
        : Icons.nightlight_round_outlined;

    final settingsTheme = theme.settings;

    return Scaffold(
        backgroundColor: settingsTheme.backgroundColor,
        appBar: AppBar(
          backgroundColor: settingsTheme.backgroundColor,
          title: Text(S.of(context).settings),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: Column(
          children: [
            Expanded(
                child: Column(
              children: [
                Text('Тема', style: const TextStyle(fontSize: 18)),
                ThemeRadio(
                  themeMode: theme.mode,
                ),
                Text(S.of(context).language,
                    style: const TextStyle(fontSize: 18)),
                const LanguageRadio(),
                const SizedBox(
                  height: 10,
                ),
              ],
            )),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: IconButton(
                      onPressed: () {
                        unawaited(context.router.maybePop());
                      },
                      icon: Icon(
                        size: 40,
                        Icons.chevron_left,
                        color: settingsTheme.textColor,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: OutlinedButton(
                      onPressed: () async {
                        await context.router.push(const TestUpdateRoute());
                      },
                      style: OutlinedButton.styleFrom(
                          foregroundColor: settingsTheme.textColor),
                      child: Text('Добавить тест'),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
