import 'package:dartz/dartz.dart';
import 'package:food_delivery_test_app_flutter/core/error/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
