import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Primitives
  static const Color black = Colors.black;
  static const Color black54 = Colors.black54;
  static const Color black45 = Colors.black45;
  static const Color black26 = Colors.black26;
  static const Color white = Colors.white;
  static const Color white24 = Colors.white24;
  static const Color white30 = Colors.white30;
  static const Color transparent = Colors.transparent;

  // Primary Colors
  static const Color primary = Color(0xFF1E3A8A); // Deep Blue
  static const Color primaryDark = Color(0xFF60A5FA); // Light Blue for dark mode
  static const Color accent = Colors.blue;

  // Status Colors
  static const Color success = Colors.green;
  static const Color successLight = Color(0xFFE8F5E9); // green[50]
  static const Color successDark = Color(0xFF1B5E20); 
  static const Color error = Colors.red;
  static const Color errorAccent = Colors.redAccent;
  static const Color errorLight = Color(0xFFFFEBEE); // red[50]
  static const Color errorDark = Color(0xFFB71C1C);
  static const Color warning = Colors.orangeAccent;

  // Neutral Colors (Light)
  static const Color background = Colors.white;
  static const Color surface = Colors.white;
  static const Color grey = Colors.grey;
  static const Color greyLight = Color(0xFFF5F5F5); // grey[100]
  static const Color greyMedium = Color(0xFFE0E0E0); // grey[300]
  static const Color greyText = Color(0xFF6B7280);
  static const Color disabled = Color(0xFFD1D5DB);

  // Neutral Colors (Dark)
  static const Color backgroundDark = Color(0xFF0D1117);
  static const Color surfaceDark = Color(0xFF161B22);
  static const Color greyTextDark = Color(0xFF8B949E);
  static const Color disabledDark = Color(0xFF374151);

  // Backgrounds / Shadows
  static const Color shadow = Color(0x1A000000); // grey.withOpacity(0.1)
}
