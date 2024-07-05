import 'package:flutter/material.dart';
import 'package:iispark_edu/theme/theme_helper.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get exo {
    return copyWith(
      fontFamily: 'Exo',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Title text style
  static get titleLargeIndigoA200 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.indigoA200,
      );
}
