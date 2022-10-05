import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:yummy_spot/common_widgets/custom_scaffold.dart';
import 'package:yummy_spot/constants/app_colors.dart';
import 'package:yummy_spot/constants/dimensions.dart';
import 'package:yummy_spot/custom_scroll/home_sliver_with_tab.dart';
import 'package:yummy_spot/features/home/controller/categories_controller.dart';
import 'package:yummy_spot/features/home/view/home_view.dart';
import 'package:yummy_spot/features/profile/profile_view.dart';
import 'package:yummy_spot/features/recipes/view/recipes_view.dart';

class LandingView extends StatefulWidget {
  const LandingView({Key? key}) : super(key: key);

  @override
  State<LandingView> createState() => _LandingViewState();
}

final CategoriesController _categoriesController =
    Get.put(CategoriesController());
List<String> _images = [
  'assets/images/home-svgrepo-com.svg',
  'assets/images/cloche-food-kitchen-svgrepo-com.svg',
  'assets/images/bookmark-svgrepo-com.svg',
  'assets/images/profile-simple-svgrepo-com.svg',
];
List<String> _names = [
  'Home',
  'Recipes',
  'Bookmark',
  'Profile',
];

class _LandingViewState extends State<LandingView> {
  late final List _screens = [
    HomeView(
      hideNavigation: hideNav,
      showNavigation: showNav,
    ),
    const RecipesView(),
    const HomeSliverWithTab(),
    const ProfileView(),
  ];

  int _currentIndex = 0;
  bool visible = true;

  @override
  void initState() {
    //_categoriesController.getCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: SafeArea(
        child: _screens[_currentIndex],
      ),
      bottomNavBar: AnimatedContainer(
        duration: const Duration(milliseconds: 1000),
        curve: Curves.fastLinearToSlowEaseIn,
        height: visible ? Dimensions.h70 : 0,
        child: GNav(
          rippleColor: Colors.transparent,
          hoverColor: Colors.transparent,
          backgroundColor: AppColors.yellow,
          gap: Dimensions.w8,
          activeColor: Colors.black,
          iconSize: 0,
          padding: EdgeInsets.symmetric(
              horizontal: Dimensions.w20, vertical: Dimensions.h10),
          duration: const Duration(milliseconds: 400),
          tabBackgroundColor: AppColors.offGrey2,
          color: Colors.black,
          tabs: [
            GButton(
              leading: SvgPicture.asset(
                _images[0],
                height: Dimensions.h25,
                width: Dimensions.w25,
                fit: BoxFit.fill,
              ),
              margin: EdgeInsets.only(
                top: Dimensions.h10,
                bottom: Dimensions.h10,
                left: Dimensions.w10,
              ),
              icon: LineIcons.home,
              text: _names[0],
              iconSize: 0.0,
            ),
            GButton(
              leading: SvgPicture.asset(
                _images[1],
                height: Dimensions.h25,
                width: Dimensions.w25,
                fit: BoxFit.fill,
              ),
              margin: EdgeInsets.only(
                top: Dimensions.h10,
                bottom: Dimensions.h10,
              ),
              icon: LineIcons.heart,
              text: _names[1],
              iconSize: 0.0,
            ),
            GButton(
              leading: SvgPicture.asset(
                _images[2],
                height: Dimensions.h25,
                width: Dimensions.w25,
                fit: BoxFit.fill,
              ),
              margin: EdgeInsets.only(
                top: Dimensions.h10,
                bottom: Dimensions.h10,
              ),
              icon: LineIcons.search,
              text: _names[2],
              iconSize: 0.0,
            ),
            GButton(
              leading: SvgPicture.asset(
                _images[3],
                height: Dimensions.h25,
                width: Dimensions.w25,
                fit: BoxFit.fill,
              ),
              margin: EdgeInsets.only(
                top: Dimensions.h10,
                bottom: Dimensions.h10,
                right: Dimensions.w10,
              ),
              icon: LineIcons.user,
              text: _names[3],
              iconSize: 0.0,
            ),
          ],
          selectedIndex: _currentIndex,
          onTabChange: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
      // bottomNavBar: AnimatedContainer(
      //   duration: const Duration(milliseconds: 1000),
      //   curve: Curves.fastLinearToSlowEaseIn,
      //   height: visible ? Dimensions.h70 : 0,
      //   padding: EdgeInsets.only(
      //       bottom: Dimensions.h10, top: Dimensions.h10, left: Dimensions.w10),
      //   decoration: BoxDecoration(
      //     color: AppColors.yellow,
      //     boxShadow: [
      //       BoxShadow(
      //         color: Colors.black.withOpacity(.1),
      //         blurRadius: 30,
      //         offset: const Offset(0, 10),
      //       ),
      //     ],
      //     //   borderRadius: BorderRadius.circular(50),
      //   ),
      //   child: ListView.builder(
      //     itemCount: 4,
      //     scrollDirection: Axis.horizontal,
      //     padding: EdgeInsets.symmetric(horizontal: displayWidth * .04),
      //     itemBuilder: (context, index) => InkWell(
      //       onTap: () {
      //         setState(
      //           () {
      //             _currentIndex = index;
      //             print(Dimensions.screenHeight / 8);
      //           },
      //         );
      //       },
      //       splashColor: Colors.transparent,
      //       highlightColor: Colors.transparent,
      //       child: Stack(
      //         children: [
      //           AnimatedContainer(
      //             duration: const Duration(seconds: 1),
      //             curve: Curves.fastLinearToSlowEaseIn,
      //             width: index == _currentIndex
      //                 ? displayWidth * .32
      //                 : displayWidth * .18,
      //             alignment: Alignment.center,
      //             child: AnimatedContainer(
      //               duration: const Duration(seconds: 1),
      //               curve: Curves.fastLinearToSlowEaseIn,
      //               height: index == _currentIndex ? displayWidth * .12 : 0,
      //               width: index == _currentIndex ? displayWidth * .32 : 0,
      //               decoration: BoxDecoration(
      //                 color: index == _currentIndex
      //                     ? AppColors.offWhite
      //                     : Colors.transparent,
      //                 borderRadius: BorderRadius.circular(50),
      //               ),
      //             ),
      //           ),
      //           AnimatedContainer(
      //             duration: const Duration(seconds: 1),
      //             curve: Curves.fastLinearToSlowEaseIn,
      //             width: index == _currentIndex
      //                 ? displayWidth * .31
      //                 : displayWidth * .18,
      //             alignment: Alignment.center,
      //             child: Stack(
      //               children: [
      //                 Row(
      //                   children: [
      //                     AnimatedContainer(
      //                       duration: const Duration(seconds: 1),
      //                       curve: Curves.fastLinearToSlowEaseIn,
      //                       width:
      //                           index == _currentIndex ? displayWidth * .13 : 0,
      //                     ),
      //                     AnimatedOpacity(
      //                       opacity: index == _currentIndex ? 1 : 0,
      //                       duration: const Duration(seconds: 1),
      //                       curve: Curves.fastLinearToSlowEaseIn,
      //                       child: Text(
      //                         index == _currentIndex
      //                             ? _listOfStrings[index]
      //                             : '',
      //                         style: getRegularStyle(
      //                           color: AppColors.offBlack,
      //                           fontSize: 14,
      //                         ),
      //                       ),
      //                     ),
      //                   ],
      //                 ),
      //                 Row(
      //                   children: [
      //                     AnimatedContainer(
      //                       duration: const Duration(seconds: 1),
      //                       curve: Curves.fastLinearToSlowEaseIn,
      //                       width: index == _currentIndex
      //                           ? Dimensions.w20
      //                           : Dimensions.w20,
      //                     ),
      //                     SvgPicture.asset(
      //                       _images[index],
      //                       height: Dimensions.h25,
      //                       width: Dimensions.w25,
      //                       fit: BoxFit.fill,
      //                     ),
      //                   ],
      //                 ),
      //               ],
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
    );
  }

  void hideNav() {
    setState(() {
      visible = false;
      _categoriesController.isScrolling.value = false;
    });
  }

  void showNav() {
    setState(() {
      visible = true;
      _categoriesController.isScrolling.value = true;
    });
  }
}
