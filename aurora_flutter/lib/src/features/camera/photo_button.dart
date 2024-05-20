import 'package:flutter/material.dart';

import '../../theme/constants/constants.dart';
import '../../theme/topg_theme.dart';

class PhotoButton extends StatelessWidget {
  final VoidCallback? onPressed;
  const PhotoButton({
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = TopGTheme.of(context);
    final settingsTheme = theme.settings;

    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        border: Border.all(
          color: settingsTheme.textColor,
          width: 3,
        ),
        shape: BoxShape.circle,
      ),
      child: MaterialButton(
        onPressed: onPressed,
        shape: const CircleBorder(),
      ),
    );
  }
}
