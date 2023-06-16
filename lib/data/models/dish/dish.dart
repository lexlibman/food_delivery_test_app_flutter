import 'package:freezed_annotation/freezed_annotation.dart';

part 'dish.freezed.dart';
part 'dish.g.dart';

@freezed
class Dish with _$Dish {
  const factory Dish({
    required int id,
    required String name,
    required int price,
    required int weight,
    required String description,
    required String imageURL,
    required List<String> tegs,
  }) = _Dish;

  factory Dish.fromJson(dynamic json) => _$DishFromJson(json);
}
