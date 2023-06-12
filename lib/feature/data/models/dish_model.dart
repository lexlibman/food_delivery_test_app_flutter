import 'package:food_delivery_test_app_flutter/feature/domain/entities/dish_entity.dart';

class DishModel extends DishEntity {
  const DishModel({
    required super.id,
    required super.name,
    required super.price,
    required super.weight,
    required super.description,
    required super.imageURL,
    required super.tegs,
  });

  factory DishModel.fromJson(Map<String, dynamic> json) {
    return DishModel(
      id: json['id'],
      name: json['name'],
      price: json['price'],
      weight: json['weight'],
      description: json['description'],
      imageURL: json['image_url'],
      tegs: (json['tegs'] as List<dynamic>).map((t) => t as String).toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'weight': weight,
      'description': description,
      'image_url': imageURL,
      'tegs': tegs,
    };
  }
}
