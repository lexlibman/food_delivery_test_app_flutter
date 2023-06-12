import 'package:dartz/dartz.dart';
import 'package:food_delivery_test_app_flutter/feature/domain/entities/dish_entity.dart';

import '../../../core/error/failure.dart';

abstract class DishRepository {
  Future<Either<Failure, List<DishEntity>>> getAllDishes();
}
