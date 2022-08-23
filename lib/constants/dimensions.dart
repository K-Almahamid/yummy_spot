import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double h5 = screenHeight / 156.21;
  static double h8 = screenHeight / 97.63;
  static double h10 = screenHeight / 78.10;
  static double h15 = screenHeight / 52.07;
  static double h20 = screenHeight / 39.05;
  static double h30 = screenHeight / 26.03;
  static double h40 = screenHeight / 19.52;
  static double h45 = screenHeight / 17.35;
  static double h60 = screenHeight / 13.01;
  static double h65 = screenHeight / 12.01;
  static double h70 = screenHeight / 11.15;
  static double h75 = screenHeight / 10.41;
  static double h80 = screenHeight / 9.76;
  static double h110 = screenHeight / 7.10;
  static double h150 = screenHeight / 5.20;

  static double w5 = screenWidth / 78.54;
  static double w8 = screenWidth / 49.09;
  static double w10 = screenWidth / 39.27;
  static double w15 = screenWidth / 26.18;
  static double w20 = screenWidth / 19.63;
  static double w25 = screenWidth / 15.70;
  static double w30 = screenWidth / 13.09;
  static double w35 = screenWidth / 11.22;
  static double w40 = screenWidth / 9.8;
  static double w45 = screenWidth / 8.72;
  static double w60 = screenWidth / 6.54;
  static double w65 = screenWidth / 6.04;
  static double w70 = screenWidth / 5.61;
  static double w75 = screenWidth / 5.23;
  static double w80 = screenWidth / 4.90;
  static double w110 = screenWidth / 3.57;
  static double w140 = screenWidth / 2.80;
  static double w150 = screenWidth / 2.61;
}

// class SizeConfig {
//   static late MediaQueryData _mediaQueryData;
//   static late double screenWidth;
//   static late double screenHeight;
//   static double? defaultSize;
//   static Orientation? orientation;
//
//   void init(BuildContext context) {
//     _mediaQueryData = MediaQuery.of(context);
//     screenWidth = _mediaQueryData.size.width;
//     screenHeight = _mediaQueryData.size.height;
//     orientation = _mediaQueryData.orientation;
//   }
// }
//
// // Get the proportionate height as per screen size
// double getProportionateScreenHeight(double inputHeight) {
//   double screenHeight = SizeConfig.screenHeight;
//   // 812 is the layout height that designer use
//   return (inputHeight / 896.0) * screenHeight;
// }
//
// // Get the proportionate height as per screen size
// double getProportionateScreenWidth(double inputWidth) {
//   double screenWidth = SizeConfig.screenWidth;
//   // 375 is the layout width that designer use
//   return (inputWidth / 414.0) * screenWidth;
// }
