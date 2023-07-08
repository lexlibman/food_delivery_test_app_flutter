import 'package:flutter/material.dart';

import '../../../../blocs/cart_bloc/cart_bloc.dart';
import '../../../../common/app_colors.dart';
import '../../../../data/models/dish/dish.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.cartBloc, required this.dish});

  final CartBloc cartBloc;
  final Dish dish;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 80,
            width: 80,
            padding: const EdgeInsets.only(left: 5, top: 5),
            decoration: BoxDecoration(
              color: AppColors.cellBackground,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.network(dish.imageURL),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(dish.name),
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
            ],
          ),
          Container(
            width: 120,
            height: 45,
            decoration: BoxDecoration(
                color: AppColors.cartButtonColor,
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      cartBloc.add(
                        CartEvent.decQuantity(dish: dish),
                      );
                    },
                    child: const Icon(Icons.remove),
                  ),
                  Text(
                    cartBloc.cartItems[dish].toString(),
                    style: const TextStyle(
                        fontWeight: FontWeight.w600, fontSize: 18),
                  ),
                  GestureDetector(
                    onTap: () {
                      cartBloc.add(
                        CartEvent.incQuantity(dish: dish),
                      );
                    },
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
