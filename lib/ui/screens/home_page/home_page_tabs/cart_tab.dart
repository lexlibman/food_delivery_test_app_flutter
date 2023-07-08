import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_test_app_flutter/blocs/cart_bloc/cart_bloc.dart';
import 'package:food_delivery_test_app_flutter/ui/screens/home_page/widgets/cart_item.dart';
import 'package:food_delivery_test_app_flutter/ui/screens/home_page/widgets/main_app_bar.dart';

import '../../../../common/app_colors.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cartBloc = context.watch<CartBloc>();

    return cartBloc.state.when(
      isEmpty: () {
        return const Scaffold(
          appBar: MainAppBar(),
          body: Center(
            child: Text('Корзина пуста'),
          ),
        );
      },
      isNotEmpty: (cartItems, total) {
        return Scaffold(
          appBar: const MainAppBar(),
          body: Column(
            children: [
              Expanded(
                child: ListView.separated(
                  padding: const EdgeInsets.all(20),
                  itemCount: cartBloc.cartItems.length,
                  separatorBuilder: (_, index) => const SizedBox(
                    height: 8,
                  ),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    final dish = cartBloc.cartItems.keys.elementAt(index);
                    return CartItem(cartBloc: cartBloc, dish: dish);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: AppColors.appAccentColor,
                    borderRadius: BorderRadius.circular(27),
                  ),
                  child: Center(
                      child: Text(
                    'Оплатить ${cartBloc.totalPrice} ₽',
                    style: const TextStyle(
                        color: AppColors.mainBackground, fontSize: 20),
                  )),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
