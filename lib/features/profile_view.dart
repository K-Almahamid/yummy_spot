import 'package:flutter/material.dart';
import 'package:yummy_spot/constants/app_colors.dart';
import 'package:yummy_spot/constants/app_styles.dart';
import 'package:yummy_spot/constants/dimensions.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double top = 220 - 60;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(60),
            bottomLeft: Radius.circular(60),
          ),
          child: Image.asset(
            'assets/images/live.jpg',
            width: Dimensions.screenWidth,
            height: 220,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: top,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: AppColors.offWhite,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                  child: Image.asset(
                    'assets/images/profile.jpg',
                    height: 80,
                    width: 80,
                  ),
                ),
              ),
              Text(
                'Khaled Waled',
                style: getSemiBoldStyle(
                  color: AppColors.black,
                  fontSize: 25,
                ).copyWith(letterSpacing: -1.0),
              ),
              SizedBox(height: Dimensions.h10),
              Text(
                '@blueSKey',
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
              SizedBox(
                height: Dimensions.screenHeight,
                width: Dimensions.screenWidth,
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 100,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: 10,
                    itemBuilder: (BuildContext ctx, index) {
                      return Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(15)),
                        child: Text(index.toString()),
                      );
                    }),
              ),
            ],
          ),
        )
      ],
    );
  }
}
