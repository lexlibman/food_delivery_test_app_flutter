import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_test_app_flutter/blocs/cart_bloc/cart_bloc.dart';

import '../../../common/app_colors.dart';
import '../../../data/models/dish/dish.dart';
import 'widgets/add_to_cart_button.dart';

class DishCard extends StatelessWidget {
  const DishCard({
    super.key,
    required this.dish,
  });

  final Dish dish;

  @override
  Widget build(BuildContext context) {
    final cartBloc = context.watch<CartBloc>();
    return Dialog(
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
                          Navigator.of(context).pop();
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
                style:
                    const TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
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
              DishCardButton(cartBloc: cartBloc, dish: dish),
            ],
          ),
        ),
      ),
    );
  }
}
