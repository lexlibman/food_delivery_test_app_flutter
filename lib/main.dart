import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_test_app_flutter/blocs/cart_bloc/cart_bloc.dart';
import 'package:food_delivery_test_app_flutter/blocs/category_bloc/category_bloc.dart';
import 'package:food_delivery_test_app_flutter/blocs/dish_bloc/dish_bloc.dart';
import 'package:food_delivery_test_app_flutter/common/app_colors.dart';
import 'package:food_delivery_test_app_flutter/data/repositories/category_repo/category_repo.dart';
import 'package:food_delivery_test_app_flutter/ui/screens/home_page/home_page.dart';

import 'data/repositories/dish_repo/dish_repo.dart';

void main() {
  runApp(const MyApp());
}

final categoryRepo = CategoryRepo();
final dishRepo = DishRepo();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CategoryBloc(
            categoryRepo: CategoryRepo(),
          ),
        ),
        BlocProvider(
          create: (context) => DishBloc(
            dishRepo: DishRepo(),
          ),
        ),
        BlocProvider(
          create: (context) => CartBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'SF Pro Display',
          scaffoldBackgroundColor: AppColors.mainBackground,
        ),
        home: const HomePage(),
      ),
    );
  }
}
