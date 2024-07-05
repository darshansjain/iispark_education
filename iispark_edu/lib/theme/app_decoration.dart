import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Gradient decorations
  static BoxDecoration get gradientOnPrimaryToDeepPurpleA => BoxDecoration(
        gradient: LinearGradient(
          begin: const Alignment(0.66, 0.07),
          end: const Alignment(0.31, 0.83),
          colors: [
            theme.colorScheme.onPrimary,
            appTheme.deepPurple700,
            appTheme.deepPurpleA400
          ],
        ),
      );
}

class BorderRadiusStyle {
  // Rounded borders
  static BorderRadius get roundedBorder2 => BorderRadius.circular(
        2.h,
      );
}
