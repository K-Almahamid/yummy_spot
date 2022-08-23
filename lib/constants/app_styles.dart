import 'package:flutter/material.dart';
import 'package:yummy_spot/constants/app_fonts.dart';

TextStyle _getTextStyle(
  String fontFamily,
  double fontSize,
  FontWeight fontWeight,
  Color color,
) {
  return TextStyle(
    fontFamily: fontFamily,
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
  );
}

// light style
TextStyle getLightStyle(
    {double fontSize = AppFontSize.s14, required Color color}) {
  return _getTextStyle(
      FontsConstant.fontFamily, fontSize, AppFontWeight.light, color);
}

// regular style
TextStyle getRegularStyle(
    {double fontSize = AppFontSize.s16, required Color color}) {
  return _getTextStyle(
      FontsConstant.fontFamily, fontSize, AppFontWeight.regular, color);
}

// medium style
TextStyle getMediumStyle(
    {double fontSize = AppFontSize.s16, required Color color}) {
  return _getTextStyle(
      FontsConstant.fontFamily, fontSize, AppFontWeight.medium, color);
}

// semiBold style
TextStyle getSemiBoldStyle(
    {double fontSize = AppFontSize.s16, required Color color}) {
  return _getTextStyle(
      FontsConstant.fontFamily, fontSize, AppFontWeight.semiBold, color);
}

// bold style
TextStyle getBoldStyle(
    {double fontSize = AppFontSize.s16, required Color color}) {
  return _getTextStyle(
      FontsConstant.fontFamily, fontSize, AppFontWeight.bold, color);
}
