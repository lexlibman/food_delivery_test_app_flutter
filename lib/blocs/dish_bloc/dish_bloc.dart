import 'package:food_delivery_test_app_flutter/data/repositories/dish_repo/dish_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/dish/dish.dart';

part 'dish_bloc.freezed.dart';
part 'dish_event.dart';
part 'dish_state.dart';

class DishBloc extends Bloc<DishEvent, DishState> {
  final DishRepo dishRepo;
  final Set<String> _uniqueTegs = {};
  List<Dish> _dishesLoaded = [];
  String _chosenTeg = 'Все меню';

  get tegs => _uniqueTegs.toList();
  get teg => _chosenTeg;

  DishBloc({required this.dishRepo}) : super(const DishState.loading()) {
    on<DishEventFetch>(
      (event, emit) async {
        emit(const DishState.loading());

        try {
          _dishesLoaded = await dishRepo.getDishes();

          // Collect tegs
          for (Dish dish in _dishesLoaded) {
            for (String teg in dish.tegs) {
              _uniqueTegs.add(teg);
            }
          }

          emit(DishState.loaded(
              dishesLoaded: _dishesLoaded
                  .where((dish) => dish.tegs.contains(_chosenTeg))
                  .toList()));
        } catch (_) {
          emit(const DishState.error());
        }
      },
    );
    on<DishEventFilterByTeg>((event, emit) {
      try {
        _chosenTeg = event.teg;

        emit(DishState.loaded(
            dishesLoaded: _dishesLoaded
                .where((dish) => dish.tegs.contains(_chosenTeg))
                .toList()));
      } catch (_) {
        emit(const DishState.error());
      }
    });
  }
}
