import 'package:flutter/material.dart';
import 'package:yummy_spot/constants/app_colors.dart';
import 'package:yummy_spot/constants/app_styles.dart';
import 'package:yummy_spot/constants/dimensions.dart';

class ViewMoreButton extends StatelessWidget {
  final String text;
  final Function() onPress;
  const ViewMoreButton({Key? key, required this.text, required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: Dimensions.h40,
      minWidth: Dimensions.screenWidth,
      padding: EdgeInsets.only(bottom: Dimensions.h20),
      onPressed: onPress,
      child: Container(
        width: Dimensions.screenWidth,
        height: Dimensions.h40,
        color: AppColors.secondary,
        alignment: Alignment.center,
        child: Text(
          text,
          style: getMediumStyle(
            color: AppColors.black,
            fontSize: Dimensions.w15,
          ),
        ),
      ),
    );
  }
}
