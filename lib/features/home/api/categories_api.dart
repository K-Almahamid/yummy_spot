import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:yummy_spot/constants/constant_endpoints.dart';
import 'package:yummy_spot/data/base_client.dart';
import 'package:yummy_spot/data/category_model.dart';
import 'package:yummy_spot/data/recipe_model.dart';

Future<List<CategoryModel>> getCategoriesData() async {
  List<CategoryModel> categories = [];
  var response = await BaseClientClass()
      .getData(AppEndPoints.baseUrl + AppEndPoints.categories);

  if (response.statusCode == 200) {
    List res = json.decode(response.body);
    for (var category in res) {
      categories.add(CategoryModel.fromJson(category));
    }
    debugPrint('get data');
    debugPrint(response.body.toString());

    return categories;
  } else {
    return [];
  }
}

Future<List<RecipeModel>> getRecipesData() async {
  List<RecipeModel> recipes = [];
  var response = await BaseClientClass()
      .getData(AppEndPoints.baseUrl + AppEndPoints.recipes);

  if (response.statusCode == 200) {
    List res = json.decode(response.body);
    for (var recipe in res) {
      recipes.add(RecipeModel.fromJson(recipe));
    }
    debugPrint('get data');
    debugPrint(response.body.toString());
    return recipes;
  } else {
    return [];
  }
}
