import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yummy_spot/constants/app_colors.dart';
import 'package:yummy_spot/constants/app_styles.dart';
import 'package:yummy_spot/constants/dimensions.dart';
import 'package:yummy_spot/data/recipes_model2.dart';

class RecipesSearchView extends StatefulWidget {
  const RecipesSearchView({Key? key}) : super(key: key);

  @override
  State<RecipesSearchView> createState() => _RecipesSearchViewState();
}

class _RecipesSearchViewState extends State<RecipesSearchView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        physics: const BouncingScrollPhysics(),
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            //pinned: true,
            // floating: true,
            // snap: true,
            centerTitle: true,
            toolbarHeight: Dimensions.h40,
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: GestureDetector(
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: AppColors.black,
              ),
              onTap: () => Navigator.pop(context),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(Dimensions.h200),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'What to eat today?',
                        style: getSemiBoldStyle(
                          color: AppColors.black,
                          fontSize: 20,
                        ),
                      ),
                      Container(
                        width: Dimensions.screenWidth,
                        height: Dimensions.h40,
                        margin: EdgeInsets.symmetric(
                            horizontal: Dimensions.w20,
                            vertical: Dimensions.h20),
                        padding: EdgeInsets.only(
                            bottom: Dimensions.h5,
                            left: Dimensions.w15,
                            right: Dimensions.w15),
                        decoration: BoxDecoration(
                          color: AppColors.secondary,
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                style: getRegularStyle(color: AppColors.white),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Search recipe here',
                                  hintStyle: getRegularStyle(
                                    color: AppColors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: Dimensions.w10),
                            SvgPicture.asset(
                              'assets/images/Search Icon.svg',
                              color: AppColors.black,
                              height: Dimensions.h20,
                              width: Dimensions.w20,
                              fit: BoxFit.fill,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: Dimensions.w10),
                        child: Text(
                          'Recent searches',
                          style: getSemiBoldStyle(
                            color: AppColors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      ListView.builder(
                        padding:
                            EdgeInsets.symmetric(horizontal: Dimensions.w20),
                        primary: false,
                        shrinkWrap: true,
                        itemCount: 2,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(top: Dimensions.h10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Breakfast',
                                  style: getSemiBoldStyle(
                                    color: AppColors.black,
                                    fontSize: 16,
                                  ),
                                ),
                                const Icon(Icons.close)
                              ],
                            ),
                          );
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.only(
              left: Dimensions.w10,
              right: Dimensions.w10,
              top: Dimensions.h30,
              bottom: Dimensions.h30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Browse all',
                style: getSemiBoldStyle(
                  color: AppColors.grey,
                  fontSize: 16,
                ),
              ),
              GridView.builder(
                shrinkWrap: true,
                primary: false,
                padding: EdgeInsets.only(top: Dimensions.h10),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: Dimensions.w200,
                  childAspectRatio: 1.1,
                  crossAxisSpacing: Dimensions.w10,
                  mainAxisSpacing: Dimensions.w10,
                ),
                itemCount: recipesData.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(recipesData[index].image),
                        fit: BoxFit.fill,
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
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: Dimensions.h10),
                          child: Text(
                            recipesData[index].category,
                            style: getMediumStyle(
                              color: AppColors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
