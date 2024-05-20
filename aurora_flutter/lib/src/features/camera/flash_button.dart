import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

import '../../theme/constants/constants.dart';

extension FlashModeX on FlashMode {
  IconData resolveIcon() {
    switch (this) {
      case FlashMode.always:
        return Icons.flash_on_rounded;
      case FlashMode.auto:
        return Icons.flash_auto_rounded;
      case FlashMode.off:
        return Icons.flash_off_rounded;
      case FlashMode.torch:
        return Icons.flare_rounded;
    }
  }
}

class FlashButton extends StatelessWidget {
  final FlashMode flashMode;
  final VoidCallback? onPressed;
  const FlashButton({
    required this.flashMode,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => IconButton(
        onPressed: onPressed,
        icon: Icon(
          flashMode.resolveIcon(),
          color: TopGColors.yLightGrey,
        ),
      );
}
