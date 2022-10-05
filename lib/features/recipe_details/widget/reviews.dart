import 'package:flutter/material.dart';
import 'package:yummy_spot/common_widgets/view_more_button.dart';
import 'package:yummy_spot/constants/app_colors.dart';
import 'package:yummy_spot/constants/app_styles.dart';
import 'package:yummy_spot/constants/dimensions.dart';

class Reviews extends StatelessWidget {
  const Reviews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  EdgeInsets.only(left: Dimensions.w10, bottom: Dimensions.h10),
              child: Text(
                'Reviews (7)',
                style: getSemiBoldStyle(
                  color: AppColors.black,
                  fontSize: 18,
                ),
              ),
            ),
            Divider(thickness: 1.2, color: AppColors.grey),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: List.generate(
                      5, (index) => const Icon(Icons.star_border)),
                ),
                Text(
                  'Tap to rate',
                  style: getSemiBoldStyle(
                    color: AppColors.black,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            Divider(thickness: 1.2, color: AppColors.grey),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.w10, vertical: Dimensions.h10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/profile.jpg'),
                          ),
                          SizedBox(width: Dimensions.w10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Khaled Almahamid',
                                style: getSemiBoldStyle(
                                  color: AppColors.black,
                                  fontSize: 14,
                                ),
                              ),
                              SizedBox(height: Dimensions.h5),
                              Text(
                                '1 week ago',
                                style: getSemiBoldStyle(
                                  color: AppColors.grey,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: List.generate(
                          5,
                          (index) => const Icon(
                            Icons.star,
                            color: Colors.deepOrange,
                            size: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: Dimensions.h10),
                  Text(
                    'I really like this! Easy I really like this! Easy I really like this! Easy I really like this! Easy I really like this! Easy I really like this! Easy I really like this! Easy I really like this! Easy I really like this! Easy I really like this! Easy ',
                    style: getSemiBoldStyle(
                      color: AppColors.offBlack,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        ViewMoreButton(
          text: '1 MORE REVIEW',
          onPress: () {},
        ),
      ],
    );
  }
}
