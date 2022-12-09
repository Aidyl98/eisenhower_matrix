import 'package:flutter/material.dart';

/// All the colors that the app is going to have.
class ColorsTheme {
  // Primary color range.
  static const Color primaryBlue = Color(0xFF1565C0);
  static const Color primaryBlueDark = Color(0xFF003C8F);
  static const Color primaryBlueLight = Color(0xFF5E92F3);
  static const Color primaryRed = Color(0xFFB92B27);
  static const Color primaryRedDark = Color(0xFF820000);
  static const Color primaryRedLight = Color(0xFFF25F50);

  // The background color.
  static const Color background = gray;

  // Gray colors range.
  static const Color grayDark = Color(0xFF7A808A);
  static const Color grayNeutral = Color(0xFFA4ACC1);
  static const Color gray = Color(0xFFD5D6D9);
  static const Color grayMid = Color(0xFFEEF0F4);
  static const Color grayLight = Color(0xFFF8F8F8);

  /// [LinearGradient] a gradient of red to blue.
  static const LinearGradient appBarGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight, // 10% of the width, so there are ten blinds.
    colors: <Color>[primaryRed, primaryBlue], // red to blue
  );

  /// [BoxShadow] make the effect of have elevation in black.
  static const BoxShadow blackElevation = BoxShadow(
    color: Color(0xFF7A808A40),
    offset: Offset(0, 4),
    blurRadius: 8,
    spreadRadius: 0,
  );
}
