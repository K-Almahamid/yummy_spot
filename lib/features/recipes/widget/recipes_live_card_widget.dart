import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yummy_spot/common_widgets/cricle_icon.dart';
import 'package:yummy_spot/constants/app_colors.dart';
import 'package:yummy_spot/constants/app_styles.dart';
import 'package:yummy_spot/constants/dimensions.dart';
import 'package:yummy_spot/data/recipe_model.dart';
import 'package:yummy_spot/features/home/controller/categories_controller.dart';
import 'package:yummy_spot/features/recipe_details/view/recipe_details_view.dart';

class RecipesListWidget extends StatefulWidget {
  final TabController tabController;

  const RecipesListWidget({Key? key, required this.tabController})
      : super(key: key);

  @override
  State<RecipesListWidget> createState() => _RecipesListWidgetState();
}

final CategoriesController _categoriesController =
    Get.put(CategoriesController());

class _RecipesListWidgetState extends State<RecipesListWidget> {
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
          Expanded(
            child: TabBarView(
              controller: widget.tabController,
              physics: const BouncingScrollPhysics(),
              children: List<Widget>.generate(
                widget.tabController.length,
                (index) => ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount:
                      _categoriesController.categories[index].recipes!.length,
                  itemBuilder: (context, index2) {
                    RecipeModel recipeObject = _categoriesController
                        .categories[index].recipes![index2];
                    return GestureDetector(
                      child: Container(
                        height: Dimensions.h200,
                        margin: EdgeInsets.symmetric(
                            horizontal: Dimensions.w10,
                            vertical: Dimensions.h10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: NetworkImage(recipeObject.imageOne!),
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
                              begin: Alignment.centerLeft,
                              end: Alignment.center,
                            ),
                          ),
                          child: Stack(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: Dimensions.w20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Chip(
                                      label: Text(
                                        'Breakfast',
                                        style: getMediumStyle(
                                          color: AppColors.black,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: Dimensions.w200 * 1.5,
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 5.0),
                                      child: Text(
                                        recipeObject.name!,
                                        softWrap: true,
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style: getMediumStyle(
                                            color: AppColors.white,
                                            fontSize: 18),
                                      ),
                                    ),
                                    SizedBox(
                                      width: Dimensions.w90,
                                      child: Chip(
                                        backgroundColor: AppColors.primary,
                                        label: Row(
                                          children: [
                                            Text(
                                              'Explore',
                                              style: getMediumStyle(
                                                color: AppColors.white,
                                                fontSize: 14,
                                              ),
                                            ),
                                            Icon(
                                              Icons.arrow_forward_ios_rounded,
                                              color: AppColors.white,
                                              size: 14,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                right: 0.0,
                                top: 0.0,
                                child: CircleIcon(
                                  icon: Icons.bookmark_rounded,
                                  iconColor: AppColors.black,
                                  backgroundColor: AppColors.white,
                                  iconSize: 18,
                                  onPress: () {},
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      onTap: () => Get.to(
                          () => RecipeDetailsView(recipeObject: recipeObject)),
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
