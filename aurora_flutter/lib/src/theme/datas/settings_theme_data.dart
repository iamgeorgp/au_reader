import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../constants/constants.dart';

part 'settings_theme_data.freezed.dart';

@freezed
class SettingsThemeData with _$SettingsThemeData {
  const factory SettingsThemeData.light({
    @Default(TopGColors.white) Color buttonColor,
    @Default(TopGColors.blueCrayola) Color blockTitleColor,
    @Default(TopGColors.white) Color blockColor,
    @Default(TopGColors.eerieBlack) Color textColor,
    @Default(TopGColors.quickSilver) Color iconColor,
    @Default(Color.fromARGB(255, 178, 185, 248)) Color backgroundColor,
    @Default(TopGColors.quickSilver) Color dividerColor,
  }) = _SettingsThemeDataLight;

  const factory SettingsThemeData.dark({
    @Default(TopGColors.blackFogra) Color buttonColor,
    @Default(TopGColors.blueCrayola) Color blockTitleColor,
    @Default(TopGColors.eerieBlack) Color blockColor,
    @Default(TopGColors.white) Color textColor,
    @Default(TopGColors.quickSilver) Color iconColor,
    @Default(Color.fromARGB(255, 69, 83, 209)) Color backgroundColor,
    @Default(TopGColors.quickSilver) Color dividerColor,
  }) = _SettingsThemeDataDark;
}
