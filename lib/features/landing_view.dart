import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:yummy_spot/common_widgets/custom_scaffold.dart';
import 'package:yummy_spot/constants/dimensions.dart';
import 'package:yummy_spot/features/home/view/home_view.dart';
import 'package:yummy_spot/features/profile_view.dart';
import 'package:yummy_spot/features/recipes/view/recipes_view.dart';

import '../constants/app_colors.dart';
import '../constants/app_styles.dart';

class LandingView extends StatefulWidget {
  const LandingView({Key? key}) : super(key: key);

  @override
  State<LandingView> createState() => _LandingViewState();
}

List _listOfIcons = [
  LineIcon.home(),
  LineIcon.bookReader(),
  LineIcon.bookmark(),
  LineIcon.user(),
];

List<String> _images = [
  'assets/images/home.png',
  'assets/images/cloche.png',
  'assets/images/bookmark.png',
  'assets/images/user.png',
];
List<String> _listOfStrings = [
  'Home',
  'Recipes',
  'Bookmark',
  'Profile',
];

List _screens = [
  const HomeView(),
  const RecipesView(),
  const HomeView(),
  const ProfileView(),
];

class _LandingViewState extends State<LandingView> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return CustomScaffold(
      body: SafeArea(
        child: _screens[_currentIndex],
      ),
      bottomNavBar: Container(
        height: Dimensions.h70,
        padding: EdgeInsets.only(
            bottom: Dimensions.h10, top: Dimensions.h10, left: Dimensions.w10),
        decoration: BoxDecoration(
          color: AppColors.yellow,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.1),
              blurRadius: 30,
              offset: const Offset(0, 10),
            ),
          ],
          //   borderRadius: BorderRadius.circular(50),
        ),
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: displayWidth * .04),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              setState(
                () {
                  _currentIndex = index;
                  print(Dimensions.screenHeight / 8);
                },
              );
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Stack(
              children: [
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index == _currentIndex
                      ? displayWidth * .32
                      : displayWidth * .18,
                  alignment: Alignment.center,
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 1),
                    curve: Curves.fastLinearToSlowEaseIn,
                    height: index == _currentIndex ? displayWidth * .12 : 0,
                    width: index == _currentIndex ? displayWidth * .32 : 0,
                    decoration: BoxDecoration(
                      color: index == _currentIndex
                          ? AppColors.offWhite
                          : Colors.transparent,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
                AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.fastLinearToSlowEaseIn,
                  width: index == _currentIndex
                      ? displayWidth * .31
                      : displayWidth * .18,
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Row(
                        children: [
                          AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width:
                                index == _currentIndex ? displayWidth * .13 : 0,
                          ),
                          AnimatedOpacity(
                            opacity: index == _currentIndex ? 1 : 0,
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            child: Text(
                              index == _currentIndex
                                  ? _listOfStrings[index]
                                  : '',
                              style: getRegularStyle(
                                color: AppColors.offBlack,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            curve: Curves.fastLinearToSlowEaseIn,
                            width: index == _currentIndex
                                ? Dimensions.w20
                                : Dimensions.w20,
                          ),
                          Image.asset(
                            _images[index],
                            height: Dimensions.h30,
                            width: Dimensions.w25,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
