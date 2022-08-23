import 'package:flutter/material.dart';

class AppColors {
  static Color primary = HexColor.fromHex("#4CA771");
  static Color secondary = HexColor.fromHex("#C0E6BA");
  static Color white = HexColor.fromHex("#FFFFFF");
  static Color offWhite = HexColor.fromHex("#FAFAFA");
  static Color grey = HexColor.fromHex("#CAD7D9");
  static Color offGrey = HexColor.fromHex("#EAF9E7");
  static Color black = HexColor.fromHex("#131313");
  static Color offBlack = HexColor.fromHex("#013237");
  static Color red = HexColor.fromHex("#E85353");
  static Color yellow = HexColor.fromHex("#FFD14F");
  static Color offGrey2 = HexColor.fromHex("#F2F2F2");
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = "FF$hexColorString";
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
