import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:food_delivery_test_app_flutter/core/usecases/usecase.dart';
import '../../../core/error/failure.dart';
import '../entities/category_entity.dart';
import '../repositories/category_repository.dart';

class GetAllCategories extends UseCase<List<CategoryEntity>, CategoryParams> {
  final CategoryRepository categoryRepository;

  GetAllCategories(this.categoryRepository);

  @override
  Future<Either<Failure, List<CategoryEntity>>> call(
      CategoryParams params) async {
    return await categoryRepository.getAllCategories();
  }
}

class CategoryParams extends Equatable {
  @override
  List<Object?> get props => [];
}
