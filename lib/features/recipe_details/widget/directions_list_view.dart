import 'package:flutter/material.dart';
import 'package:yummy_spot/constants/app_colors.dart';
import 'package:yummy_spot/constants/app_styles.dart';
import 'package:yummy_spot/constants/dimensions.dart';
import 'package:yummy_spot/data/recipe_model.dart';

class DirectionsListView extends StatelessWidget {
  final RecipeModel recipeObject;

  const DirectionsListView({Key? key, required this.recipeObject})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Dimensions.w10, vertical: Dimensions.h10),
          child: Text(
            'Directions :',
            textAlign: TextAlign.center,
            style: getSemiBoldStyle(
              color: AppColors.black,
              fontSize: 18,
            ),
          ),
        ),
        ListView.separated(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.only(
            top: Dimensions.h20,
            bottom: Dimensions.h20,
          ),
          itemCount: 3,
          shrinkWrap: true,
          primary: false,
          separatorBuilder: (context, index) {
            return Divider(
              thickness: 1.5,
              color: AppColors.grey,
            );
          },
          itemBuilder: (context, index) {
            String direction = recipeObject.description!;
            return Padding(
              padding:
                  EdgeInsets.only(left: Dimensions.w10, right: Dimensions.w10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '1',
                        style: getBoldStyle(
                          color: AppColors.red,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(width: 5),
                      Container(
                        height: 30,
                        width: 2,
                        color: Colors.red,
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      direction,
                      maxLines: 5,
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
    );
  }
}
/*
      child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: (index + 1).toString(),
                      style: getBoldStyle(
                        color: AppColors.red,
                        fontSize: 25,
                      ).copyWith(letterSpacing: 5),
                    ),
                    TextSpan(
                      text: direction,
                      style: getRegularStyle(
                        color: AppColors.black,
                      ),
                    ),
                  ],
                ),
              ),
 */
