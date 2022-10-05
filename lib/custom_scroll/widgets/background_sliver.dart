import 'package:flutter/material.dart';
import 'package:yummy_spot/constants/app_colors.dart';

class BackgroundSliver extends StatelessWidget {
  const BackgroundSliver({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Image.asset(
        'assets/images/recipes/cherry pie.jpeg',
        fit: BoxFit.cover,
        colorBlendMode: BlendMode.darken,
        color: AppColors.black.withOpacity(0.2),
      ),
    );
  }
}
