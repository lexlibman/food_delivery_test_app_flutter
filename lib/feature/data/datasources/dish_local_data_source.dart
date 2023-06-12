import 'dart:convert';

import 'package:food_delivery_test_app_flutter/core/error/exception.dart';
import 'package:food_delivery_test_app_flutter/feature/data/models/dish_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class DishLocalDataSource {
  /// Gets the cached list of dishes wich was gotten the last time
  /// the user had an internet connection.
  ///
  /// Throws [CacheException] if no cached data is present.

  Future<List<DishModel>> getLastDishesFromCache();
  Future<void> dishesToCache(List<DishModel> dishes);
}

const cachedDishesList = 'CACHED_DISHES_LIST';

class DishLocalDataSourceImpl implements DishLocalDataSource {
  final SharedPreferences sharedPreferences;

  DishLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<List<DishModel>> getLastDishesFromCache() {
    final jsonDishesList = sharedPreferences.getStringList(cachedDishesList);
    if (jsonDishesList != null && jsonDishesList.isNotEmpty) {
      return Future.value(jsonDishesList
          .map((dish) => DishModel.fromJson(json.decode(dish)))
          .toList());
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> dishesToCache(List<DishModel> dishes) {
    final List<String> jsonDishesList =
        dishes.map((dish) => json.encode(dish.toJson())).toList();
    sharedPreferences.setStringList(cachedDishesList, jsonDishesList);
    return Future.value();
  }
}
