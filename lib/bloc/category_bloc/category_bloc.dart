import 'package:food_delivery_test_app_flutter/data/repositories/category_repo/category_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models/category/category.dart';

part 'category_bloc.freezed.dart';
part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  bool categoryChosen = false;
  final CategoryRepo categoryRepo;
  CategoryBloc({required this.categoryRepo})
      : super(const CategoryState.loading()) {
    on<CategoryEventFetch>(
      (event, emit) async {
        emit(const CategoryState.loading());

        try {
          List<Category> categoriesLoaded = await categoryRepo.getCategories();
          emit(CategoryState.loaded(categoriesLoaded: categoriesLoaded));
        } catch (_) {
          emit(const CategoryState.error());
        }
      },
    );
  }
}
