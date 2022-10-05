import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:yummy_spot/constants/app_colors.dart';
import 'package:yummy_spot/constants/app_styles.dart';
import 'package:yummy_spot/constants/dimensions.dart';
import 'package:yummy_spot/features/recipes_search/view/recipes_search_view.dart';

class HomeAppBar extends StatelessWidget with PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      snap: true,
      centerTitle: true,
      toolbarHeight: Dimensions.h80,
      leadingWidth: Dimensions.w80,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      leading: Container(
        margin: EdgeInsets.symmetric(
            horizontal: Dimensions.w20, vertical: Dimensions.h20),
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            image: AssetImage('assets/images/profile.jpg'),
            fit: BoxFit.fill,
          ),
        ),
      ),
      title: Column(
        children: [
          Text(
            'Good Morning',
            style: getRegularStyle(
              color: AppColors.grey,
              fontSize: 16,
            ),
          ),
          Text(
            'Khaled Almahamid',
            style: getMediumStyle(
              color: AppColors.black,
              fontSize: 18,
            ),
          ),
        ],
      ),
      actions: [
        GestureDetector(
          child: SvgPicture.asset(
            'assets/images/Search Icon.svg',
            color: AppColors.black,
          ),
          onTap: () => Get.to(() => const RecipesSearchView()),
        ),
        SizedBox(width: Dimensions.w20),
      ],
      // bottom: PreferredSize(
      //   preferredSize: Size.fromHeight(Dimensions.h40),
      //   child: Row(
      //     crossAxisAlignment: CrossAxisAlignment.start,
      //     children: [
      //       Padding(
      //         padding:
      //             EdgeInsets.only(left: Dimensions.w10, bottom: Dimensions.h5),
      //         child: Text(
      //           'What do you want to\ncook today?',
      //           style: getSemiBoldStyle(
      //             color: AppColors.black,
      //             fontSize: Dimensions.w20,
      //           ).copyWith(letterSpacing: 1.5),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(Dimensions.h150);
}
