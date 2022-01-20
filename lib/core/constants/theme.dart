import 'package:flutter/material.dart';
import 'package:smartfarm/core/constants/my_colors.dart';
import 'package:smartfarm/core/constants/my_fonts.dart';
import 'package:smartfarm/core/constants/my_styles.dart';
import 'package:smartfarm/core/constants/my_values.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // main colors of the app
    primaryColor: MyColors.primary,
    primaryColorLight: MyColors.primaryOppacity50,
    // primaryColorDark: MyColors.darkPrimary,
    disabledColor: MyColors.disabled,
    // ripple color
    splashColor: MyColors.primary,
    // will be used incase of disabled button for example
    // accentColor: MyColors.grey,
    // card view theme
    cardTheme: const CardTheme(
        color: MyColors.white,
        shadowColor: MyColors.grey,
        elevation: MyAppSize.s4),
    // App bar theme
    appBarTheme: AppBarTheme(
        centerTitle: true,
        color: MyColors.primary,
        elevation: MyAppSize.s4,
        shadowColor: MyColors.primaryOppacity50,
        titleTextStyle:
            getRegularStyle(color: MyColors.white, fontSize: MyFontSize.s16)),
    // Button theme
    buttonTheme: ButtonThemeData(
        shape: const StadiumBorder(),
        disabledColor: MyColors.grey,
        buttonColor: MyColors.primary,
        splashColor: MyColors.primaryOppacity50),

    // elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            textStyle: getRegularStyle(color: MyColors.white),
            primary: MyColors.primary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(MyAppSize.s12)))),

    // Text theme
    textTheme: TextTheme(
      headline1:
          getSemiBoldStyle(color: MyColors.darkGrey, fontSize: MyFontSize.s16),
      headline2:
          getRegularStyle(color: MyColors.white, fontSize: MyFontSize.s16),
      headline3:
          getBoldStyle(color: MyColors.primary, fontSize: MyFontSize.s16),
      headline4:
          getRegularStyle(color: MyColors.primary, fontSize: MyFontSize.s14),
      subtitle1:
          getMediumStyle(color: MyColors.lightGrey, fontSize: MyFontSize.s14),
      subtitle2:
          getMediumStyle(color: MyColors.primary, fontSize: MyFontSize.s14),
      bodyText1: getRegularStyle(color: MyColors.grey),
      bodyText2: getMediumStyle(color: MyColors.lightGrey),
      caption: getRegularStyle(color: MyColors.grey),
    ),
    // input decoration theme (text form field)

    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.all(MyPadding.p8),
      // hint style
      hintStyle: getRegularStyle(color: MyColors.grey),

      // label style
      labelStyle: getMediumStyle(color: MyColors.darkGrey),
      // error style
      errorStyle: getRegularStyle(color: MyColors.grey),

      // enabled border
      enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: MyColors.grey, width: MyAppSize.s1_5),
          borderRadius: BorderRadius.all(Radius.circular(MyAppSize.s8))),

      // focused border
      focusedBorder: const OutlineInputBorder(
          borderSide:
              BorderSide(color: MyColors.primary, width: MyAppSize.s1_5),
          borderRadius: BorderRadius.all(Radius.circular(MyAppSize.s8))),

      // error border
      errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: MyColors.grey, width: MyAppSize.s1_5),
          borderRadius: BorderRadius.all(Radius.circular(MyAppSize.s8))),
      // focused error border
      focusedErrorBorder: const OutlineInputBorder(
          borderSide:
              BorderSide(color: MyColors.primary, width: MyAppSize.s1_5),
          borderRadius: BorderRadius.all(Radius.circular(MyAppSize.s8))),
    ),
  );
}
