import 'package:flutter/material.dart';
import 'package:yummy_spot/constants/app_colors.dart';
import 'package:yummy_spot/constants/dimensions.dart';

class CustomScaffold extends StatelessWidget {
  final PreferredSize? appBar;
  final Widget body;
  final Widget? bottomNavBar;

  const CustomScaffold({
    Key? key,
    this.appBar,
    required this.body,
    this.bottomNavBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: SafeArea(
        child: Container(
          height: Dimensions.screenHeight,
          width: Dimensions.screenWidth,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                // Color(0xFFF2F3F2),
                //Color(0xFFECECEB),
                const Color(0xFFE5E6E4),
                AppColors.offWhite,
              ],
              begin: Alignment.topLeft,
              end: const Alignment(0.0, -0.5),
            ),
          ),
          child: body,
        ),
      ),
      bottomNavigationBar: bottomNavBar,
    );
  }
}
