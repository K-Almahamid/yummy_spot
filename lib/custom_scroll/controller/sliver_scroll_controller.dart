import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:yummy_spot/custom_scroll/model/my_header.dart';
import 'package:yummy_spot/data/category_model.dart';
import 'package:yummy_spot/features/home/controller/categories_controller.dart';

final CategoriesController _categoriesController =
    Get.put(CategoriesController());

class SliverScrollController {
  late List<CategoryModel> listCategory;
  List<double> listOffSetItemHeader = [];

  //Header notifier
  final headerNotifier = ValueNotifier<MyHeader?>(null);

  //Global offset value
  final globalOffsetValue = ValueNotifier<double>(0);

  //Inductor if we are going down or up in the application
  final goingDown = ValueNotifier<bool>(false);

  // Value to do the validations of the top icons
  final valueScroll = ValueNotifier<double>(0);

  //To move top items in sliver
  late ScrollController scrollControllerItemHeader;

  //To have overall of control scrolling
  late ScrollController scrollControllerGlobally;

  //Value that indicates if the header is visible
  final visibleHeader = ValueNotifier(false);

  void loadDataRandom() {
    _categoriesController.getCategories();
    listCategory = _categoriesController.categories;
    // final recipeTwo = [..._categoriesController.recipes];
    // recipeTwo.shuffle();
  }

  void init() {
    loadDataRandom();
    listOffSetItemHeader =
        List.generate(listCategory.length, (index) => index.toDouble());

    scrollControllerGlobally = ScrollController();
    scrollControllerItemHeader = ScrollController();
    scrollControllerGlobally.addListener(_listenToScrollChange);
    headerNotifier.addListener(_listenToHeaderNotifier);
    visibleHeader.addListener(_listenToVisibleHeader);
  }

  void dispose() {
    scrollControllerItemHeader.dispose();
    scrollControllerGlobally.dispose();
  }

  void _listenToScrollChange() {
    globalOffsetValue.value = scrollControllerGlobally.offset;
    if (scrollControllerGlobally.position.userScrollDirection ==
        ScrollDirection.reverse) {
      goingDown.value = true;
    } else {
      goingDown.value = false;
    }
  }

  void _listenToHeaderNotifier() {
    if (visibleHeader.value) {
      for (int i = 0; i < listCategory.length; i++) {
        _scrollAnimationHorizontal(index: i);
      }
    }
  }

  void _scrollAnimationHorizontal({required int index}) {
    if (headerNotifier.value?.index == index && headerNotifier.value!.visible) {
      scrollControllerItemHeader.animateTo(
        listOffSetItemHeader[headerNotifier.value!.index] - 15,
        duration: const Duration(milliseconds: 500),
        curve: goingDown.value ? Curves.bounceOut : Curves.fastOutSlowIn,
      );
    }
  }

  void _listenToVisibleHeader() {
    if (visibleHeader.value) {
      headerNotifier.value = const MyHeader(index: 0, visible: false);
    }
  }

  void refreshHeader(
    int index,
    bool visible, {
    int? lastIndex,
  }) {
    final headerValue = headerNotifier.value;
    final headerTitle = headerValue?.index ?? index;
    final headerVisible = headerValue?.visible ?? false;
    if (headerTitle != index || lastIndex != null || headerVisible != false) {
      Future.microtask(() {
        if (!visible && lastIndex != null) {
          headerNotifier.value = MyHeader(
            index: lastIndex,
            visible: true,
          );
        } else {
          headerNotifier.value = MyHeader(
            index: index,
            visible: visible,
          );
        }
      });
    }
  }
}
