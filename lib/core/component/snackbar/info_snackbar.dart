import 'package:flutter/material.dart';
import 'package:flutter_upload_file/core/theme/app_color.dart';

void showInfoSnackBar(
  BuildContext context,
  String text, {
  Color? backroundColor,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      behavior: SnackBarBehavior.floating,
      duration: const Duration(seconds: 2),
      backgroundColor: backroundColor ?? AppColor.black.withOpacity(0.8),
      content: Text(text),
    ),
  );
}
