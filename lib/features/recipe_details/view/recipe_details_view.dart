import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yummy_spot/common_widgets/cricle_icon.dart';
import 'package:yummy_spot/common_widgets/custom_scaffold.dart';
import 'package:yummy_spot/common_widgets/expandable_text.dart';
import 'package:yummy_spot/constants/app_colors.dart';
import 'package:yummy_spot/constants/app_styles.dart';
import 'package:yummy_spot/constants/dimensions.dart';
import 'package:yummy_spot/data/recipe_model.dart';
import 'package:yummy_spot/features/recipe_details/widget/directions_list_view.dart';
import 'package:yummy_spot/features/recipe_details/widget/ingredients_list_view.dart';
import 'package:yummy_spot/features/recipe_details/widget/reviews.dart';

class RecipeDetailsView extends StatefulWidget {
  final RecipeModel recipeObject;

  const RecipeDetailsView({Key? key, required this.recipeObject})
      : super(key: key);

  @override
  State<RecipeDetailsView> createState() => _RecipeDetailsViewState();
}

class _RecipeDetailsViewState extends State<RecipeDetailsView> {
  final int _tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          CustomScaffold(
            body: NestedScrollView(
              floatHeaderSlivers: true,
              physics: const BouncingScrollPhysics(),
              headerSliverBuilder: (context, innerBoxIsScrolled) => [
                SliverAppBar(
                  pinned: true,
                  floating: true,
                  snap: true,
                  centerTitle: true,
                  toolbarHeight: Dimensions.h200 * 1.2,
                  leadingWidth: 0.0,
                  backgroundColor: Colors.transparent,
                  titleSpacing: 0,
                  elevation: 0.0,
                  title: Container(
                    height: Dimensions.h200 * 1.2,
                    width: Dimensions.screenWidth,
                    margin: EdgeInsets.symmetric(vertical: Dimensions.h10),
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.only(
                      //   bottomRight: Radius.circular(20),
                      //   bottomLeft: Radius.circular(20),
                      // ),
                      image: DecorationImage(
                        image: NetworkImage(widget.recipeObject.imageOne!),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.only(
                        //   bottomRight: Radius.circular(20),
                        //   bottomLeft: Radius.circular(20),
                        // ),
                        gradient: LinearGradient(
                          colors: [
                            AppColors.offWhite,
                            // AppColors.offWhite.withOpacity(0.8),
                            AppColors.offWhite.withOpacity(0.5),
                            AppColors.offWhite.withOpacity(0.0),
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.center,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: Dimensions.h5,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              width: Dimensions.screenWidth,
                              child: Wrap(
                                crossAxisAlignment: WrapCrossAlignment.center,
                                spacing: Dimensions.w10,
                                runAlignment: WrapAlignment.spaceAround,
                                children: [
                                  Chip(
                                    backgroundColor: AppColors.yellow,
                                    avatar: Icon(
                                      Icons.emoji_emotions_rounded,
                                      color: AppColors.white,
                                    ),
                                    label: Text(
                                      widget.recipeObject.level!,
                                      style: getRegularStyle(
                                        color: AppColors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Chip(
                                    backgroundColor: AppColors.primary,
                                    avatar: Icon(
                                      Icons.access_time_filled_rounded,
                                      color: AppColors.white,
                                    ),
                                    label: Text(
                                      widget.recipeObject.time!,
                                      style: getRegularStyle(
                                        color: AppColors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                  Chip(
                                    backgroundColor: AppColors.red,
                                    avatar: SvgPicture.asset(
                                      'assets/images/double-checked-svgrepo-com.svg',
                                      color: AppColors.white,
                                    ),
                                    label: RichText(
                                      text: TextSpan(
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: widget.recipeObject
                                                .ingredients!.length
                                                .toString(),
                                            style: getSemiBoldStyle(
                                              color: AppColors.white,
                                              fontSize: 14,
                                            ),
                                          ),
                                          TextSpan(
                                            text: ' ingredients',
                                            style: getRegularStyle(
                                              color: AppColors.white,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            right: Dimensions.w10,
                            top: Dimensions.h10,
                            child: Row(
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(1000.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(Dimensions.w10),
                                    child: SvgPicture.asset(
                                      'assets/images/bookmark-svgrepo-com.svg',
                                      color: AppColors.black,
                                      height: Dimensions.h20,
                                      width: Dimensions.w20,
                                    ),
                                  ),
                                ),
                                SizedBox(width: Dimensions.w5),
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(1000.0),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.all(Dimensions.w10),
                                    child: SvgPicture.asset(
                                      'assets/images/share-svgrepo-com.svg',
                                      color: AppColors.black,
                                      height: Dimensions.h20,
                                      width: Dimensions.w20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: Dimensions.w10,
                            top: Dimensions.h10,
                            child: CircleIcon(
                              backgroundColor: AppColors.white,
                              icon: Icons.arrow_back_ios_new_rounded,
                              iconColor: AppColors.black,
                              iconSize: 18,
                              onPress: () => Navigator.pop(context),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
              body: SingleChildScrollView(
                primary: false,
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.only(top: Dimensions.h10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: Dimensions.w10),
                      child: Text(
                        widget.recipeObject.name!,
                        style: getSemiBoldStyle(
                          color: AppColors.black,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    SizedBox(height: Dimensions.h10),
                    ExpandableText(text: widget.recipeObject.description!),
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
                            ],
                          ),
                          // Row(
                          //   children: [
                          //     Icon(
                          //       Icons.remove,
                          //       size: 18,
                          //       color: AppColors.black,
                          //     ),
                          //     Padding(
                          //       padding:
                          //           const EdgeInsets.symmetric(horizontal: 8.0),
                          //       child: Text(
                          //         '10',
                          //         style: getRegularStyle(color: AppColors.black),
                          //       ),
                          //     ),
                          //     Icon(
                          //       Icons.add,
                          //       size: 18,
                          //       color: AppColors.black,
                          //     ),
                          //   ],
                          // ),
                          Text(
                            widget.recipeObject.servings!,
                            style: getRegularStyle(color: AppColors.white),
                          ),
                        ],
                      ),
                    ),
                    // DefaultTabController(
                    //   length: 2,
                    //   child: Column(
                    //     children: <Widget>[
                    //       Container(
                    //         // width: Dimensions.screenWidth,
                    //         height: Dimensions.h40,
                    //         margin: EdgeInsets.symmetric(
                    //             horizontal: Dimensions.w45 + 15,
                    //             vertical: Dimensions.h5),
                    //         padding: EdgeInsets.symmetric(
                    //             horizontal: Dimensions.w5,
                    //             vertical: Dimensions.h5),
                    //         decoration: BoxDecoration(
                    //           color: AppColors.secondary,
                    //           borderRadius: BorderRadius.circular(30),
                    //         ),
                    //         child: TabBar(
                    //           physics: const BouncingScrollPhysics(),
                    //           labelColor: AppColors.black,
                    //           indicatorSize: TabBarIndicatorSize.label,
                    //           isScrollable: false,
                    //           indicatorWeight: 1,
                    //           indicator:
                    //               BoxDecoration(color: AppColors.secondary),
                    //           automaticIndicatorColorAdjustment: true,
                    //           labelPadding: EdgeInsets.symmetric(
                    //               horizontal: Dimensions.w5),
                    //           onTap: (int index) {
                    //             _tabIndex = index;
                    //             setState(() {});
                    //             print(index);
                    //           },
                    //           tabs: [
                    //             Tab(
                    //               child: Container(
                    //                 alignment: Alignment.center,
                    //                 padding: EdgeInsets.only(
                    //                   left: Dimensions.w20,
                    //                   right: Dimensions.w20,
                    //                   top: 2,
                    //                   bottom: 2,
                    //                 ),
                    //                 decoration: BoxDecoration(
                    //                     borderRadius: BorderRadius.circular(30),
                    //                     color: _tabIndex == 0
                    //                         ? AppColors.white
                    //                         : AppColors.secondary),
                    //                 child: const Text("Ingredients"),
                    //               ),
                    //             ),
                    //             Tab(
                    //               child: Container(
                    //                 alignment: Alignment.center,
                    //                 padding: EdgeInsets.only(
                    //                   left: Dimensions.w20,
                    //                   right: Dimensions.w20,
                    //                   top: 2,
                    //                   bottom: 2,
                    //                 ),
                    //                 decoration: BoxDecoration(
                    //                     borderRadius: BorderRadius.circular(30),
                    //                     color: _tabIndex == 1
                    //                         ? AppColors.white
                    //                         : AppColors.secondary),
                    //                 child: const Text("Directions"),
                    //               ),
                    //             ),
                    //           ],
                    //         ),
                    //       ),
                    //       SizedBox(
                    //         width: double.infinity,
                    //         height: Dimensions.h200 * 1.9,
                    //         child: TabBarView(
                    //           physics: const BouncingScrollPhysics(),
                    //           children: [
                    //             IngredientsListView(
                    //                 recipeObject: widget.recipeObject),
                    //             DirectionsListView(
                    //                 recipeObject: widget.recipeObject),
                    //           ],
                    //         ),
                    //       )
                    //     ],
                    //   ),
                    // ),
                    IngredientsListView(recipeObject: widget.recipeObject),
                    DirectionsListView(recipeObject: widget.recipeObject),
                    Reviews(),
                    SizedBox(height: Dimensions.h110),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: Dimensions.h10,
            child: Chip(
              backgroundColor: AppColors.primary,
              padding: EdgeInsets.all(Dimensions.w10),
              avatar: SvgPicture.asset(
                'assets/images/play-svgrepo-com.svg',
                color: AppColors.white,
              ),
              label: Text(
                'Watch Video',
                style: getRegularStyle(color: AppColors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
