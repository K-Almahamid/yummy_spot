import 'package:flutter/material.dart';
import 'package:yummy_spot/constants/app_colors.dart';
import 'package:yummy_spot/constants/app_styles.dart';
import 'package:yummy_spot/constants/dimensions.dart';
import 'package:yummy_spot/data/recipes_model.dart';

class RecipesTabsWidget extends StatefulWidget {
  final TabController tabController;
  int selectedIndex;

  RecipesTabsWidget({
    Key? key,
    required this.tabController,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  State<RecipesTabsWidget> createState() => _RecipesTabsWidgetState();
}

class _RecipesTabsWidgetState extends State<RecipesTabsWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: TabBar(
        controller: widget.tabController,
        physics: const BouncingScrollPhysics(),
        labelColor: AppColors.black,
        //unselectedLabelColor: AppColors.red,
        indicatorSize: TabBarIndicatorSize.label,
        isScrollable: true,
        padding: EdgeInsets.only(left: Dimensions.w15, bottom: Dimensions.h10),
        automaticIndicatorColorAdjustment: true,
        labelPadding: EdgeInsets.symmetric(horizontal: Dimensions.w5),
        overlayColor: getColor(AppColors.grey, AppColors.offWhite),
        indicatorWeight: 0.01,
        onTap: (index) => setState(() => widget.selectedIndex = index),
        tabs: List<Widget>.generate(
          recipesData.length,
          (index) => Tab(
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(
                left: Dimensions.w20,
                right: Dimensions.w20,
                top: 2,
                bottom: 2,
              ),
              margin: EdgeInsets.only(top: Dimensions.h10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: index == widget.selectedIndex
                      ? AppColors.primary
                      : AppColors.secondary),
              child: Text(
                recipesData[index].category,
                style: getRegularStyle(
                  color: index == widget.selectedIndex
                      ? AppColors.white
                      : AppColors.black,
                  fontSize: Dimensions.w15,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

MaterialStateProperty<Color> getColor(Color color, Color onPressColor) {
  final getColor = (Set<MaterialState> states) {
    if (states.contains(MaterialState.pressed)) {
      return onPressColor;
    } else {
      return color;
    }
  };
  return MaterialStateProperty.resolveWith(getColor);
}
