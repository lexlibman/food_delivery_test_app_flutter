import 'package:flutter/material.dart';

import '../../../../blocs/cart_bloc/cart_bloc.dart';
import '../../../../common/app_colors.dart';
import '../../../../data/models/dish/dish.dart';

class DishCardButton extends StatelessWidget {
  const DishCardButton({
    super.key,
    required this.cartBloc,
    required this.dish,
  });

  final CartBloc cartBloc;
  final Dish dish;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (cartBloc.cartItems.keys.contains(dish)) {
          cartBloc.add(CartEvent.decQuantity(dish: dish));
        } else {
          cartBloc.add(CartEvent.add(dish: dish));
        }
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        width: double.infinity,
        height: 48,
        decoration: cartBloc.cartItems.keys.contains(dish)
            ? BoxDecoration(
                color: AppColors.cellBackground,
                borderRadius: BorderRadius.circular(20),
              )
            : BoxDecoration(
                color: AppColors.appAccentColor,
                borderRadius: BorderRadius.circular(20),
              ),
        child: cartBloc.cartItems.keys.contains(dish)
            ? const Center(
                child: Text(
                'Удалить из корзины',
                style: TextStyle(fontSize: 18),
              ))
            : const Center(
                child: Text(
                'Добавить в корзину',
                style: TextStyle(color: AppColors.mainBackground, fontSize: 18),
              )),
      ),
    );
  }
}
