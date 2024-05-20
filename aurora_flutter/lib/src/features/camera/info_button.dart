import 'package:flutter/material.dart';

import '../../theme/constants/constants.dart';

class InfoButton extends StatelessWidget {
  final VoidCallback? onPressed;
  const InfoButton({
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) => IconButton(
        onPressed: onPressed,
        icon: const Icon(
          Icons.info_outline,
          color: TopGColors.yDarkGrey,
        ),
      );
}
