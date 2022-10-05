import 'package:flutter/material.dart';
import 'package:yummy_spot/constants/app_colors.dart';
import 'package:yummy_spot/constants/app_styles.dart';

const headerTitle = 80.0;

typedef OnHeaderChange = void Function(bool visible);

class MyHeaderTitle extends SliverPersistentHeaderDelegate {
  final String title;
  final OnHeaderChange onHeaderChange;

  const MyHeaderTitle(this.title, this.onHeaderChange, {Key? key});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    if (shrinkOffset > 0) {
      onHeaderChange(true);
    } else {
      onHeaderChange(false);
    }
    return Padding(
      padding: const EdgeInsets.only(left: 18),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: getMediumStyle(
            color: AppColors.black,
            fontSize: 22,
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => headerTitle;

  @override
  // TODO: implement minExtent
  double get minExtent => headerTitle;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}
