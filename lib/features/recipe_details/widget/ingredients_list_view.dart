import 'package:flutter/material.dart';
import 'package:yummy_spot/constants/app_colors.dart';
import 'package:yummy_spot/constants/app_styles.dart';
import 'package:yummy_spot/constants/dimensions.dart';
import 'package:yummy_spot/data/ingredient_model.dart';
import 'package:yummy_spot/data/recipe_model.dart';

class IngredientsListView extends StatelessWidget {
  final RecipeModel recipeObject;

  const IngredientsListView({Key? key, required this.recipeObject})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: Dimensions.w10, vertical: Dimensions.h10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Ingredient :',
            textAlign: TextAlign.center,
            style: getSemiBoldStyle(
              color: AppColors.black,
              fontSize: 18,
            ),
          ),
          ListView.separated(
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.only(
              top: Dimensions.h20,
              bottom: Dimensions.h20,
            ),
            itemCount: recipeObject.ingredients!.length,
            shrinkWrap: true,
            primary: false,
            separatorBuilder: (context, index) {
              // return Divider(
              //   thickness: 1.5,
              //   color: AppColors.grey,
              // );
              return SizedBox(height: Dimensions.h20);
            },
            itemBuilder: (context, index) {
              IngredientModel ingredient = recipeObject.ingredients![index];
              return Padding(
                padding: EdgeInsets.only(right: Dimensions.w10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(Dimensions.w5),
                      decoration: BoxDecoration(
                        color: AppColors.yellow,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: Dimensions.w8, right: Dimensions.w8),
                      child: Text(
                        ingredient.quantity.toString(),
                        textAlign: TextAlign.center,
                        style: getRegularStyle(
                          color: AppColors.grey,
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Text(
                        ingredient.name!,
                        style: getRegularStyle(
                          color: AppColors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
