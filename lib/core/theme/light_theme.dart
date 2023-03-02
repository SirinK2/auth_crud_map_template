import 'package:auth_crud_map_template/core/theme/theme.dart';
import 'package:flutter/material.dart';

import 'element/dialog_theme.dart';
import 'element/elevated_button_theme.dart';
import 'element/outlined_button_theme.dart';
import 'element/text_form_field_theme.dart';
import 'element/text_theme.dart';

ThemeData LightThemeData() {
  return ThemeData(
    fontFamily: 'Din',
    drawerTheme: const DrawerThemeData(
        backgroundColor:whiteColor,
        scrimColor:greyColor,

    ),
      tabBarTheme:  const TabBarTheme(
          unselectedLabelColor: whiteColor,
          labelColor: orangeColor,
          labelStyle: TextStyle(color: orangeColor),
          indicator: UnderlineTabIndicator(
              borderSide: BorderSide(color: Colors.transparent)
          )
      ),
      backgroundColor: whiteColor,
      primaryColor: whiteColor,
      iconTheme: const IconThemeData(color: orangeColor),
      cardColor: containerBackground,
      brightness: Brightness.light,
      scaffoldBackgroundColor: whiteColor,
      textTheme: CustomTextTheme.textThemeLight,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: whiteColor, size: 30),
        elevation: 0.01,
        centerTitle: true,
      ),
      dialogTheme:CustomDialogTheme.lightDialogTheme,
      elevatedButtonTheme: CustomElevatedButtonTheme.lightElevatedButtonTheme,
      outlinedButtonTheme: CustomOutlinedButtonTheme.lightOutlinedButtonTheme,
      inputDecorationTheme: CustomTextFormFieldTheme.lightInputDecorationTheme, colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.cyan[600]),
      // timePickerTheme:
  );
}
