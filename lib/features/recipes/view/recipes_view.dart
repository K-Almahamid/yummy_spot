import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;
import 'package:yummy_spot/constants/app_colors.dart';
import 'package:yummy_spot/constants/app_styles.dart';
import 'package:yummy_spot/constants/dimensions.dart';
import 'package:yummy_spot/data/recipes_model.dart';
import 'package:yummy_spot/features/recipes/widget/recipes_live_card_widget.dart';
import 'package:yummy_spot/features/recipes/widget/recipes_tabs_widget.dart';

class RecipesView extends StatefulWidget {
  const RecipesView({Key? key}) : super(key: key);

  @override
  State<RecipesView> createState() => _RecipesViewState();
}

class _RecipesViewState extends State<RecipesView>
    with TickerProviderStateMixin {
  late TabController _tabController;

  final int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        vsync: this, length: recipesData.length, initialIndex: _selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
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
          leading: Icon(
            Icons.arrow_back_ios_new_rounded,
            color: AppColors.black,
          ),
          title: Text(
            'Recipes',
            style: getMediumStyle(
              color: AppColors.black,
              fontSize: 18,
            ),
          ),
          actions: [
            SvgPicture.asset(
              'assets/images/filter-svgrepo-com.svg',
              color: AppColors.black,
            ),
            SizedBox(width: Dimensions.w20),
          ],
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(Dimensions.h60),
            child: RecipesTabsWidget(
              tabController: _tabController,
              selectedIndex: _selectedIndex,
            ),
          ),
        ),
      ],
      // body: Center(),
      body: RecipesListWidget(tabController: _tabController),
    );
  }
}

Future getData() async {
  Uri url = Uri.parse(
      'https://api.nal.usda.gov/fdc/v1/foods/search?query=apple&pageSize=2&api_key=4Yd5qNUqXgElFl8rVC6CKQjY1NLNcN8Ge0vpQrzo');

  try {
    http.Response response = await http.get(
      url,
    );
    print(response.body);
  } catch (error) {
    print('this catch error in home_banners_api-->$error');
    return;
  }
}
