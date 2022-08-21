import 'package:flutter/material.dart';

class MyThemes {
  final color = const Color(0xFF363940);
  static final lightTheme = ThemeData(
      scaffoldBackgroundColor: const Color(0xFFF8F9FA),
      primaryColor: const Color(0xFFBAE8E8),
      primaryColorDark: Colors.black,
      primaryColorLight: const Color(0xFFE3F6F5));

  static final darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.black,
      primaryColorDark: Colors.white,
      primaryColorLight: const Color(0xFFBAE8E8),
      cardColor: Colors.black87,
      colorScheme: const ColorScheme.dark());
}
