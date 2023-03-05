import 'package:auth_crud_map_template/core/constants/colors_app.dart';
import 'package:flutter/material.dart';


class CustomTextTheme {
  static const textColorLight = blackColor;

  static TextTheme get textThemeLight {
    return textTheme(textColor: textColorLight);
  }

  static TextTheme textTheme({required Color textColor}) {
    const FontWeight bold = FontWeight.w700;
    const FontWeight medium = FontWeight.w500;
    const FontWeight regular = FontWeight.w400;

    return const TextTheme(
      headlineMedium: TextStyle(
        fontFamily: 'Din',
        color: blackColor,
        fontSize: 24,
        fontWeight: regular,
        letterSpacing: 0.0,
      ),
      displayLarge: TextStyle(
        fontFamily: 'Din',
        color: whiteColor,
        fontSize: 48,
        fontWeight: regular,
        letterSpacing: 0.0,
      ),
      bodyLarge: TextStyle(
        fontFamily: 'Din',
        color: orangeColor,
        fontSize: 20,
        fontWeight: bold,
        letterSpacing: 0.0,
      ),
      headlineSmall: TextStyle(
        fontFamily: 'Din',
        color: blackColor,
        fontSize: 20,
        fontWeight: regular,
        letterSpacing: 0.0,
      ),
      displayMedium: TextStyle(
        fontFamily: 'Din',
        color: whiteColor,
        fontSize: 24,
        fontWeight: bold,
        letterSpacing: 0.0,
      ),
      bodyMedium: TextStyle(
        fontFamily: 'Din',
        color: greyColor,
        fontSize: 14,
        fontWeight: regular,
        letterSpacing: 0.0,
      ),
      labelLarge: TextStyle(
        fontFamily: 'Din',
        color: whiteColor,
        fontSize: 14,
        fontWeight: medium,
        letterSpacing: 0.0,
      ),
      labelMedium: TextStyle(
        fontFamily: 'Din',
        color: greyColor,
        fontSize: 12,
        fontWeight: regular,
        decoration: TextDecoration.underline,
        letterSpacing: 0.0,
      ),
      bodySmall: TextStyle(
        fontFamily: 'Din',
        color: blackColor,
        fontSize: 14,
        fontWeight: regular,
        letterSpacing: 0.0,
      ),
      labelSmall: TextStyle(
        fontFamily: 'Din',
        color: orangeColor,
        fontSize: 12,
        fontWeight: regular,
        letterSpacing: 0.0,
      ),
      displaySmall: TextStyle(
        fontFamily: 'Din',
        color: blackColor,
        fontSize: 20,
        fontWeight: bold,
        letterSpacing: 0.0,
      ),
      titleLarge: TextStyle(
        fontFamily: 'Din',
        color: blackColor,
        fontSize: 16,
        fontWeight: regular,
        letterSpacing: 0.0,
      ),
      titleMedium: TextStyle(
        fontFamily: 'Din',
        color: orangeColor,
        fontSize: 15,
        fontWeight: regular,
        letterSpacing: 0.0,
      ),
      titleSmall: TextStyle(
        fontFamily: 'Din',
        color: orangeColor,
        fontSize: 16,
        fontWeight: regular,
        letterSpacing: 0.0,
      ),
    );
  }
}

