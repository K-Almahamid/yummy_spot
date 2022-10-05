class ReviewModel {
  int? id;
  int? rating;
  String? description;
  bool? active;
  String? created;
  String? updated;
  int? recipe;

  ReviewModel({
    this.id,
    this.rating,
    this.description,
    this.active,
    this.created,
    this.updated,
    this.recipe,
  });

  ReviewModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    rating = json['rating'];
    description = json['description'];
    active = json['active'];
    created = json['created'];
    updated = json['updated'];
    recipe = json['recipe'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['rating'] = rating;
    data['description'] = description;
    data['active'] = active;
    data['created'] = created;
    data['updated'] = updated;
    data['recipe'] = recipe;
    return data;
  }
}
