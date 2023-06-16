part of 'dish_bloc.dart';

@freezed
class DishState with _$DishState {
  const factory DishState.loading() = DishStateLoading;
  const factory DishState.loaded({required List<Dish> dishesLoaded}) =
      DishStateLoaded;
  const factory DishState.error() = DishStateError;
}
