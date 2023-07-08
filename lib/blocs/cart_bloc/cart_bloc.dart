import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../data/models/dish/dish.dart';

part 'cart_bloc.freezed.dart';
part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final Map<Dish, int> _cartItems = {};
  int _totalPrice = 0;

  get cartItems => _cartItems;
  get totalPrice => _totalPrice;

  CartBloc() : super(const CartState.isEmpty()) {
    on<CartEventAdd>(
      (event, emit) {
        if (!_cartItems.keys.contains(event.dish)) {
          try {
            _cartItems[event.dish] = 1;
            _getTotalPrice();
            emit(CartState.isNotEmpty(
              cartItems: _cartItems,
              totalPrice: _totalPrice,
            ));
          } catch (e) {
            throw Exception(e.toString());
          }
        }
        if (_cartItems.keys.contains(event.dish)) {
          try {
            CartEvent.incQuantity(dish: event.dish);
            _getTotalPrice();
            emit(CartState.isNotEmpty(
              cartItems: _cartItems,
              totalPrice: _totalPrice,
            ));
          } catch (e) {
            throw Exception(e.toString());
          }
        }
      },
    );
    on<CartEventIncQuantity>(
      (event, emit) {
        try {
          _cartItems[event.dish] = _cartItems[event.dish]! + 1;
        } catch (e) {
          throw Exception(e.toString());
        }
        _getTotalPrice();
        emit(CartState.isNotEmpty(
          cartItems: _cartItems,
          totalPrice: _totalPrice,
        ));
      },
    );
    on<CartEventDecQuantity>(
      (event, emit) {
        try {
          if (_cartItems[event.dish]! > 1) {
            _cartItems[event.dish] = _cartItems[event.dish]! - 1;
            _getTotalPrice();
            emit(CartState.isNotEmpty(
              cartItems: _cartItems,
              totalPrice: _totalPrice,
            ));
          } else {
            _cartItems.remove(event.dish);
            if (_cartItems.isEmpty) {
              emit(const CartState.isEmpty());
            } else {
              _getTotalPrice();
              emit(CartState.isNotEmpty(
                cartItems: _cartItems,
                totalPrice: _totalPrice,
              ));
            }
          }
        } catch (e) {
          throw Exception(e.toString());
        }
      },
    );
  }

  void _getTotalPrice() {
    int total = 0;
    if (_cartItems.isNotEmpty) {
      for (final dish in _cartItems.keys) {
        total += dish.price * _cartItems[dish]!;
      }
    }
    _totalPrice = total;
  }
}
