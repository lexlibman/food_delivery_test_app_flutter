import 'dart:convert';

import 'package:food_delivery_test_app_flutter/data/models/category/category.dart';
import 'package:http/http.dart' as http;

class CategoryRepo {
  final url = 'https://run.mocky.io/v3/058729bd-1402-4578-88de-265481fd7d54#';

  Future<List<Category>> getCategories() async {
    try {
      var response = await http.get(Uri.parse(url));
      var categoriesJson =
          await json.decode(response.body)['сategories'] as List;

      List<Category> categories = categoriesJson
          .map((category) => Category(
                id: category['id'],
                name: category['name'],
                imageURL: category['image_url'],
              ))
          .toList();

      return categories;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
