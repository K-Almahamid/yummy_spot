import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:yummy_spot/common_widgets/animated_scroll_card.dart';
import 'package:yummy_spot/constants/app_colors.dart';
import 'package:yummy_spot/constants/app_styles.dart';
import 'package:yummy_spot/constants/dimensions.dart';
import 'package:yummy_spot/features/home/controller/categories_controller.dart';

class AllRecipesView extends StatefulWidget {
  final VoidCallback? showNavigation;
  final VoidCallback? hideNavigation;

  const AllRecipesView({Key? key, this.showNavigation, this.hideNavigation})
      : super(key: key);

  @override
  State<AllRecipesView> createState() => _AllRecipesViewState();
}

class _AllRecipesViewState extends State<AllRecipesView> {
  final CategoriesController _categoriesController =
      Get.put(CategoriesController());

  // to hide bottom navbar
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

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
                      return AnimatedContainer(
                        alignment: Alignment.center,
                        duration: const Duration(milliseconds: 1000),
                        curve: Curves.fastLinearToSlowEaseIn,
                        margin: _categoriesController.isScrolling.value
                            ? EdgeInsets.only(top: 30, bottom: 30)
                            : EdgeInsets.zero,
                        height: _categoriesController.isScrolling.value
                            ? Dimensions.h90
                            : 0,
                        child: Wrap(
                          direction: Axis.horizontal,
                          alignment: WrapAlignment.start,
                          crossAxisAlignment: WrapCrossAlignment.start,
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          children: List.generate(
                            10,
                            (index) => Container(
                              margin: EdgeInsets.only(left: Dimensions.w10),
                              child: FilterChip(
                                label: Text('Test'),
                                pressElevation: 15,
                                selectedColor: AppColors.secondary,
                                selected: true,
                                showCheckmark: true,
                                labelStyle:
                                    getMediumStyle(color: AppColors.black),
                                onSelected: (bool value) {},
                              ),
                            ),
                          ),
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
                        controller: scrollController,
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
