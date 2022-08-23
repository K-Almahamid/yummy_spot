import 'package:flutter/material.dart';
import 'package:yummy_spot/constants/app_colors.dart';
import 'package:yummy_spot/constants/app_dimensions.dart';
import 'package:yummy_spot/constants/app_fonts.dart';
import 'package:yummy_spot/constants/app_styles.dart';

ThemeData getApplicationThem() {
  return ThemeData(
    // main colors of the app
    primaryColor: AppColors.primary,

    //here color with opacity
    primaryColorLight: AppColors.secondary,
    primaryColorDark: AppColors.black,
    disabledColor: AppColors.grey,
    splashColor: AppColors.primary,
    scaffoldBackgroundColor: AppColors.offWhite,
    // card view theme
    cardTheme: CardTheme(
      color: AppColors.white,
      shadowColor: AppColors.grey,
      elevation: AppSize.s4,
    ),
    // app bar theme
    // appBarTheme: AppBarTheme(
    //   centerTitle: true,
    //   color: AppColors.offWhite,
    //   elevation: AppSize.s0,
    //   shadowColor: AppColors.grey,
    //   systemOverlayStyle:
    //       const SystemUiOverlayStyle(statusBarBrightness: Brightness.light),
    //   iconTheme: IconThemeData(color: AppColors.black),
    //   titleTextStyle: getMediumStyle(
    //     color: AppColors.black,
    //     fontSize: AppSize.s16,
    //   ),
    // ),
    // button theme
    // buttonTheme: ButtonThemeData(
    //   shape: const StadiumBorder(),
    //   disabledColor: AppColors.grey,
    //   buttonColor: AppColors.primary,
    //   splashColor: AppColors.secondary,
    // ),
    // elevated button theme
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ElevatedButton.styleFrom(
    //     textStyle: getRegularStyle(color: AppColors.white),
    //     primary: AppColors.primary,
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(AppSize.s12),
    //     ),
    //   ),
    // ),
    // text theme
    textTheme: TextTheme(
      headline1: getBoldStyle(
        color: AppColors.black,
        fontSize: AppFontSize.s28,
      ),
      headline2: getSemiBoldStyle(
        color: AppColors.black,
        fontSize: AppFontSize.s16,
      ),
      headline3: getMediumStyle(
        color: AppColors.black,
        fontSize: AppFontSize.s16,
      ),
      headline4: getMediumStyle(
        color: AppColors.black,
        fontSize: AppFontSize.s14,
      ),
      headline5: getMediumStyle(
        color: AppColors.black,
        fontSize: AppFontSize.s12,
      ),
      headline6: getMediumStyle(
        color: AppColors.black,
        fontSize: AppFontSize.s10,
      ),
      subtitle1: getMediumStyle(
        color: AppColors.grey,
        fontSize: AppFontSize.s18,
      ),
      subtitle2: getRegularStyle(
        color: AppColors.black,
        fontSize: AppFontSize.s16,
      ),
      caption: getRegularStyle(color: AppColors.grey),
      bodyText1: getRegularStyle(color: AppColors.grey),
    ),
    // input decoration theme ( text form field )
    // inputDecorationTheme: InputDecorationTheme(
    //   // contentPadding:const EdgeInsets.symmetric(horizontal: AppPadding.p30,vertical: AppPadding.p20),
    //   contentPadding: const EdgeInsets.only(
    //     left: AppPadding.p42,
    //     right: AppPadding.p16,
    //     top: AppPadding.p20,
    //     bottom: AppPadding.p20,
    //   ),
    //   hintStyle:
    //       getRegularStyle(color: AppColors.grey, fontSize: AppFontSize.s14),
    //   labelStyle:
    //       getMediumStyle(color: AppColors.black, fontSize: AppFontSize.s16),
    //   errorStyle: getRegularStyle(color: AppColors.red),
    //   iconColor: AppColors.secondary,
    //   floatingLabelBehavior: FloatingLabelBehavior.always,
    //   enabledBorder: OutlineInputBorder(
    //     borderSide: BorderSide(color: AppColors.grey),
    //     borderRadius: const BorderRadius.all(Radius.circular(AppSize.s28)),
    //     gapPadding: AppPadding.p10,
    //   ),
    //   focusedBorder: OutlineInputBorder(
    //     borderSide: BorderSide(color: AppColors.primary),
    //     borderRadius: const BorderRadius.all(Radius.circular(AppSize.s28)),
    //     gapPadding: AppPadding.p10,
    //   ),
    //   errorBorder: OutlineInputBorder(
    //     borderSide: BorderSide(color: AppColors.red),
    //     borderRadius: const BorderRadius.all(Radius.circular(AppSize.s28)),
    //     gapPadding: AppPadding.p10,
    //   ),
    //   focusedErrorBorder: OutlineInputBorder(
    //     borderSide: BorderSide(color: AppColors.red),
    //     borderRadius: const BorderRadius.all(Radius.circular(AppSize.s28)),
    //     gapPadding: AppPadding.p10,
    //   ),
    // ),
  );
}
/*
InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderSide: BorderSide(color: AppColors.grey),
    borderRadius: const BorderRadius.all(Radius.circular(AppSize.s28)),
    gapPadding: AppPadding.p10,
  );
  return InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(
        horizontal: AppPadding.p42, vertical: AppPadding.p20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
    errorBorder: outlineInputBorder,
    focusedErrorBorder: outlineInputBorder,
  );
}
 */
