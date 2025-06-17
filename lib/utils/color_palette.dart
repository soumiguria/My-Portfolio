import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      surface: Color(0xFFFFFFFF),
      primary: Color(0xFFE5E5E5),
      secondary: Color(0xFF000000),
      tertiary: Color(0xFFB4B4B4),
      shadow: Color(0xFFB0B0B0),
      primaryContainer: Color(0xFFCECECE),
      onPrimaryContainer: Color(0xFFF5F5F5),
    ));

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    surface: Color.fromARGB(255, 39, 39, 39),
    primary: Color(0xFF303030), // Dark primary color
    secondary: Color(0xFFFFD700), // Yellow accent color
    tertiary: Color(0xFFFFD700), // Yellow accent for tertiary elements
    shadow: Color(0xFF1C1C1C), // Dark shadow color for contrast
    primaryContainer: Color(0xFF424242), // Darker primary container
    onPrimaryContainer: Color(0Xff303030), // Light text/icon on dark container
  ),
);
