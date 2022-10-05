import 'package:flutter/material.dart';
import 'package:yummy_spot/constants/app_colors.dart';
import 'package:yummy_spot/constants/app_styles.dart';
import 'package:yummy_spot/constants/dimensions.dart';
import 'package:yummy_spot/data/recipes_model2.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double top = 220 - 60;
    return NestedScrollView(
      physics: const BouncingScrollPhysics(),
      floatHeaderSlivers: true,
      headerSliverBuilder: (context, innerBoxIsScrolled) => [
        SliverAppBar(
          pinned: true,
          // floating: true,
          // snap: true,
          centerTitle: true,
          toolbarHeight: Dimensions.h80,
          leadingWidth: 0.0,
          backgroundColor: AppColors.white,
          elevation: 0.0,
          automaticallyImplyLeading: false,
          title: Text(
            'My profile',
            style: getMediumStyle(
              color: AppColors.black,
              fontSize: 16,
            ),
          ),
          actions: [
            GestureDetector(
              child: const Icon(
                Icons.more_horiz_rounded,
              ),
              onTap: () => null,
            ),
            SizedBox(width: Dimensions.w20),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(Dimensions.h200 * 1.1),
            child: Card(
              color: AppColors.white,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
              ),
              margin: EdgeInsets.zero,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: Dimensions.h10, bottom: Dimensions.h15),
                    child: CircleAvatar(
                      radius: Dimensions.h40,
                      backgroundImage: const AssetImage(
                        'assets/images/profile.jpg',
                      ),
                    ),
                  ),
                  Text(
                    'Khaled Waled',
                    style: getSemiBoldStyle(
                      color: AppColors.black,
                      fontSize: 20,
                    ).copyWith(letterSpacing: -1.0),
                  ),
                  SizedBox(height: Dimensions.h10),
                  Text(
                    'Hello world I am khaled Almahamid',
                    style: getRegularStyle(
                      color: AppColors.grey,
                      fontSize: 16,
                    ).copyWith(letterSpacing: -1.0),
                  ),
                  SizedBox(height: Dimensions.h20),
                  SizedBox(
                    width: Dimensions.screenWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              '10',
                              style: getBoldStyle(
                                color: AppColors.black,
                                fontSize: 18,
                              ).copyWith(letterSpacing: -1.0),
                            ),
                            SizedBox(height: Dimensions.h5),
                            Text(
                              'Recipes',
                              style: getMediumStyle(
                                color: AppColors.grey,
                                fontSize: 18,
                              ).copyWith(letterSpacing: -1.0),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '10.5k',
                              style: getBoldStyle(
                                color: AppColors.black,
                                fontSize: 18,
                              ).copyWith(letterSpacing: -1.0),
                            ),
                            SizedBox(height: Dimensions.h5),
                            Text(
                              'Followers',
                              style: getMediumStyle(
                                color: AppColors.grey,
                                fontSize: 18,
                              ).copyWith(letterSpacing: -1.0),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '30',
                              style: getBoldStyle(
                                color: AppColors.black,
                                fontSize: 18,
                              ).copyWith(letterSpacing: -1.0),
                            ),
                            SizedBox(height: Dimensions.h5),
                            Text(
                              'Following',
                              style: getMediumStyle(
                                color: AppColors.grey,
                                fontSize: 18,
                              ).copyWith(letterSpacing: -1.0),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: Dimensions.h20),
                ],
              ),
            ),
          ),
        )
      ],
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GridView.builder(
              shrinkWrap: true,
              primary: false,
              padding: EdgeInsets.symmetric(
                  vertical: Dimensions.h20, horizontal: Dimensions.w10),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: Dimensions.w200,
                childAspectRatio: 0.9,
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
                      fit: BoxFit.cover,
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
    );
  }
}
