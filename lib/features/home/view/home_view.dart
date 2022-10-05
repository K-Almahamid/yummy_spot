import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:yummy_spot/common_widgets/animated_scroll_card.dart';
import 'package:yummy_spot/constants/app_colors.dart';
import 'package:yummy_spot/constants/app_styles.dart';
import 'package:yummy_spot/constants/dimensions.dart';
import 'package:yummy_spot/data/home_tab_model.dart';
import 'package:yummy_spot/features/home/controller/categories_controller.dart';
import 'package:yummy_spot/features/recipes_search/view/recipes_search_view.dart';

class HomeView extends StatefulWidget {
  final VoidCallback? showNavigation;
  final VoidCallback? hideNavigation;

  const HomeView({
    Key? key,
    this.showNavigation,
    this.hideNavigation,
  }) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  late TabController _tabController;
  final int _selectedIndex = 0;

  // to hide bottom navbar
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        vsync: this, length: data.length, initialIndex: _selectedIndex);

    scrollController.addListener(() {
      if (scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        widget.showNavigation!();
      } else {
        widget.hideNavigation!();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();

    scrollController.dispose();
    scrollController.removeListener(() {});
  }

  final CategoriesController _categoriesController =
      Get.put(CategoriesController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _categoriesController.getCategories(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return Center(child: Lottie.asset('assets/images/loading.json'));
            default:
              if (snapshot.hasError) {
                return Center(
                  child: Text(
                    snapshot.error.toString(),
                    style: getMediumStyle(color: AppColors.black),
                  ),
                );
              } else {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Obx(() {
                      // return Row(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     Padding(
                      //       padding: EdgeInsets.only(
                      //           left: Dimensions.w10,
                      //           bottom: Dimensions.h5),
                      //       child: Text(
                      //         'What do you want to\ncook today?',
                      //         style: getSemiBoldStyle(
                      //           color: AppColors.black,
                      //           fontSize: Dimensions.w20,
                      //         ).copyWith(letterSpacing: 1.5),
                      //       ),
                      //     ),
                      //   ],
                      // );
                      return AnimatedContainer(
                        duration: const Duration(milliseconds: 1000),
                        curve: Curves.fastLinearToSlowEaseIn,
                        height: _categoriesController.isScrolling.value
                            ? Dimensions.h70
                            : 0,
                        margin: EdgeInsets.only(
                            bottom: _categoriesController.isScrolling.value
                                ? Dimensions.h10
                                : 0),
                        child: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          alignment: WrapAlignment.spaceAround,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          children: [
                            Container(
                              height: Dimensions.h40,
                              width: Dimensions.h40,
                              margin: EdgeInsets.symmetric(
                                  horizontal: Dimensions.w20,
                                  vertical: Dimensions.h20),
                              decoration: BoxDecoration(
                                color: AppColors.primary,
                                borderRadius: BorderRadius.circular(10),
                                image: const DecorationImage(
                                  image:
                                      AssetImage('assets/images/profile.jpg'),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                            SizedBox(width: Dimensions.w20),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
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
                            SizedBox(width: Dimensions.w80),
                            GestureDetector(
                              child: SvgPicture.asset(
                                'assets/images/Search Icon.svg',
                                color: AppColors.black,
                              ),
                              onTap: () =>
                                  Get.to(() => const RecipesSearchView()),
                            ),
                          ],
                        ),
                      );
                    }),
                    // Expanded(
                    //   child: ListView.builder(
                    //     controller: scrollController,
                    //     physics: const BouncingScrollPhysics(),
                    //     padding: EdgeInsets.symmetric(
                    //         horizontal: Dimensions.w10,
                    //         vertical: Dimensions.h15),
                    //     cacheExtent: 0,
                    //     itemCount: _categoriesController.recipes.length,
                    //     itemBuilder: (context, index) {
                    //       final RecipeModel recipe =
                    //           _categoriesController.recipes[index];
                    //       return AnimatedScrollCard(
                    //         child: Card(
                    //           elevation: 0.0,
                    //           child: Column(
                    //             children: [
                    //               Image.network(
                    //                 recipe.imageOne!,
                    //                 fit: BoxFit.cover,
                    //                 height: Dimensions.h200,
                    //                 width: Dimensions.screenWidth,
                    //               ),
                    //             ],
                    //           ),
                    //         ),
                    //       );
                    //     },
                    //   ),
                    // ),
                    Expanded(
                      child: Scrollbar(
                        radius: Radius.circular(Dimensions.w8),
                        child: ListView.builder(
                          controller: scrollController,
                          physics: const BouncingScrollPhysics(),
                          padding: EdgeInsets.symmetric(
                              horizontal: Dimensions.w10,
                              vertical: Dimensions.h15),
                          cacheExtent: 0,
                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return AnimatedScrollCard(
                              child: Card(
                                elevation: 10.0,
                                margin: const EdgeInsets.only(bottom: 10),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      'assets/images/recipes/cherry pie.jpeg',
                                      fit: BoxFit.cover,
                                      height: Dimensions.h200,
                                      width: Dimensions.screenWidth,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                );
              }
          }
        },
      ),
    );
  }
}

/*
NestedScrollView(
      physics: const BouncingScrollPhysics(),
      floatHeaderSlivers: true,
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        SliverAppBar(
          //pinned: true,
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
            HomeTabsWidget(
              tabController: _tabController,
              selectedIndex: _selectedIndex,
            ),
            LiveCardWidget(tabController: _tabController),
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Dimensions.w10, vertical: Dimensions.h10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recipes',
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
                  itemCount: _categoriesController.recipes.length,
                  itemBuilder: (context, index, realIndex) {
                    RecipeModel recipe = _categoriesController.recipes[index];
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
                            child: Image.network(
                              recipe.imageOne!,
                              fit: BoxFit.cover,
                              errorBuilder: (context, object, stackTRace) {
                                return Text(object.toString());
                              },
                            ),
                          ),
                          Positioned(
                            bottom: 8.0,
                            right: 15.0,
                            child: Text(
                              recipe.name!,
                              style: getBoldStyle(color: AppColors.offBlack),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                )
              ],
            ),
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
                      GestureDetector(
                        child: Chip(
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
                                size: 14,
                              )
                            ],
                          ),
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
                              style: getBoldStyle(color: AppColors.offBlack),
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
    );
 */
