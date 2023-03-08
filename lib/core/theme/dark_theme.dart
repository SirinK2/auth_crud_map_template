import 'package:auth_crud_map_template/core/constants/colors_app.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'text_theme.dart';

ThemeData darkThemeData() {
  return ThemeData(
    fontFamily: GoogleFonts.ubuntu.toString(),
    primaryColor: darkGreyColor,
    cardColor: containerBackground,
    highlightColor: greyColor,
    splashColor: Colors.transparent,
    canvasColor: containerBackground,
    dialogBackgroundColor: darkGreyColor,
    disabledColor: darkGreyColor,
    dividerColor: darkGreyColor,
    focusColor: containerBackground,
    hintColor: containerBackground,
    hoverColor: containerBackground,
    indicatorColor: containerBackground,
    primaryColorDark: darkGreyColor,
    secondaryHeaderColor: darkGreyColor,
    shadowColor: containerBackground,
    brightness: Brightness.dark,
    scaffoldBackgroundColor: darkGreyColor,
    //
    textTheme: CustomTextTheme.textThemeDark,
    //
    iconTheme: const IconThemeData(color: orangeColor),
    //
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: orangeColor, size: 30),
      elevation: 0.0,
      shadowColor: greyColor,
      centerTitle: true,
    ),
    //
    dialogTheme: const DialogTheme(
      backgroundColor: darkGreyColor,
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
    //
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      minimumSize: const Size(382, 41),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      foregroundColor: darkGreyColor,
      elevation: 0.4,
      backgroundColor: containerBackground,
    )),
    //
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            foregroundColor: greyColor,
            side:  BorderSide(color: greyColor),
            padding: const EdgeInsets.symmetric(vertical: 20))),
    //
    tabBarTheme: const TabBarTheme(
        unselectedLabelColor: whiteColor,
        labelColor: orangeColor,
        labelStyle: TextStyle(color: orangeColor),
        indicator: UnderlineTabIndicator(
            borderSide: BorderSide(color: containerBackground))),
    //
    inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.symmetric(vertical: 2.0),
        fillColor: darkGreyColor,
        border: OutlineInputBorder(
          borderSide:BorderSide(color: containerBackground) ,
            borderRadius: BorderRadius.circular(10)),
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
            color: containerBackground,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        filled: true,
        prefixStyle: const TextStyle(color: orangeColor)),
    //
    tooltipTheme: TooltipThemeData(
      decoration: BoxDecoration(
        color: Colors.blue.withOpacity(0.9),
        borderRadius: BorderRadius.zero,
      ),
    ),
    //
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: greyColor,
        backgroundColor: darkGreyColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
    //
    checkboxTheme: CheckboxThemeData(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        checkColor: MaterialStateProperty.all(darkGreyColor),
        fillColor: MaterialStateProperty.all(orangeColor)),
    //
    switchTheme: SwitchThemeData(
      thumbColor: MaterialStateProperty.all(orangeColor),
      trackColor: MaterialStateProperty.all(whiteColor)),
    //
    radioTheme:
        RadioThemeData(fillColor: MaterialStateProperty.all(orangeColor)),
    //
    sliderTheme: const SliderThemeData(
        thumbColor: orangeColor,
        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 20)),
    //
    popupMenuTheme: PopupMenuThemeData(
      color: orangeColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 0.0,
      shadowColor: containerBackground,
      // surfaceTintColor:,
      textStyle: const TextStyle(color: whiteColor),
      // labelTextStyle:,
      enableFeedback: true,
      // mouseCursor:,
    ),
  );
}
