import 'package:flutter/material.dart';

import '../../../../common/app_colors.dart';
import '../../../../data/models/dish/dish.dart';
import '../dish_card.dart';

class DishGrid extends StatelessWidget {
  const DishGrid({super.key, required this.dishes});

  final List<Dish> dishes;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(20),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 120,
        childAspectRatio: 1 / 2,
        mainAxisExtent: 170,
        crossAxisSpacing: 10,
        mainAxisSpacing: 0,
      ),
      itemCount: dishes.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final dish = dishes[index];
        return GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: ((context) => (DishCard(
                    dish: dish,
                  ))),
            );
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
    );
  }
}
