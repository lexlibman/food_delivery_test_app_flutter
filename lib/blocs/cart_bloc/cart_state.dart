part of 'cart_bloc.dart';

@freezed
class CartState with _$CartState {
  const factory CartState.isEmpty() = CartStateEmpty;
  const factory CartState.isNotEmpty({
    required Map<Dish, int> cartItems,
    required int totalPrice,
  }) = CartStateNotEmpty;
}
