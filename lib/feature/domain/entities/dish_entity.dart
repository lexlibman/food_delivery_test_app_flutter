import 'package:equatable/equatable.dart';

class DishEntity extends Equatable {
  final int id;
  final String name;
  final double price;
  final int weight;
  final String description;
  final String imageURL;
  final List<String> tegs;

  const DishEntity({
    required this.id,
    required this.name,
    required this.price,
    required this.weight,
    required this.description,
    required this.imageURL,
    required this.tegs,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        price,
        weight,
        description,
        imageURL,
        tegs,
      ];
}
