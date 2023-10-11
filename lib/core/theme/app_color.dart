import 'package:flutter/material.dart';

class AppColor {
  AppColor._();

  static const Color primaryColor = Color(0xFF1C3E66);
  static const Color secondaryColor = Color.fromARGB(255, 215, 170, 34);
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color blackGrey = Color.fromARGB(255, 39, 39, 39);
  static const Color backgroundBlack = Color.fromARGB(255, 37, 37, 37);
  static const Color backgroundWhite = Color.fromARGB(255, 255, 255, 255);
  static const Color backgroundBlue = Color.fromARGB(255, 236, 246, 255);
  static const Color lightGray = Color.fromARGB(255, 215, 215, 215);
  static const Color lightRed = Color.fromARGB(255, 255, 202, 202);
  static const Color lightGreen = Color.fromARGB(255, 212, 255, 202);

  static const MaterialColor primarySwatch = MaterialColor(
    0xFF1C3E66,
    {
      50: Color(0xFF8e9fb3),
      100: Color(0xFF778ba3),
      200: Color(0xFF607894),
      300: Color(0xFF496585),
      400: Color(0xFF335175),
      500: Color(0xFF1C3E66),
      600: Color(0xFF19385c),
      700: Color(0xFF163252),
      800: Color(0xFF142b47),
      900: Color(0xFF11253d),
    },
  );
}
