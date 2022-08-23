import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:yummy_spot/constants/app_colors.dart';

class RecipesView extends StatefulWidget {
  const RecipesView({Key? key}) : super(key: key);

  @override
  State<RecipesView> createState() => _RecipesViewState();
}

class _RecipesViewState extends State<RecipesView> {
  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
      backgroundColor: AppColors.red,
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
