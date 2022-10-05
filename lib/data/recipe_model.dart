import 'package:yummy_spot/data/ingredient_model.dart';
import 'package:yummy_spot/data/review_model.dart';

class RecipeModel {
  int? id;
  List<IngredientModel>? ingredients;
  List<ReviewModel>? reviews;
  String? name;
  String? description;
  bool? isTrend;
  String? level;
  String? time;
  String? servings;
  int? viewCount;
  String? imageOne;
  String? imageTwo;
  String? imageThree;
  String? created;

  RecipeModel({
    this.id,
    this.ingredients,
    this.reviews,
    this.name,
    this.description,
    this.isTrend,
    this.level,
    this.time,
    this.servings,
    this.viewCount,
    this.imageOne,
    this.imageTwo,
    this.imageThree,
    this.created,
  });

  RecipeModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    if (json['ingredients'] != null) {
      ingredients = <IngredientModel>[];
      json['ingredients'].forEach((v) {
        ingredients!.add(IngredientModel.fromJson(v));
      });
    }
    if (json['reviews'] != null) {
      reviews = <ReviewModel>[];
      json['reviews'].forEach((v) {
        reviews!.add(ReviewModel.fromJson(v));
      });
    }
    name = json['name'];
    description = json['description'];
    isTrend = json['is_trend'];
    level = json['level'];
    time = json['time'];
    servings = json['servings'];
    viewCount = json['view_count'];
    imageOne = json['image_one'];
    imageTwo = json['image_two'];
    imageThree = json['image_three'];
    created = json['created'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    if (ingredients != null) {
      data['ingredients'] = ingredients!.map((v) => v.toJson()).toList();
    }
    if (reviews != null) {
      data['reviews'] = reviews!.map((v) => v.toJson()).toList();
    }
    data['name'] = name;
    data['description'] = description;
    data['is_trend'] = isTrend;
    data['level'] = level;
    data['time'] = time;
    data['servings'] = servings;
    data['view_count'] = viewCount;
    data['image_one'] = imageOne;
    data['image_two'] = imageTwo;
    data['image_three'] = imageThree;
    data['created'] = created;
    return data;
  }
}
