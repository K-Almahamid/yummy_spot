import 'package:get/get.dart';
import 'package:yummy_spot/data/category_model.dart';
import 'package:yummy_spot/data/recipe_model.dart';
import 'package:yummy_spot/features/home/api/categories_api.dart';

class CategoriesController extends GetxController {
  RxList<CategoryModel> categories = <CategoryModel>[].obs;
  RxList<RecipeModel> recipes = <RecipeModel>[].obs;

  RxBool isScrolling = true.obs;

  Future<void> getCategories() async {
    categories.assignAll(await getCategoriesData());
    recipes.assignAll(await getRecipesData());
    recipes.shuffle();
  }
}
