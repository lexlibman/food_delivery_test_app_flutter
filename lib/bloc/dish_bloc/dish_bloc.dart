import 'package:food_delivery_test_app_flutter/data/repositories/dish_repo/dish_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/dish/dish.dart';

part 'dish_bloc.freezed.dart';
part 'dish_event.dart';
part 'dish_state.dart';

class DishBloc extends Bloc<DishEvent, DishState> {
  final DishRepo dishRepo;
  DishBloc({required this.dishRepo}) : super(const DishState.loading()) {
    on<DishEventFetch>(
      (event, emit) async {
        emit(const DishState.loading());

        try {
          List<Dish> dishesLoaded = await dishRepo.getDishes();
          emit(DishState.loaded(dishesLoaded: dishesLoaded));
        } catch (_) {
          emit(const DishState.error());
        }
      },
    );
  }
}
