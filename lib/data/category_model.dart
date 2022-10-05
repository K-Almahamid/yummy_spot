import 'package:yummy_spot/data/recipe_model.dart';

class CategoryModel {
  int? id;
  List<RecipeModel>? recipes;
  String? name;
  String? description;
  bool? isTrend;
  int? viewCount;
  String? imageOne;
  String? imageTwo;
  String? imageThree;
  String? created;

  CategoryModel({
    this.id,
    this.recipes,
    this.name,
    this.description,
    this.isTrend,
    this.viewCount,
    this.imageOne,
    this.imageTwo,
    this.imageThree,
    this.created,
  });

  CategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    if (json['recipes'] != null) {
      recipes = <RecipeModel>[];
      json['recipes'].forEach((v) {
        recipes!.add(RecipeModel.fromJson(v));
      });
    }
    name = json['name'];
    description = json['description'];
    isTrend = json['is_trend'];
    viewCount = json['view_count'];
    imageOne = json['image_one'];
    imageTwo = json['image_two'];
    imageThree = json['image_three'];
    created = json['created'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (recipes != null) {
      data['recipes'] = recipes!.map((v) => v.toJson()).toList();
    }
    data['name'] = name;
    data['description'] = description;
    data['is_trend'] = isTrend;
    data['view_count'] = viewCount;
    data['image_one'] = imageOne;
    data['image_two'] = imageTwo;
    data['image_three'] = imageThree;
    data['created'] = created;
    return data;
  }
}
