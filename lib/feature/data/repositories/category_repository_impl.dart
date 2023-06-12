import 'package:dartz/dartz.dart';
import 'package:food_delivery_test_app_flutter/core/error/exception.dart';
import 'package:food_delivery_test_app_flutter/core/error/failure.dart';
import 'package:food_delivery_test_app_flutter/core/platform/network_info.dart';
import 'package:food_delivery_test_app_flutter/feature/domain/repositories/category_repository.dart';

import '../../domain/entities/category_entity.dart';
import '../datasources/category_local_data_source.dart';
import '../datasources/category_remote_data_source.dart';

class CategoryRepositoryImpl implements CategoryRepository {
  final CategoryRemoteDataSource remoteDataSource;
  final CategoryLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  CategoryRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<CategoryEntity>>> getAllCategories() async {
    if (await networkInfo.isConnected) {
      try {
        final remoteCategories = await remoteDataSource.getAllCategories();
        localDataSource.categoriesToCache(remoteCategories);
        return Right(remoteCategories);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localCachedCategories =
            await localDataSource.getLastCategoriesFromCache();
        return Right(localCachedCategories);
      } on CacheException {
        return Left(CacheFailure());
      }
    }
  }
}
