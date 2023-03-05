import 'package:auth_crud_map_template/core/constants/colors_app.dart';
import 'package:flutter/material.dart';
import 'text_theme.dart';

ThemeData DarkThemeData() {
  return ThemeData(
    fontFamily: 'Din',
    primaryColor: whiteColor,
    cardColor: containerBackground,
    highlightColor: orangeColor,
    splashColor: orangeColor,
    canvasColor: containerBackground,
    colorSchemeSeed: containerBackground,
    dialogBackgroundColor: containerBackground,
    disabledColor: containerBackground,
    dividerColor: containerBackground,
    focusColor: containerBackground,
    hintColor: containerBackground,
    hoverColor: containerBackground,
    indicatorColor: containerBackground,
    primaryColorDark: containerBackground,
    primaryColorLight: containerBackground,
    secondaryHeaderColor: containerBackground,
    shadowColor: containerBackground,
    brightness: Brightness.light,
    scaffoldBackgroundColor: whiteColor,
    textTheme: CustomTextTheme.textThemeLight,

    drawerTheme: const DrawerThemeData(
      backgroundColor: whiteColor,
      scrimColor: greyColor,
    ),

    iconTheme: const IconThemeData(color: orangeColor),

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: whiteColor, size: 30),
      elevation: 0.01,
      centerTitle: true,
    ),

    dialogTheme: const DialogTheme(
      backgroundColor: whiteColor,
      elevation: 0.0,
      alignment: Alignment.center,
      iconColor: orangeColor,
      titleTextStyle: TextStyle(),
      contentTextStyle: TextStyle(),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          )),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            minimumSize: const Size(382, 41),
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            foregroundColor: whiteColor,
            elevation: 0.4,
            backgroundColor: blackColor,
            padding: const EdgeInsets.symmetric(vertical: 2))),

    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            foregroundColor: whiteColor,
            side: const BorderSide(color: greyColor),
            padding: const EdgeInsets.symmetric(vertical: 20))),

    tabBarTheme: const TabBarTheme(
        unselectedLabelColor: whiteColor,
        labelColor: orangeColor,
        labelStyle: TextStyle(color: orangeColor),
        indicator: UnderlineTabIndicator(
            borderSide: BorderSide(color: Colors.transparent))),

    inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.symmetric(vertical: 2.0),
        fillColor: whiteColor,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        prefixIconColor: orangeColor,
        suffixIconColor: orangeColor,
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(width: 1, color: orangeColor)),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: greyColor,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
        prefixStyle: const TextStyle(color: orangeColor)),

    tooltipTheme: TooltipThemeData(
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.9),
        borderRadius: BorderRadius.zero,
      ),
    ),

    colorScheme: const ColorScheme.light(
      primary: Colors.yellow, // header background color
      onPrimary: Colors.black, // header text color
      onSurface: Colors.green, // body text color
    ),

    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: Color.fromRGBO(66, 133, 244, 1.0),
      selectionColor: Color(0xff64ffda),
      selectionHandleColor: Color(0xff1de9b6),
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.teal,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        minimumSize: const Size(400, 60),
      ),
    ),

    checkboxTheme: CheckboxThemeData(
        checkColor: MaterialStateProperty.all(Colors.white),
        fillColor: MaterialStateProperty.all(const Color(0xFFD8A21B))),

    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all(const Color(0xFFD8A21B)),
      trackColor: MaterialStateProperty.all(const Color(0x66D8A21B)),
    ),

    radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.all(const Color(0xFFD8A21B))),

    snackBarTheme: SnackBarThemeData(
      backgroundColor: Colors.white,
      actionTextColor: blackColor,
      disabledActionTextColor: blackColor,
      contentTextStyle: const TextStyle(color: blackColor),
      elevation: 0.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      behavior: SnackBarBehavior.fixed,
      width: 90,
      insetPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      showCloseIcon: true,
      closeIconColor: orangeColor,
    ),

    sliderTheme: const SliderThemeData(
        thumbColor: Colors.green,
        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 20)),

    popupMenuTheme: PopupMenuThemeData(
      color: Colors.green,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 0.0,
      shadowColor: shadowColor,
      // surfaceTintColor:,
      textStyle: const TextStyle(color: blackColor),
      // labelTextStyle:,
      enableFeedback: true,
      // mouseCursor:,
    ),

  );
}
