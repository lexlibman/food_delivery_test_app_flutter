import 'package:dartz/dartz.dart';
import 'package:food_delivery_test_app_flutter/feature/domain/entities/category_entity.dart';

import '../../../core/error/failure.dart';

abstract class CategoryRepository {
  Future<Either<Failure, List<CategoryEntity>>> getAllCategories();
}
