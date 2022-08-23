import 'package:flutter/material.dart';
import 'package:yummy_spot/constants/app_colors.dart';

class CircleIcon extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final Function()? onPress;

  const CircleIcon({
    Key? key,
    required this.icon,
    required this.iconSize,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: AppColors.grey,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        icon: Icon(
          icon,
          size: iconSize,
          color: AppColors.black,
        ),
        onPressed: onPress,
      ),
    );
  }
}
