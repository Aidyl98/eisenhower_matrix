import 'package:eisenhower_matrix/core/theme/colors_theme.dart';
import 'package:eisenhower_matrix/core/theme/texts_theme.dart';
import 'package:flutter/material.dart';

/// Custom [ThemeData] for the app.
class CustomTheme {
  /// The custom light theme for the app.
  static ThemeData lightThemeData = ThemeData(
    fontFamily: 'Archivo',
    primaryColor: ColorsTheme.primaryBlue,
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: Colors.white.withOpacity(1),
      modalBackgroundColor: Colors.white.withOpacity(1),
    ),
    // The theme for all the types of text in the app.
    textTheme: TextsTheme.lightTextTheme,
    indicatorColor: ColorsTheme.primaryBlue,
    // Define the default brightness and colors.
    colorScheme: const ColorScheme.light(
      brightness: Brightness.light,
      primary: ColorsTheme.primaryBlue,
      secondary: ColorsTheme.primaryBlueDark,
      background: ColorsTheme.background,
    ),
  );

  /// The custom dark theme for the app.
  static ThemeData darkThemeData = ThemeData(
    fontFamily: 'Archivo',
    primaryColor: ColorsTheme.primaryBlue,
    // The theme for all the types of text in the app.
    textTheme: TextsTheme.darkTextTheme,
    indicatorColor: ColorsTheme.primaryBlue,
    // Define the default brightness and colors.
    colorScheme: const ColorScheme.dark(
      brightness: Brightness.dark,
      primary: ColorsTheme.primaryBlue,
      secondary: ColorsTheme.primaryBlueDark,
    ),
  );
}
