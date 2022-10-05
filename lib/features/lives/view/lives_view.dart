import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:yummy_spot/constants/app_colors.dart';
import 'package:yummy_spot/constants/app_styles.dart';
import 'package:yummy_spot/constants/dimensions.dart';
import 'package:yummy_spot/data/recipes_model2.dart';
import 'package:yummy_spot/features/live/view/live_view.dart';

class LivesView extends StatelessWidget {
  const LivesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        physics: const BouncingScrollPhysics(),
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            // pinned: true,
            floating: true,
            snap: true,
            centerTitle: true,
            toolbarHeight: Dimensions.h60,
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: GestureDetector(
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: AppColors.black,
              ),
              onTap: () => Navigator.of(context).pop(),
            ),
            title: Text(
              'Live Cooking',
              style: getMediumStyle(
                color: AppColors.black,
                fontSize: 18,
              ),
            ),
            actions: [
              SvgPicture.asset(
                'assets/images/Search Icon.svg',
                color: AppColors.black,
              ),
              SizedBox(width: Dimensions.w20),
            ],
          ),
        ],
        // body: Center(),
        body: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: recipesData.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              child: Container(
                height: Dimensions.h250,
                margin: EdgeInsets.symmetric(
                    horizontal: Dimensions.w10, vertical: Dimensions.h10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(recipesData[index].image),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      colors: [
                        AppColors.black.withOpacity(0.6),
                        AppColors.black.withOpacity(0.3),
                        AppColors.black.withOpacity(0.0),
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.center,
                    ),
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Positioned(
                        left: Dimensions.w30,
                        bottom: Dimensions.h20,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding:
                                  EdgeInsets.symmetric(vertical: Dimensions.h5),
                              child: Text(
                                recipesData[index].category,
                                softWrap: true,
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                                style: getSemiBoldStyle(
                                  color: AppColors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Chip(
                              backgroundColor: AppColors.offWhite,
                              padding: EdgeInsets.only(
                                  top: Dimensions.h5,
                                  bottom: Dimensions.h5,
                                  right: Dimensions.w10),
                              label: Row(
                                children: [
                                  const CircleAvatar(
                                    radius: 15,
                                    backgroundImage:
                                        AssetImage('assets/images/profile.jpg'),
                                  ),
                                  const CircleAvatar(
                                    radius: 15,
                                    backgroundImage: AssetImage(
                                        'assets/images/recipes/cherry pie.jpeg'),
                                  ),
                                  SizedBox(width: Dimensions.w10),
                                  const Text('+60')
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        right: Dimensions.w30,
                        bottom: Dimensions.h20,
                        child: Chip(
                          backgroundColor: AppColors.primary,
                          label: Text(
                            'Join Now',
                            style: getMediumStyle(
                              color: AppColors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: Dimensions.h10,
                        child: Chip(
                          backgroundColor: AppColors.offWhite,
                          avatar: const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/profile.jpg'),
                          ),
                          label: const Text('k.Almahamid'),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              onTap: () => Get.to(() => const LiveView()),
            );
          },
        ),
      ),
    );
  }
}
