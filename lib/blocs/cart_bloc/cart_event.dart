part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.add({required Dish dish}) = CartEventAdd;
  const factory CartEvent.incQuantity({required Dish dish}) =
      CartEventIncQuantity;
  const factory CartEvent.decQuantity({required Dish dish}) =
      CartEventDecQuantity;
  const factory CartEvent.remove({required Dish dish}) = CartEventRemove;
}
