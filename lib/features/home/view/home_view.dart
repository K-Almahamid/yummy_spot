import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yummy_spot/constants/app_colors.dart';
import 'package:yummy_spot/constants/app_styles.dart';
import 'package:yummy_spot/constants/dimensions.dart';
import 'package:yummy_spot/features/home/widget/live_card_widget.dart';
import 'package:yummy_spot/features/home/widget/tabs_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  late TabController _tabController;

  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(vsync: this, length: 4, initialIndex: _selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          physics: const BouncingScrollPhysics(),
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              pinned: true,
              floating: true,
              snap: true,
              centerTitle: true,
              toolbarHeight: Dimensions.h80,
              leadingWidth: Dimensions.w80,
              backgroundColor: AppColors.offWhite,
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
                SvgPicture.asset(
                  'assets/images/Search Icon.svg',
                  color: AppColors.black,
                ),
                SizedBox(width: Dimensions.w20),
              ],
            )
          ],
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // title
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Dimensions.w15, vertical: Dimensions.h10),
                  child: Text(
                    'What do you want to\ncook today?',
                    style: getSemiBoldStyle(
                      color: AppColors.black,
                      fontSize: 20,
                    ).copyWith(letterSpacing: 1.5),
                  ),
                ),
                //tabs
                TabsViewWidget(
                  tabController: _tabController,
                  selectedIndex: _selectedIndex,
                ),
                LiveCardWidget(tabController: _tabController),
                //Recommended view
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: Dimensions.w15, vertical: Dimensions.h10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Recommended',
                            style: getSemiBoldStyle(
                                color: AppColors.black, fontSize: 24),
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
                                SizedBox(width: 2),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: 16,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    CarouselSlider.builder(
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
                        return GestureDetector(
                          child: Stack(
                            children: [
                              Container(
                                width: Dimensions.screenWidth,
                                height: Dimensions.screenHeight,
                                clipBehavior: Clip.antiAlias,
                                margin: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: AppColors.offWhite,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset(
                                  'assets/images/live.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                bottom: 8.0,
                                right: 15.0,
                                child: Text(
                                  'hello',
                                  style:
                                      getBoldStyle(color: AppColors.offBlack),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: Dimensions.w10, vertical: Dimensions.h10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Recommended',
                            style: getSemiBoldStyle(
                                color: AppColors.black, fontSize: 24),
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
                                SizedBox(width: 2),
                                Icon(
                                  Icons.arrow_forward_ios_rounded,
                                  size: 16,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    CarouselSlider.builder(
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
                        return GestureDetector(
                          child: Stack(
                            children: [
                              Container(
                                width: Dimensions.screenWidth,
                                height: Dimensions.screenHeight,
                                clipBehavior: Clip.antiAlias,
                                margin: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: AppColors.offWhite,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset(
                                  'assets/images/live.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Positioned(
                                bottom: 8.0,
                                right: 15.0,
                                child: Text(
                                  'hello',
                                  style:
                                      getBoldStyle(color: AppColors.offBlack),
                                ),
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
          // shrinkWrap: true,
          // primary: false,
        ),
      ),
    );
  }
}
