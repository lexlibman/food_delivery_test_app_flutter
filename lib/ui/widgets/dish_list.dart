import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_test_app_flutter/bloc/dish_bloc/dish_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../common/app_colors.dart';
import '../../data/models/dish/dish.dart';
import '../../bloc/cart_bloc/cart_bloc.dart';

class DishList extends StatefulWidget {
  const DishList({super.key});

  @override
  State<DishList> createState() => _DishListState();
}

class _DishListState extends State<DishList> {
  @override
  void initState() {
    context.read<DishBloc>().add(const DishEvent.fetch());
    super.initState();
  }

  int chosenTegIndex = 0;
  List<Dish> filteredDishes = [];

  @override
  Widget build(BuildContext context) {
    final state = context.watch<DishBloc>().state;
    return state.when(
        loading: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
        loaded: (dishesLoaded) {
          Set<String> uniqueTegs = {};
          for (var d = 0; d < dishesLoaded.length; d++) {
            var dish = dishesLoaded[d];
            for (var i = 0; i < dish.tegs.length; i++) {
              uniqueTegs.add(dish.tegs[i]);
            }
          }
          List<String> uniqueListOfTegs = uniqueTegs.toList();
          setState(() {
            filteredDishes = dishesLoaded
                .where((dish) =>
                    dish.tegs.contains(uniqueListOfTegs[chosenTegIndex]))
                .toList();
          });

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                flex: 1,
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, top: 10, bottom: 5),
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: uniqueListOfTegs.length,
                    separatorBuilder: (_, index) => const SizedBox(
                      width: 10,
                    ),
                    itemBuilder: (context, index) {
                      final teg = uniqueListOfTegs[index];
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            chosenTegIndex = index;
                          });
                        },
                        child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: index == chosenTegIndex
                                  ? AppColors.appAccentColor
                                  : AppColors.cellBackground,
                            ),
                            height: 170,
                            child: Center(
                              child: Text(
                                teg,
                                style: TextStyle(
                                  color: index == chosenTegIndex
                                      ? AppColors.mainBackground
                                      : Colors.black,
                                ),
                              ),
                            )),
                      );
                    },
                  ),
                ),
              ),
              Flexible(
                flex: 12,
                child: GridView.builder(
                  padding: const EdgeInsets.all(20),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 120,
                    childAspectRatio: 1 / 2,
                    mainAxisExtent: 170,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 0,
                  ),
                  itemCount: filteredDishes.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final dish = filteredDishes[index];
                    return GestureDetector(
                      onTap: () {
                        openDishDialog(dish);
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 120,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: AppColors.cellBackground,
                            ),
                            child: Center(
                              child: Image.network(
                                dish.imageURL,
                              ),
                            ),
                          ),
                          SizedBox(
                              child: Padding(
                            padding: const EdgeInsets.only(top: 5, left: 2),
                            child: Text(
                              dish.name,
                              style: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w400),
                            ),
                          ))
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
        error: () => const Text('Отсутствует подключение к сети интернет'));
  }

  void openDishDialog(dish) {
    showDialog(
        context: context,
        builder: ((context) => (Dialog(
              backgroundColor: Colors.transparent,
              child: Container(
                height: 550,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: AppColors.mainBackground,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(children: [
                        Container(
                          height: 232,
                          width: double.infinity,
                          padding: const EdgeInsets.only(left: 25, top: 20),
                          decoration: BoxDecoration(
                              color: AppColors.cellBackground,
                              borderRadius: BorderRadius.circular(15)),
                          child: Image.network(dish.imageURL),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: AppColors.mainBackground,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: const Center(
                                  child: Icon(Icons.favorite_border),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  context.pop();
                                },
                                child: Container(
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                    color: AppColors.mainBackground,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Center(
                                    child: Icon(Icons.close),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                      Text(
                        dish.name,
                        style: const TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                      Row(
                        children: [
                          Text(
                            '${dish.price} ₽ ',
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                          Text(
                            '· ${dish.weight}г',
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Colors.black54),
                          )
                        ],
                      ),
                      Text(
                        dish.description,
                        style: const TextStyle(fontSize: 13),
                      ),
                      Center(
                        child: cartBloc.cartItems.keys.contains(dish.name)
                            ? GestureDetector(
                                onTap: () {
                                  cartBloc.removeFromCart(dish);
                                  context.pop();
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    color: AppColors.cellBackground,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: const Center(
                                      child: Text(
                                    'Удалить из корзины',
                                    style: TextStyle(fontSize: 18),
                                  )),
                                ),
                              )
                            : GestureDetector(
                                onTap: () {
                                  cartBloc.addToCart(dish);
                                  context.pop();
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    color: AppColors.appAccentColor,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: const Center(
                                      child: Text(
                                    'Добавить в корзину',
                                    style: TextStyle(
                                        color: AppColors.mainBackground,
                                        fontSize: 18),
                                  )),
                                ),
                              ),
                      ),
                    ],
                  ),
                ),
              ),
            ))));
  }
}
