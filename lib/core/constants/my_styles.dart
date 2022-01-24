import 'package:flutter/material.dart';

import 'my_fonts.dart';

TextStyle _getTextStyle(
    double fontSize, String fontFamily, FontWeight fontWeight, Color color) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: fontFamily,
    color: color,
    fontWeight: fontWeight,

  );
}

// regular style

TextStyle getRegularStyle(
    {double fontSize = MyFontSize.s12, required Color color}) {
  return _getTextStyle(
      fontSize, MyFontConstants.fontFamily, MyFontWeight.regular, color);
}
// light text style

TextStyle getLightStyle(
    {double fontSize = MyFontSize.s12, required Color color}) {
  return _getTextStyle(
      fontSize, MyFontConstants.fontFamily, MyFontWeight.regular, color);
}
// bold text style

TextStyle getBoldStyle(
    {double fontSize = MyFontSize.s12, required Color color}) {
  return _getTextStyle(
      fontSize, MyFontConstants.fontFamily, MyFontWeight.regular, color);
}

// semi bold text style

TextStyle getSemiBoldStyle(
    {double fontSize = MyFontSize.s12, required Color color}) {
  return _getTextStyle(
      fontSize, MyFontConstants.fontFamily, MyFontWeight.regular, color);
}

// medium text style

TextStyle getMediumStyle(
    {double fontSize = MyFontSize.s12, required Color color}) {
  return _getTextStyle(
      fontSize, MyFontConstants.fontFamily, MyFontWeight.regular, color);
}
