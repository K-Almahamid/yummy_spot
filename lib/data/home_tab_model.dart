import 'package:flutter/material.dart';
import 'package:yummy_spot/constants/app_colors.dart';

class HomTabModel {
  final String name;
  final IconData icon;
  final Color iconColor;

  HomTabModel(
    this.name,
    this.icon,
    this.iconColor,
  );
}

List<HomTabModel> data = [
  HomTabModel('Soup', Icons.soup_kitchen_outlined, AppColors.yellow),
  HomTabModel('FastFood', Icons.fastfood_rounded, AppColors.red),
  HomTabModel('SeaFood', Icons.cruelty_free, AppColors.yellow),
  HomTabModel('Soup', Icons.soup_kitchen_outlined, AppColors.yellow),
  HomTabModel('FastFood', Icons.fastfood_rounded, AppColors.red),
  HomTabModel('SeaFood', Icons.cruelty_free, AppColors.yellow),
];
