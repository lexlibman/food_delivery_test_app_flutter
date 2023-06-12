import 'package:dartz/dartz.dart';
import 'package:food_delivery_test_app_flutter/core/error/exception.dart';
import 'package:food_delivery_test_app_flutter/core/error/failure.dart';
import 'package:food_delivery_test_app_flutter/core/platform/network_info.dart';
import 'package:food_delivery_test_app_flutter/feature/data/datasources/dish_local_data_source.dart';
import 'package:food_delivery_test_app_flutter/feature/data/datasources/dish_remote_data_source.dart';
import 'package:food_delivery_test_app_flutter/feature/domain/entities/dish_entity.dart';
import 'package:food_delivery_test_app_flutter/feature/domain/repositories/dish_repository.dart';

class DishRepositoryImpl implements DishRepository {
  final DishRemoteDataSource remoteDataSource;
  final DishLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  DishRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<DishEntity>>> getAllDishes() async {
    if (await networkInfo.isConnected) {
      try {
        final remoteDishes = await remoteDataSource.getAllDishes();
        localDataSource.dishesToCache(remoteDishes);
        return Right(remoteDishes);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localCachedDishes =
            await localDataSource.getLastDishesFromCache();
        return Right(localCachedDishes);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }
}
