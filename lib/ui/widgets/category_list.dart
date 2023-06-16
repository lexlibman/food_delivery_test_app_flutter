import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_test_app_flutter/common/app_colors.dart';
import 'package:go_router/go_router.dart';

import '../../bloc/category_bloc/category_bloc.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  void initState() {
    context.read<CategoryBloc>().add(const CategoryEvent.fetch());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<CategoryBloc>().state;
    return state.when(
        loading: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
        loaded: (categoryLoaded) {
          return ListView.separated(
            padding: const EdgeInsets.all(20),
            itemCount: categoryLoaded.length,
            separatorBuilder: (_, index) => const SizedBox(
              height: 8,
            ),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final category = categoryLoaded[index];
              return GestureDetector(
                onTap: () {
                  context.push('/category', extra: category.name);
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.categoryColors[index],
                  ),
                  height: 170,
                  child: Stack(children: [
                    Image.network(
                      category.imageURL,
                      height: 170,
                    ),
                    ListTile(
                      title: Text(
                        category.name,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ]),
                ),
              );
            },
          );
        },
        error: () => const Text('Отсутствует подключение к сети интернет'));
  }
}
