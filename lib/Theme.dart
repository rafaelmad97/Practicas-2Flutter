import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static Color primary = Colors.blue;
  static Color secondary = Colors.redAccent;

  static Color TextPrimary = Colors.white;

  static ThemeData _generateTheme(bool dark) =>
      dark ? ThemeData.dark() : ThemeData.light();

  static ThemeData Theme = _generateTheme(false).copyWith(
    useMaterial3: true,
    appBarTheme: AppBarTheme(
      backgroundColor: primary,
      titleTextStyle: TextStyle(color: TextPrimary, fontSize: 22),
      centerTitle: true,
      elevation: 12,
      shadowColor: Colors.black,
    ),
    primaryColor: primary,
  );
}
