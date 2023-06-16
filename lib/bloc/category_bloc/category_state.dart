part of 'category_bloc.dart';

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.loading() = CategoryStateLoading;
  const factory CategoryState.loaded(
      {required List<Category> categoriesLoaded}) = CategoryStateLoaded;
  const factory CategoryState.error() = CategoryStateError;
}
