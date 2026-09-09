import 'package:flutter/material.dart';
import 'package:maash_online_shopping_app/theme/app_colors.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.background,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.black,
        brightness: Brightness.light,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.background,
        foregroundColor: AppColors.black,
        elevation: 0,
        centerTitle: false,
      ),
      dividerColor: AppColors.border,
    );
  }
}
