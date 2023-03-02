import 'package:flutter/material.dart';
import '../theme.dart';


class CustomElevatedButtonTheme {
  CustomElevatedButtonTheme._();
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
            minimumSize: const Size(382, 41),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          foregroundColor: whiteColor,
          elevation: 0.4,
          backgroundColor: blackColor,
          padding: const EdgeInsets.symmetric(vertical: 2)));
}

