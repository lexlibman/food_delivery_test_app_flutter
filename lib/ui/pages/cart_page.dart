import 'package:flutter/material.dart';
import 'package:food_delivery_test_app_flutter/bloc/cart_bloc/cart_bloc.dart';

import '../../common/app_colors.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    int total = 0;
    String price = '';
    if (cartBloc.cartDishes.isNotEmpty) {
      for (final dish in cartBloc.cartDishes) {
        total += dish.price * cartBloc.cartItems[dish.name]!;
      }
      price = total.toString();
    }
    return total == 0
        ? const Center(
            child: Text('Корзина пуста'),
          )
        : Column(
            children: [
              Expanded(
                child: StreamBuilder(
                  stream: cartBloc.getCartStream,
                  builder: (context, snapshot) => ListView.separated(
                    padding: const EdgeInsets.all(20),
                    itemCount: cartBloc.cartItems.length,
                    separatorBuilder: (_, index) => const SizedBox(
                      height: 8,
                    ),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final dish = cartBloc.cartDishes[index];
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
                                borderRadius: BorderRadius.circular(8),
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
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
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
                                  borderRadius: BorderRadius.circular(12)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        cartBloc.decreaseItemQuantity(dish);
                                        setState(() {
                                          price = total.toString();
                                        });
                                      },
                                      child: const Icon(Icons.remove),
                                    ),
                                    Text(
                                      cartBloc.cartItems[dish.name].toString(),
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 18),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        cartBloc.increaseItemQuantity(dish);
                                        setState(() {
                                          price = total.toString();
                                        });
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
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.appAccentColor,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                      child: Text(
                    'Оплатить $price ₽',
                    style: const TextStyle(
                        color: AppColors.mainBackground, fontSize: 20),
                  )),
                ),
              )
            ],
          );
  }
}
