import 'dart:convert';

import 'package:food_delivery_test_app_flutter/core/error/exception.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/category_model.dart';

abstract class CategoryLocalDataSource {
  /// Gets the cached list of dishes wich was gotten the last time
  /// the user had an internet connection.
  ///
  /// Throws [CacheException] if no cached data is present.

  Future<List<CategoryModel>> getLastCategoriesFromCache();
  Future<void> categoriesToCache(List<CategoryModel> categories);
}

const cachedCategoriesList = 'CACHED_CATEGORIES_LIST';

class CategoryLocalDataSourceImpl implements CategoryLocalDataSource {
  final SharedPreferences sharedPreferences;

  CategoryLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<List<CategoryModel>> getLastCategoriesFromCache() {
    final jsonCategoriesList =
        sharedPreferences.getStringList(cachedCategoriesList);
    if (jsonCategoriesList != null && jsonCategoriesList.isNotEmpty) {
      return Future.value(jsonCategoriesList
          .map((category) => CategoryModel.fromJson(json.decode(category)))
          .toList());
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> categoriesToCache(List<CategoryModel> categories) {
    final List<String> jsonCategoriesList =
        categories.map((category) => json.encode(category.toJson())).toList();
    sharedPreferences.setStringList(cachedCategoriesList, jsonCategoriesList);
    return Future.value();
  }
}
