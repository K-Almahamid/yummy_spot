import 'package:flutter/material.dart';
import 'package:yummy_spot/constants/app_colors.dart';
import 'package:yummy_spot/constants/app_styles.dart';
import 'package:yummy_spot/data/recipe_model.dart';

class SliverBodyItems extends StatelessWidget {
  final List<RecipeModel> listItems;

  const SliverBodyItems({Key? key, required this.listItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: listItems.length,
        (context, index) {
          final recipe = listItems[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 7,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                recipe.name!,
                                style: getRegularStyle(
                                  color: AppColors.black,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                recipe.description!,
                                maxLines: 4,
                                style: getRegularStyle(
                                  color: AppColors.black,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                recipe.isTrend.toString(),
                                maxLines: 4,
                                style: getRegularStyle(
                                  color: AppColors.black,
                                ),
                              ),
                              const SizedBox(height: 8),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 140,
                        width: 130,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(recipe.imageOne!),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                if (index == listItems.length - 1) ...[
                  const SizedBox(height: 32),
                  Container(
                    height: 0.5,
                    color: AppColors.white.withOpacity(0.3),
                  )
                ]
              ],
            ),
          );
        },
      ),
    );
  }
}
