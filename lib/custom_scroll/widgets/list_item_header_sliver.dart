import 'package:flutter/material.dart';
import 'package:yummy_spot/constants/app_colors.dart';
import 'package:yummy_spot/constants/app_styles.dart';
import 'package:yummy_spot/constants/dimensions.dart';
import 'package:yummy_spot/custom_scroll/controller/sliver_scroll_controller.dart';
import 'package:yummy_spot/custom_scroll/model/my_header.dart';
import 'package:yummy_spot/custom_scroll/widgets/get_box_offset.dart';

class ListItemHeaderSliver extends StatelessWidget {
  final SliverScrollController bloc;

  const ListItemHeaderSliver({Key? key, required this.bloc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final itemsOffsets = bloc.listOffSetItemHeader;
    return Padding(
      padding: EdgeInsets.only(left: Dimensions.w15),
      child: NotificationListener<ScrollNotification>(
        onNotification: (notification) => true,
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
              right: Dimensions.screenWidth -
                  (itemsOffsets[itemsOffsets.length - 1] -
                      itemsOffsets[itemsOffsets.length - 2])),
          controller: bloc.scrollControllerItemHeader,
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: ValueListenableBuilder(
              valueListenable: bloc.headerNotifier,
              builder: (_, MyHeader? snapshot, __) {
                return Row(
                  children: List.generate(
                    bloc.listCategory.length,
                    // _categoriesController.categories.length,
                    (index) => GetBoxOffSet(
                      offset: ((offset) => itemsOffsets[index] = offset.dx),
                      child: Container(
                        margin:
                            const EdgeInsets.only(top: 8, bottom: 8, right: 5),
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color:
                              index == snapshot!.index ? AppColors.black : null,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Text(
                          bloc.listCategory[index].name!,
                          style: getRegularStyle(
                            color: index == snapshot.index
                                ? AppColors.white
                                : AppColors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
