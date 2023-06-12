import 'package:equatable/equatable.dart';

class CategoryEntity extends Equatable {
  final int id;
  final String name;
  final String imageURL;

  const CategoryEntity({
    required this.id,
    required this.name,
    required this.imageURL,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        imageURL,
      ];
}
