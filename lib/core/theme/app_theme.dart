import 'package:flutter/material.dart';
import 'package:flutter_upload_file/core/theme/app_color.dart';
import 'package:flutter_upload_file/core/theme/app_textsyle.dart';

class AppTheme {
  static ThemeData light = ThemeData(
    useMaterial3: false,
    brightness: Brightness.light,
    primaryColor: AppColor.primaryColor,
    scaffoldBackgroundColor: AppColor.backgroundWhite,
    primarySwatch: AppColor.primarySwatch,
    textTheme: const TextTheme(
      displayLarge: AppTextStyle.displayLarge,
      displayMedium: AppTextStyle.displayMedium,
      displaySmall: AppTextStyle.displaySmall,
      headlineLarge: AppTextStyle.headlineLarge,
      headlineMedium: AppTextStyle.headlineMedium,
      headlineSmall: AppTextStyle.headlineSmall,
      titleLarge: AppTextStyle.titleLarge,
      titleSmall: AppTextStyle.titleSmall,
      titleMedium: AppTextStyle.titleMedium,
      labelLarge: AppTextStyle.labelLarge,
      labelMedium: AppTextStyle.labelMedium,
      labelSmall: AppTextStyle.labelSmall,
      bodyLarge: AppTextStyle.bodyLarge,
      bodyMedium: AppTextStyle.bodyMedium,
      bodySmall: AppTextStyle.bodySmall,
    ),
  );

  static ThemeData dark = ThemeData(
    useMaterial3: false,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColor.backgroundBlack,
    primaryColor: AppColor.primaryColor,
    primarySwatch: AppColor.primarySwatch,
    textTheme: TextTheme(
      displayLarge: AppTextStyle.displayLarge.copyWith(
        color: AppColor.white,
      ),
      displayMedium: AppTextStyle.displayMedium.copyWith(
        color: AppColor.white,
      ),
      displaySmall: AppTextStyle.displaySmall.copyWith(
        color: AppColor.white,
      ),
      headlineLarge: AppTextStyle.headlineLarge.copyWith(
        color: AppColor.white,
      ),
      headlineMedium: AppTextStyle.headlineMedium.copyWith(
        color: AppColor.white,
      ),
      headlineSmall: AppTextStyle.headlineSmall.copyWith(
        color: AppColor.white,
      ),
      titleLarge: AppTextStyle.titleLarge.copyWith(
        color: AppColor.white,
      ),
      titleSmall: AppTextStyle.titleSmall.copyWith(
        color: AppColor.white,
      ),
      titleMedium: AppTextStyle.titleMedium.copyWith(
        color: AppColor.white,
      ),
      labelLarge: AppTextStyle.labelLarge.copyWith(
        color: AppColor.white,
      ),
      labelMedium: AppTextStyle.labelMedium.copyWith(
        color: AppColor.white,
      ),
      labelSmall: AppTextStyle.labelSmall.copyWith(
        color: AppColor.white,
      ),
      bodyLarge: AppTextStyle.bodyLarge.copyWith(
        color: AppColor.white,
      ),
      bodyMedium: AppTextStyle.bodyMedium.copyWith(
        color: AppColor.white,
      ),
      bodySmall: AppTextStyle.bodySmall.copyWith(
        color: AppColor.white,
      ),
    ),
  );
}
