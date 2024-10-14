import 'package:flutter/material.dart';
import 'package:json_theme/json_theme.dart';

class AppTheme {
  late ThemeData current;
  late bool isDark;

  AppTheme({required this.current, required this.isDark});

  static ThemeData dark = ThemeDecoder.decodeThemeData({})!;
  static ThemeData light = ThemeDecoder.decodeThemeData({})!;
}
