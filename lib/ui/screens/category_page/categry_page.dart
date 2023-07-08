import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_test_app_flutter/blocs/dish_bloc/dish_bloc.dart';
import 'package:food_delivery_test_app_flutter/ui/screens/category_page/widgets/dish_grid.dart';
import 'package:food_delivery_test_app_flutter/ui/screens/category_page/widgets/teg_row.dart';

import '../../../common/app_colors.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key, required this.categoryName});

  final String categoryName;

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  int chosenTegIndex = 0;

  @override
  Widget build(BuildContext context) {
    final dishBloc = context.watch<DishBloc>();
    return dishBloc.state.when(
        loading: () {
          dishBloc.add(const DishEvent.fetch());
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
        loaded: (dishesLoaded) {
          return Scaffold(
            appBar: AppBar(
              foregroundColor: Colors.black,
              actions: const [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww&w=1000&q=80'),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
              centerTitle: true,
              title: Text(
                widget.categoryName,
                style: const TextStyle(color: Colors.black),
              ),
              backgroundColor: AppColors.mainBackground,
              elevation: 0,
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: TegRow(
                    dishBloc: dishBloc,
                  ),
                ),
                Flexible(
                  flex: 12,
                  child: DishGrid(
                    dishes: dishesLoaded,
                  ),
                ),
              ],
            ),
          );
        },
        error: () => const Text('Отсутствует подключение к сети интернет'));
  }
}
