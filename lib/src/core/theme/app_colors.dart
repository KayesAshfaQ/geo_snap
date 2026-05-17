import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Primary Colors
  static const Color primary = Color(0xFF1E3A8A); // Deep Blue
  static const Color accent = Colors.blue;

  // Status Colors
  static const Color success = Colors.green;
  static const Color successLight = Color(0xFFE8F5E9); // green[50]
  static const Color error = Colors.red;
  static const Color errorAccent = Colors.redAccent;
  static const Color errorLight = Color(0xFFFFEBEE); // red[50]

  // Neutral Colors
  static const Color white = Colors.white;
  static const Color background = Colors.white;
  static const Color grey = Colors.grey;
  static const Color greyLight = Color(0xFFF5F5F5); // grey[100]
  static const Color greyMedium = Color(0xFFE0E0E0); // grey[300]
  static const Color greyText = Colors.grey;
  static const Color disabled = Color(0xFFD1D5DB);

  // Backgrounds / Shadows
  static const Color shadow = Color(0x1A000000); // grey.withOpacity(0.1)
}
