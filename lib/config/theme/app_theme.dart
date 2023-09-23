import 'package:flutter/material.dart';
import 'package:flutter_weather_app/config/constants/app_colors.dart';

class AppTheme {
  static ThemeData getDarkTheme() => ThemeData(
        colorScheme: const ColorScheme.dark(
          background: darkBg,
          primary: darkPrimary,
          secondary: darkSecondary,
          onPrimary: acent1,
          onSecondary: acent2,
        ),
        useMaterial3: true,
        scaffoldBackgroundColor: darkBg,
        brightness: Brightness.dark,
        fontFamily: AutofillHints.countryName,
      );
  static ThemeData getLightTheme() => ThemeData(
        colorScheme: const ColorScheme.light(
          background: bg,
          primary: primary,
          secondary: secondary,
          onPrimary: acent1,
          onSecondary: acent2,
        ),
        useMaterial3: true,
        scaffoldBackgroundColor: darkBg,
        brightness: Brightness.dark,
        fontFamily: AutofillHints.countryName,
      );
}
