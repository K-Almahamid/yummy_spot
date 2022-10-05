class IngredientModel {
  int? id;
  String? name;
  int? quantity;
  String? type;

  IngredientModel({
    this.id,
    this.name,
    this.quantity,
    this.type,
  });

  IngredientModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    quantity = json['quantity'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['quantity'] = quantity;
    data['type'] = type;
    return data;
  }
}
