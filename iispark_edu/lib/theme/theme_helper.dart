import 'package:flutter/material.dart';
import 'package:iispark_edu/core/utils/size_utils.dart';
import '../core/app_export.dart';

String _appTheme = "lightCode";
LightCodeColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ThemeHelper {
  // A map of custom color themes supported by the app
  final Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };

// A map of color schemes supported by the app
  final Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };

  /// Changes the app theme to [newTheme].
  void changeTheme(String newTheme) {
    _appTheme = newTheme;
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.onError,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
    );
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        titleLarge: TextStyle(
          color: colorScheme.onError,
          fontSize: 20.fSize,
          fontFamily: 'Exo',
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          color: appTheme.indigoA200,
          fontSize: 18.fSize,
          fontFamily: 'Exo',
          fontWeight: FontWeight.w600,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static const lightCodeColorScheme = ColorScheme.light(
    primary: Color(0X19000000),
    primaryContainer: Color(0XFF000000),
    errorContainer: Color(0XFF8EFF00),
    onError: Color(0XFFFFFFFF),
    onPrimary: Color(0XFF2E3CC0),
  );
}

/// Class containing custom colors for a lightCode theme.
class LightCodeColors {
  // Amber
  Color get amber500 => const Color(0XFFEABA11);
// Cyan
  Color get cyan400 => const Color(0XFF11C9EA);
// DeepOrange
  Color get deepOrange400 => const Color(0XFFFD7456);
// DeepPurple
  Color get deepPurple700 => const Color(0XFF463BB1);
  Color get deepPurpleA200 => const Color(0XFF8A52FF);
  Color get deepPurpleA400 => const Color(0XFF6B33E0);
// Gray
  Color get gray100 => const Color(0XFFF4F5F9);
// Green
  Color get greenA700 => const Color(0XFF10C900);
// Indigo
  Color get indigoA200 => const Color(0XFF5667FD);
// Pink
  Color get pink300 => const Color(0XFFFF52A5);
// Red
  Color get redA200 => const Color(0XFFFF5252);
}
