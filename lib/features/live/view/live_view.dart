import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:yummy_spot/constants/app_colors.dart';
import 'package:yummy_spot/constants/app_styles.dart';
import 'package:yummy_spot/constants/dimensions.dart';

class LiveView extends StatelessWidget {
  const LiveView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: NestedScrollView(
        floatHeaderSlivers: true,
        physics: const BouncingScrollPhysics(),
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            // pinned: true,
            floating: true,
            snap: true,
            centerTitle: true,
            toolbarHeight: Dimensions.h60,
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            leading: GestureDetector(
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: AppColors.black,
              ),
              onTap: () => Navigator.of(context).pop(),
            ),
            actions: [
              SvgPicture.asset(
                'assets/images/share-svgrepo-com.svg',
                height: Dimensions.h20,
                width: Dimensions.w20,
                color: AppColors.black,
              ),
              SizedBox(width: Dimensions.w20),
            ],
          ),
        ],
        // body: Center(),
        body: Column(
          children: [
            Expanded(
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: Dimensions.w10),
                child: Container(
                  height: Dimensions.h250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/live2.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [
                          AppColors.black.withOpacity(0.2),
                          AppColors.black.withOpacity(0.0),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.center,
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(top: Dimensions.h10),
                        child: Chip(
                          backgroundColor: AppColors.offWhite,
                          avatar: const CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/images/profile.jpg'),
                          ),
                          label: const Text('k.Almahamid'),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    width: Dimensions.screenWidth,
                    margin: EdgeInsets.only(
                        left: Dimensions.w15,
                        right: Dimensions.w5,
                        bottom: Dimensions.h20,
                        top: Dimensions.h15),
                    padding: EdgeInsets.symmetric(horizontal: Dimensions.w15),
                    decoration: BoxDecoration(
                      color: AppColors.secondary,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: TextField(
                      keyboardType: TextInputType.multiline,
                      maxLines: 5,
                      minLines: 1,
                      scrollPhysics: const BouncingScrollPhysics(),
                      style: getRegularStyle(color: AppColors.white),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.zero,
                        border: InputBorder.none,
                        hintText: 'Leave a comment',
                        hintStyle: getRegularStyle(
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      right: Dimensions.w15, bottom: Dimensions.h10),
                  padding: EdgeInsets.all(Dimensions.w10),
                  decoration: BoxDecoration(
                    color: AppColors.red,
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(
                    'assets/images/heart-svgrepo-com.svg',
                    color: AppColors.white,
                    height: Dimensions.h20,
                    width: Dimensions.w20,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
