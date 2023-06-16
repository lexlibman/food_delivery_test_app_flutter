import 'dart:async';
import 'package:equatable/equatable.dart';

import '../../data/models/dish/dish.dart';

class CartBloc extends Equatable {
  final cartStreamController = StreamController.broadcast();

  Stream get getCartStream => cartStreamController.stream;

  final Map<String, int> cartItems = {};

  final List<Dish> cartDishes = [];

  void addToCart(item) {
    if (!cartDishes.contains(item)) {
      try {
        cartDishes.add(item);
      } catch (e) {
        throw Exception(e.toString());
      }
    }
    if (cartItems.keys.contains(item.name)) {
      try {
        cartItems[item.name] = cartItems[item.name]! + 1;
      } catch (e) {
        throw Exception(e.toString());
      }
    } else {
      try {
        cartItems[item.name] = 1;
      } catch (e) {
        throw Exception();
      }
    }
    cartStreamController.sink.add(cartItems);
  }

  void decreaseItemQuantity(item) {
    try {
      if (cartItems[item.name]! > 1) {
        cartItems[item.name] = cartItems[item.name]! - 1;
      } else {
        removeFromCart(item);
      }
    } catch (e) {
      throw Exception(e.toString());
    }
    cartStreamController.sink.add(cartItems);
  }

  void increaseItemQuantity(item) {
    try {
      cartItems[item.name] = cartItems[item.name]! + 1;
    } catch (e) {
      throw Exception(e.toString());
    }
    cartStreamController.sink.add(cartItems);
  }

  void removeFromCart(item) {
    try {
      cartItems.remove(item.name);
    } catch (e) {
      throw Exception(e.toString());
    }
    try {
      cartDishes.remove(item);
    } catch (e) {
      throw Exception(e.toString());
    }
    cartStreamController.sink.add(cartItems);
  }

  void dispose() {
    cartStreamController.close();
  }

  @override
  List<Object?> get props => [cartDishes];
}

final cartBloc = CartBloc();
