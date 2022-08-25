import 'package:flutter/material.dart';
import 'package:yummy_spot/common_widgets/custom_scaffold.dart';
import 'package:yummy_spot/constants/app_colors.dart';
import 'package:yummy_spot/constants/app_styles.dart';
import 'package:yummy_spot/constants/dimensions.dart';
import 'package:yummy_spot/data/recipes_model.dart';

class RecipeDetailsView extends StatefulWidget {
  final RecipeModel recipeObject;

  const RecipeDetailsView({Key? key, required this.recipeObject})
      : super(key: key);

  @override
  State<RecipeDetailsView> createState() => _RecipeDetailsViewState();
}

class _RecipeDetailsViewState extends State<RecipeDetailsView> {
  int _tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      // appBar: PreferredSize(
      //     preferredSize: Size(Dimensions.screenWidth, Dimensions.h80),
      //     child: Text('ssss')),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: Dimensions.h90),
            Text(
              widget.recipeObject.name,
              style: getSemiBoldStyle(
                color: AppColors.black,
                fontSize: 24,
              ),
            ),
            SizedBox(height: Dimensions.h10),
            Text(
              'by Khaled Almahamid',
              style: getRegularStyle(
                color: AppColors.grey,
                fontSize: 16,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.access_time_filled_rounded,
                    color: AppColors.primary,
                  ),
                  label: Text(
                    widget.recipeObject.total,
                    style:
                        getRegularStyle(color: AppColors.black, fontSize: 14),
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.emoji_emotions_rounded,
                    color: AppColors.yellow,
                  ),
                  label: Text(
                    widget.recipeObject.level,
                    style:
                        getRegularStyle(color: AppColors.black, fontSize: 14),
                  ),
                ),
              ],
            ),
            Container(
              width: Dimensions.screenWidth,
              height: 150,
              margin: EdgeInsets.symmetric(
                  horizontal: Dimensions.w20, vertical: Dimensions.h10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    widget.recipeObject.image,
                  ),
                ),
              ),
            ),
            Container(
              width: Dimensions.screenWidth,
              height: Dimensions.h40,
              margin: EdgeInsets.symmetric(
                  horizontal: Dimensions.w20, vertical: Dimensions.h10),
              padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.w20, vertical: Dimensions.h10),
              decoration: BoxDecoration(
                color: AppColors.secondary,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.group_rounded,
                        size: 20,
                        color: AppColors.black,
                      ),
                      SizedBox(width: Dimensions.w5),
                      Text(
                        'Persons',
                        style: getRegularStyle(color: AppColors.black),
                      ),
                      Text(
                        'Persons',
                        style: getRegularStyle(color: AppColors.black),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.remove,
                        size: 18,
                        color: AppColors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          '10',
                          style: getRegularStyle(color: AppColors.black),
                        ),
                      ),
                      Icon(
                        Icons.add,
                        size: 18,
                        color: AppColors.black,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            DefaultTabController(
              length: 2,
              child: Column(
                children: <Widget>[
                  Container(
                    width: Dimensions.screenWidth,
                    height: Dimensions.h40,
                    margin: EdgeInsets.symmetric(
                        horizontal: Dimensions.w45 + 15,
                        vertical: Dimensions.h5),
                    padding: EdgeInsets.symmetric(
                        horizontal: Dimensions.w5, vertical: Dimensions.h5),
                    decoration: BoxDecoration(
                      color: AppColors.secondary,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TabBar(
                      physics: const BouncingScrollPhysics(),
                      labelColor: AppColors.black,
                      indicatorSize: TabBarIndicatorSize.label,
                      isScrollable: false,
                      indicatorWeight: 1,
                      indicator: BoxDecoration(color: AppColors.secondary),
                      automaticIndicatorColorAdjustment: true,
                      labelPadding:
                          EdgeInsets.symmetric(horizontal: Dimensions.w5),
                      onTap: (int index) {
                        _tabIndex = index;
                        setState(() {});
                        print(index);
                      },
                      tabs: [
                        Tab(
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(
                              left: Dimensions.w20,
                              right: Dimensions.w20,
                              top: 2,
                              bottom: 2,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: _tabIndex == 0
                                    ? AppColors.white
                                    : AppColors.secondary),
                            child: const Text("Ingredients"),
                          ),
                        ),
                        Tab(
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(
                              left: Dimensions.w20,
                              right: Dimensions.w20,
                              top: 2,
                              bottom: 2,
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: _tabIndex == 1
                                    ? AppColors.white
                                    : AppColors.secondary),
                            child: const Text("Directions"),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.45,
                    child: TabBarView(
                      physics: const BouncingScrollPhysics(),
                      children: [
                        ListView.separated(
                          physics: const BouncingScrollPhysics(),
                          padding: EdgeInsets.symmetric(
                              horizontal: Dimensions.w10,
                              vertical: Dimensions.h10),
                          itemCount: widget.recipeObject.ingredients.length,
                          separatorBuilder: (context, index) {
                            return const Divider(
                              thickness: 2,
                            );
                          },
                          itemBuilder: (context, index) {
                            IngredientModel ingredientObject =
                                widget.recipeObject.ingredients[index];
                            return Text(ingredientObject.quantity);
                          },
                        ),
                        ListView.separated(
                          physics: const BouncingScrollPhysics(),
                          padding: EdgeInsets.only(
                            left: Dimensions.w10,
                            right: Dimensions.w10,
                            top: Dimensions.h10,
                            bottom: Dimensions.h60,
                          ),
                          itemCount: widget.recipeObject.directions.length,
                          separatorBuilder: (context, index) {
                            return const Divider(
                              thickness: 2,
                            );
                          },
                          itemBuilder: (context, index) {
                            String ingredientObject =
                                widget.recipeObject.directions[index];
                            return Text(ingredientObject);
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
