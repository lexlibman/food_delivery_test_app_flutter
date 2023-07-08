import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_test_app_flutter/common/app_colors.dart';

import '../../../../blocs/category_bloc/category_bloc.dart';
import '../widgets/main_app_bar.dart';

class MainTab extends StatelessWidget {
  const MainTab({super.key});

  // Loads list of categories.

  @override
  Widget build(BuildContext context) {
    final bloc = context.watch<CategoryBloc>();
    return bloc.state.when(
        loading: () {
          bloc.add(const CategoryEvent.fetch());
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
        loaded: (categoryLoaded) {
          return Scaffold(
            appBar: const MainAppBar(),
            body: ListView.separated(
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
                    Navigator.pushNamed(context, 'category',
                        arguments: category);
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
            ),
          );
        },
        error: () => const Text('Отсутствует подключение к сети интернет'));
  }
}
