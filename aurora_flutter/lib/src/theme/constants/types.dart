import 'package:flutter/material.dart';

import '../theme_modes.dart';
import '../topg_theme.dart';
import 'constants.dart';

enum TopGType {
  regular,
  highlight,
  stress,
  action,
  statistics,
  knowledge,
  surge,
  warning,
  disabled,
}

extension TopGTypeX on TopGType {
  Color resolveColor(BuildContext context) {
    final theme = TopGTheme.of(context);
    switch (this) {
      case TopGType.regular:
        final regularColor = theme.mode == TopGMode.light
            ? TopGColors.yLightGrey
            : TopGColors.yDarkGrey;
        return regularColor;
      case TopGType.highlight:
        final highlightColor = theme.mode == TopGMode.light
            ? TopGColors.softLightBlue
            : TopGColors.softDarkBlue;
        return highlightColor;
      case TopGType.stress:
        final stressColor = theme.mode == TopGMode.light
            ? TopGColors.softLightRose
            : TopGColors.softDarkRose;
        return stressColor;
      case TopGType.action:
        return TopGColors.yYellow;
      case TopGType.statistics:
        return TopGColors.yBlue;
      case TopGType.knowledge:
        return TopGColors.yGreen;
      case TopGType.surge:
        return TopGColors.yViolet;
      case TopGType.warning:
        return TopGColors.yRed;
      case TopGType.disabled:
        return TopGColors.yMidGrey.withOpacity(0.5);
    }
  }
}
