import 'package:flutter/material.dart';
import 'package:yummy_spot/constants/app_colors.dart';
import 'package:yummy_spot/constants/app_styles.dart';
import 'package:yummy_spot/constants/dimensions.dart';

class TabsViewWidget extends StatefulWidget {
  final TabController tabController;
  int selectedIndex;

  TabsViewWidget(
      {Key? key, required this.tabController, required this.selectedIndex})
      : super(key: key);

  @override
  State<TabsViewWidget> createState() => _TabsViewWidgetState();
}

class _TabsViewWidgetState extends State<TabsViewWidget> {
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
          widget.tabController.length,
          (index) => Tab(
            child: Container(
              padding: EdgeInsets.only(
                  left: 2, right: Dimensions.w20, top: 2, bottom: 2),
              margin: EdgeInsets.only(top: Dimensions.h10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: index == widget.selectedIndex
                    ? AppColors.offGrey2
                    : AppColors.offWhite,
                boxShadow: [
                  index == widget.selectedIndex
                      ? const BoxShadow(
                          color: Colors.grey,
                          blurRadius: 2,
                          spreadRadius: 1,
                          offset: Offset(0, 2),
                        )
                      : const BoxShadow(
                          color: Colors.transparent,
                        ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: index == widget.selectedIndex
                          ? AppColors.white
                          : AppColors.offWhite,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.fastfood_rounded,
                      size: 18,
                    ),
                  ),
                  SizedBox(width: Dimensions.w5),
                  Text(
                    'Soupsssssssss',
                    style: getRegularStyle(
                      color: AppColors.black,
                      fontSize: Dimensions.w15,
                    ),
                  ),
                ],
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
