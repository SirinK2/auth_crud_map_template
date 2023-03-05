import 'package:auth_crud_map_template/core/constants/colors_app.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextTheme {

  static const textColorLight = whiteColor;
  static const textColorDark = blackColor;

  static TextTheme get textThemeLight {
    return textTheme(textColor: textColorLight);
  }

  static TextTheme get textThemeDark {
    return textTheme(textColor: textColorDark);
  }

  static TextTheme textTheme({required Color textColor}) {
    const FontWeight bold = FontWeight.w700;
    const FontWeight medium = FontWeight.w500;
    const FontWeight regular = FontWeight.w400;

    return TextTheme(
      headlineLarge: GoogleFonts.ubuntu(
        color: blackColor,
        fontSize: 24,
        fontWeight: bold,
        letterSpacing: 0.0,
      ),
      headlineMedium: GoogleFonts.ubuntu(
        color: blackColor,
        fontSize: 20,
        fontWeight: medium,
        letterSpacing: 0.0,
      ),
      headlineSmall: GoogleFonts.ubuntu(
        color: blackColor,
        fontSize: 16,
        fontWeight: regular,
        letterSpacing: 0.0,
      ),
      displayLarge: GoogleFonts.ubuntu(
        color: whiteColor,
        fontSize: 24,
        fontWeight: bold,
        letterSpacing: 0.0,
      ),
      displayMedium: GoogleFonts.ubuntu(
        color: whiteColor,
        fontSize: 20,
        fontWeight: medium,
        letterSpacing: 0.0,
      ),
      displaySmall: GoogleFonts.ubuntu(
        color: whiteColor,
        fontSize: 16,
        fontWeight: regular,
        letterSpacing: 0.0,
      ),
      bodyLarge: GoogleFonts.ubuntu(
        color: orangeColor,
        fontSize: 24,
        fontWeight: bold,
        letterSpacing: 0.0,
      ),
      bodyMedium: GoogleFonts.ubuntu(
        color: orangeColor,
        fontSize: 20,
        fontWeight: medium,
        letterSpacing: 0.0,
      ),
      bodySmall: GoogleFonts.ubuntu(
        color: orangeColor,
        fontSize: 16,
        fontWeight: regular,
        letterSpacing: 0.0,
      ),
      labelLarge: GoogleFonts.ubuntu(
        color: greyColor,
        fontSize: 20,
        fontWeight: bold,
        letterSpacing: 0.0,
      ),
      labelMedium: GoogleFonts.ubuntu(
        color: greyColor,
        fontSize: 16,
        fontWeight: medium,
        decoration: TextDecoration.underline,
        letterSpacing: 0.0,
      ),
      labelSmall: GoogleFonts.ubuntu(
        color: greyColor,
        fontSize: 12,
        fontWeight: regular,
        letterSpacing: 0.0,
      ),
      titleLarge: GoogleFonts.ubuntu(
        color: textColor,
        fontSize: 24,
        fontWeight: bold,
        letterSpacing: 0.0,
      ),
      titleMedium: GoogleFonts.ubuntu(
        color: textColor,
        fontSize: 20,
        fontWeight: medium,
        letterSpacing: 0.0,
      ),
      titleSmall: GoogleFonts.ubuntu(
        color: textColor,
        fontSize: 16,
        fontWeight: regular,
        letterSpacing: 0.0,
      ),
    );
  }
}
