import 'package:flutter/material.dart';
import 'package:flutter_upload_file/core/theme/app_color.dart';

class AppTextStyle {
  AppTextStyle._();

  static const TextStyle displayLarge = TextStyle(
    color: AppColor.blackGrey,
    fontSize: 57,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle displayMedium = TextStyle(
    color: AppColor.blackGrey,
    fontSize: 45,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle displaySmall = TextStyle(
    color: AppColor.blackGrey,
    fontSize: 36,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle headlineLarge = TextStyle(
    color: AppColor.blackGrey,
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle headlineMedium = TextStyle(
    color: AppColor.blackGrey,
    fontSize: 28,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle headlineSmall = TextStyle(
    color: AppColor.blackGrey,
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle titleLarge = TextStyle(
    fontWeight: FontWeight.bold,
    color: AppColor.blackGrey,
    fontSize: 22,
  );

  static const TextStyle titleMedium = TextStyle(
    fontWeight: FontWeight.bold,
    color: AppColor.blackGrey,
    fontSize: 18,
  );

  static const TextStyle titleSmall = TextStyle(
    fontWeight: FontWeight.bold,
    color: AppColor.blackGrey,
    fontSize: 14,
  );

  static const TextStyle labelLarge = TextStyle(
    color: AppColor.blackGrey,
    fontSize: 14,
  );
  static const TextStyle labelMedium = TextStyle(
    color: AppColor.blackGrey,
    fontSize: 12,
  );

  static const TextStyle labelSmall = TextStyle(
    color: AppColor.blackGrey,
    fontSize: 11,
  );
  static const TextStyle bodyLarge = TextStyle(
    fontWeight: FontWeight.bold,
    color: AppColor.blackGrey,
    fontSize: 16,
  );

  static const TextStyle bodyMedium = TextStyle(
    color: AppColor.blackGrey,
    fontSize: 14,
  );

  static const TextStyle bodySmall = TextStyle(
    color: AppColor.blackGrey,
    fontSize: 12,
  );
}

Widget textThemeSample(BuildContext context) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "displayLarge",
          style: Theme.of(context).textTheme.displayLarge,
        ),
        Text(
          "displayMedium",
          style: Theme.of(context).textTheme.displayMedium,
        ),
        Text(
          "displaySmall",
          style: Theme.of(context).textTheme.displaySmall,
        ),
        Text(
          "headlineLarge",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        Text(
          "headlineMedium",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text(
          "headlineSmall",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        Text(
          "titleLarge",
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Text(
          "titleMedium",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Text(
          "titleSmall",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        Text(
          "labelLarge",
          style: Theme.of(context).textTheme.labelLarge,
        ),
        Text(
          "labelMedium",
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Text(
          "labelSmall",
          style: Theme.of(context).textTheme.labelSmall,
        ),
        Text(
          "bodyLarge",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Text(
          "bodyMedium",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        Text(
          "bodySmall",
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    ),
  );
}
