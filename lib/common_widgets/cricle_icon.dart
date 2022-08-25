import 'package:flutter/material.dart';
import 'package:yummy_spot/constants/dimensions.dart';

class CircleIcon extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final Color? iconColor;
  final Color? backgroundColor;
  final Function()? onPress;

  const CircleIcon({
    Key? key,
    required this.icon,
    required this.iconSize,
    required this.iconColor,
    required this.backgroundColor,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Card(
        margin: EdgeInsets.all(Dimensions.w8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(1000.0),
        ),
        color: backgroundColor,
        clipBehavior: Clip.antiAlias,
        child: Padding(
          padding: EdgeInsets.all(Dimensions.w10),
          child: Icon(
            icon,
            size: iconSize,
            color: iconColor,
          ),
        ),
      ),
    );
  }
}
