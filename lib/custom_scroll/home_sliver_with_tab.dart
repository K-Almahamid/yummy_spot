import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yummy_spot/constants/app_colors.dart';
import 'package:yummy_spot/constants/app_styles.dart';
import 'package:yummy_spot/constants/dimensions.dart';
import 'package:yummy_spot/custom_scroll/controller/controller.dart';
import 'package:yummy_spot/custom_scroll/widgets/background_sliver.dart';
import 'package:yummy_spot/custom_scroll/widgets/list_item_header_sliver.dart';
import 'package:yummy_spot/custom_scroll/widgets/my_header_title.dart';
import 'package:yummy_spot/custom_scroll/widgets/sliver_body_items.dart';
import 'package:yummy_spot/custom_scroll/widgets/sliver_header_data.dart';
import 'package:yummy_spot/features/home/controller/categories_controller.dart';

class HomeSliverWithTab extends StatefulWidget {
  const HomeSliverWithTab({Key? key}) : super(key: key);

  @override
  State<HomeSliverWithTab> createState() => _HomeSliverWithTabState();
}

class _HomeSliverWithTabState extends State<HomeSliverWithTab> {
  final bloc = SliverScrollController();
  final CategoriesController _categoriesController =
      Get.put(CategoriesController());

  @override
  void initState() {
    bloc.init();
    super.initState();
  }

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _categoriesController.getCategories(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return const Center(child: CircularProgressIndicator());
            default:
              if (snapshot.hasError) {
                return Center(
                    child: Text(
                  snapshot.error.toString(),
                  style: getMediumStyle(color: AppColors.black),
                ));
              } else {
                bloc.init();
                return Scrollbar(
                  radius: Radius.circular(Dimensions.w8),
                  notificationPredicate: (scroll) {
                    bloc.valueScroll.value = scroll.metrics.extentInside;
                    return true;
                  },
                  child: ValueListenableBuilder(
                      valueListenable: bloc.globalOffsetValue,
                      builder: (_, double valueCurrentScroll, __) {
                        return CustomScrollView(
                          controller: bloc.scrollControllerGlobally,
                          physics: const BouncingScrollPhysics(),
                          slivers: [
                            FlexibleSpaceBarHeader(
                              valueScroll: valueCurrentScroll,
                              bloc: bloc,
                            ),
                            SliverPersistentHeader(
                              pinned: true,
                              delegate: HeaderSliver(bloc: bloc),
                            ),
                            for (int i = 0;
                                i < bloc.listCategory.length;
                                i++) ...[
                              SliverPersistentHeader(
                                delegate: MyHeaderTitle(
                                  bloc.listCategory[i].name!,
                                  (visible) => bloc.refreshHeader(
                                    i,
                                    visible,
                                    lastIndex: i > 0 ? i - 1 : null,
                                  ),
                                ),
                              ),
                              SliverBodyItems(
                                  listItems: bloc.listCategory[i].recipes!),
                            ]
                          ],
                        );
                      }),
                );
              }
          }
        },
      ),
    );
  }
}

class FlexibleSpaceBarHeader extends StatelessWidget {
  final SliverScrollController bloc;
  final double valueScroll;

  const FlexibleSpaceBarHeader({
    Key? key,
    required this.valueScroll,
    required this.bloc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 250,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      stretch: true,
      pinned: valueScroll < 90 ? true : false,
      flexibleSpace: FlexibleSpaceBar(
        collapseMode: CollapseMode.pin,
        stretchModes: const [StretchMode.zoomBackground],
        background: Stack(
          fit: StackFit.expand,
          children: [
            const BackgroundSliver(),
            Positioned(
              right: Dimensions.w10,
              top: (Dimensions.screenHeight + Dimensions.h30) -
                  bloc.valueScroll.value,
              child: Icon(
                Icons.favorite,
                size: Dimensions.w30,
                color: AppColors.white,
              ),
            ),
            Positioned(
              left: Dimensions.w10,
              top: (Dimensions.screenHeight + Dimensions.h30) -
                  bloc.valueScroll.value,
              child: Icon(
                Icons.arrow_back_rounded,
                size: Dimensions.w30,
                color: AppColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

const _maxHeaderExtant = 100.0;

class HeaderSliver extends SliverPersistentHeaderDelegate {
  final SliverScrollController bloc;

  const HeaderSliver({required this.bloc});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final percent = shrinkOffset / _maxHeaderExtant;
    if (percent > 0.1) {
      bloc.visibleHeader.value = true;
    } else {
      bloc.visibleHeader.value = false;
    }
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: _maxHeaderExtant,
            color: AppColors.secondary,
            child: Column(
              children: [
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6.0),
                  child: Row(
                    children: [
                      AnimatedOpacity(
                          opacity: percent > 0.1 ? 1 : 0,
                          duration: const Duration(milliseconds: 300),
                          child: const Icon(Icons.arrow_back_rounded)),
                      AnimatedSlide(
                        offset: Offset(percent < 0.1 ? -0.18 : 0.1, 0),
                        curve: Curves.easeIn,
                        duration: const Duration(milliseconds: 300),
                        child: Text(
                          'Lavsoft sssss',
                          style: getRegularStyle(
                            color: AppColors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 6),
                Expanded(
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 400),
                    child: percent > 0.1
                        ? ListItemHeaderSliver(bloc: bloc)
                        : const SliverHeaderData(),
                  ),
                ),
              ],
            ),
          ),
        ),
        if (percent > 0.1)
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: percent > 0.1
                  ? Container(height: 0.5, color: AppColors.red)
                  : null,
            ),
          ),
      ],
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => _maxHeaderExtant;

  @override
  // TODO: implement minExtent
  double get minExtent => _maxHeaderExtant;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}
