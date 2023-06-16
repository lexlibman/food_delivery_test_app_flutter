import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_test_app_flutter/bloc/category_bloc/category_bloc.dart';
import 'package:food_delivery_test_app_flutter/bloc/dish_bloc/dish_bloc.dart';
import 'package:food_delivery_test_app_flutter/common/app_colors.dart';
import 'package:food_delivery_test_app_flutter/data/repositories/category_repo/category_repo.dart';
import 'package:food_delivery_test_app_flutter/ui/pages/cart_page.dart';
import 'package:food_delivery_test_app_flutter/ui/pages/category_page.dart';
import 'package:food_delivery_test_app_flutter/ui/pages/home_page.dart';
import 'package:food_delivery_test_app_flutter/ui/pages/profile_page.dart';
import 'package:food_delivery_test_app_flutter/ui/pages/search_page.dart';
import 'package:food_delivery_test_app_flutter/ui/widgets/category_list.dart';
import 'package:go_router/go_router.dart';

import 'data/repositories/dish_repo/dish_repo.dart';

void main() {
  runApp(const MyApp());
}

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();
final categoryRepo = CategoryRepo();
final dishRepo = DishRepo();

final _router = GoRouter(
  initialLocation: '/',
  navigatorKey: _rootNavigatorKey,
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return HomePage(child: child);
      },
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) {
            return BlocProvider(
              create: (context) => CategoryBloc(categoryRepo: categoryRepo),
              child: const CategoryList(),
            );
          },
        ),
        GoRoute(
          path: '/search',
          builder: (context, state) {
            return const SearchPage();
          },
        ),
        GoRoute(
            path: '/cart',
            builder: (context, state) {
              return const CartPage();
            }),
        GoRoute(
            path: '/profile',
            builder: (context, state) {
              return const ProfilePage();
            }),
      ],
    ),
    GoRoute(
        path: '/category',
        parentNavigatorKey: _rootNavigatorKey,
        builder: (context, state) {
          String name = state.extra as String;
          return BlocProvider(
            create: (context) => DishBloc(dishRepo: dishRepo),
            child: CategoryPage(
              name: name,
            ),
          );
        }),
  ],
);

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
      theme: ThemeData(
        fontFamily: 'SF Pro Display',
        scaffoldBackgroundColor: AppColors.mainBackground,
      ),
    );
  }
}
