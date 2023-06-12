import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:food_delivery_test_app_flutter/core/usecases/usecase.dart';
import 'package:food_delivery_test_app_flutter/feature/domain/repositories/dish_repository.dart';

import '../../../core/error/failure.dart';
import '../entities/dish_entity.dart';

class GetAllDishes extends UseCase<List<DishEntity>, TegDishParams> {
  final DishRepository dishRepository;

  GetAllDishes(this.dishRepository);

  @override
  Future<Either<Failure, List<DishEntity>>> call(TegDishParams params) async {
    return await dishRepository.getAllDishes();
  }
}

class TegDishParams extends Equatable {
  @override
  List<Object?> get props => [];
}
