import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:yummy_spot/constants/app_colors.dart';
import 'package:yummy_spot/constants/app_styles.dart';
import 'package:yummy_spot/constants/dimensions.dart';

class LiveCardWidget extends StatefulWidget {
  final TabController tabController;

  const LiveCardWidget({Key? key, required this.tabController})
      : super(key: key);

  @override
  State<LiveCardWidget> createState() => _LiveCardWidgetState();
}

class _LiveCardWidgetState extends State<LiveCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Dimensions.screenHeight * 0.32,
      width: Dimensions.screenWidth,
      margin: EdgeInsets.only(top: Dimensions.h10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimensions.w15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Live Cooking',
                      style: getSemiBoldStyle(
                          color: AppColors.black, fontSize: 24),
                    ),
                    Chip(
                      backgroundColor: AppColors.offGrey2,
                      visualDensity: VisualDensity.adaptivePlatformDensity,
                      label: Text(
                        '50 Live',
                        style: getRegularStyle(
                          color: AppColors.black,
                          fontSize: 14,
                        ),
                      ),
                      avatar: Container(
                        padding: const EdgeInsets.all(2),
                        margin: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          color: AppColors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
                Chip(
                  backgroundColor: AppColors.offGrey2,
                  label: Row(
                    children: [
                      Text(
                        'See All',
                        style: getMediumStyle(
                            color: AppColors.black, fontSize: 16),
                      ),
                      const SizedBox(width: 2),
                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 16,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: widget.tabController,
              physics: const BouncingScrollPhysics(),
              children: List<Widget>.generate(
                widget.tabController.length,
                (index) => CarouselSlider.builder(
                  options: CarouselOptions(
                    height: Dimensions.screenHeight / 4.5,
                    viewportFraction: 0.90,
                    scrollPhysics: const BouncingScrollPhysics(),
                    clipBehavior: Clip.antiAlias,
                    enlargeCenterPage: true,
                    enlargeStrategy: CenterPageEnlargeStrategy.height,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 4),
                    enableInfiniteScroll: true,
                  ),
                  itemCount: 3,
                  itemBuilder: (context, index, realIndex) {
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: Dimensions.w10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/live.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                            colors: [
                              AppColors.black,
                              AppColors.black.withOpacity(0.6),
                              AppColors.black.withOpacity(0.3),
                              AppColors.black.withOpacity(0.0),
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                          ),
                        ),
                        child: Container(
                          margin: EdgeInsets.only(
                              top: Dimensions.h80, left: Dimensions.w20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                radius: Dimensions.w20,
                                backgroundImage: const AssetImage(
                                    'assets/images/profile.jpg'),
                              ),
                              SizedBox(width: Dimensions.w10),
                              Text(
                                'khaled waled',
                                style: getMediumStyle(
                                  color: AppColors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
