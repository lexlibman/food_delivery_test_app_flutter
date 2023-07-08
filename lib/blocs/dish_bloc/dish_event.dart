part of 'dish_bloc.dart';

@freezed
class DishEvent with _$DishEvent {
  const factory DishEvent.fetch() = DishEventFetch;
  const factory DishEvent.filterByTeg({required String teg}) =
      DishEventFilterByTeg;
}
