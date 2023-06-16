import 'dart:convert';

import 'package:food_delivery_test_app_flutter/data/models/dish/dish.dart';
import 'package:http/http.dart' as http;

class DishRepo {
  final url = 'https://run.mocky.io/v3/aba7ecaa-0a70-453b-b62d-0e326c859b3b#';

  Future<List<Dish>> getDishes() async {
    try {
      var response = await http.get(Uri.parse(url));
      var dishesJson = await json.decode(response.body)['dishes'] as List;

      List<Dish> dishes = dishesJson
          .map((dish) => Dish(
              id: dish['id'],
              name: dish['name'],
              price: dish['price'],
              weight: dish['weight'],
              description: dish['description'],
              imageURL: dish['image_url'],
              tegs: dish['tegs'].cast<String>()))
          .toList();

      return dishes;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
