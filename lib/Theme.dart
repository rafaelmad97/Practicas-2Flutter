import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static Color primary = Colors.red.shade900;
  static Color secondary = Colors.blue;

  static Color TextPrimary = Colors.white;

  static ThemeData _generateTheme(bool dark) =>
      dark ? ThemeData.dark() : ThemeData.light();

  static ThemeData Theme = _generateTheme(false).copyWith(
      useMaterial3: true,
      appBarTheme:
          AppBarTheme(backgroundColor: primary, foregroundColor: TextPrimary),
      primaryColor: primary,
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(foregroundColor: primary)),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: primary, foregroundColor: TextPrimary)),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
              foregroundColor: primary, side: BorderSide(color: primary))));
}
