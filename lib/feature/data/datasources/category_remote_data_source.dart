import 'dart:convert';

import 'package:food_delivery_test_app_flutter/feature/data/models/category_model.dart';

import '../../../core/error/exception.dart';
import 'package:http/http.dart' as http;

abstract class CategoryRemoteDataSource {
  /// Calls the https://run.mocky.io/v3/058729bd-1402-4578-88de-265481fd7d54 endpoint.
  ///
  /// Throws a [ServerException] for all error codes.
  Future<List<CategoryModel>> getAllCategories();
}

class CategoryRemoteDataSourceImpl implements CategoryRemoteDataSource {
  final http.Client client;

  CategoryRemoteDataSourceImpl({required this.client});
  @override
  Future<List<CategoryModel>> getAllCategories() async {
    final response = await client.get(Uri.parse(
        'https://run.mocky.io/v3/058729bd-1402-4578-88de-265481fd7d54'));
    if (response.statusCode == 200) {
      final categories = json.decode(response.body);
      return (categories['categories'] as List)
          .map((category) => CategoryModel.fromJson(category))
          .toList();
    } else {
      throw ServerException();
    }
  }
}
