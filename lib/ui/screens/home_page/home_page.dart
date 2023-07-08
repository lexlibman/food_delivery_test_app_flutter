import 'package:flutter/material.dart';
import 'package:food_delivery_test_app_flutter/data/models/category/category.dart';
import 'package:food_delivery_test_app_flutter/ui/screens/home_page/home_page_tabs/cart_tab.dart';
import 'package:food_delivery_test_app_flutter/ui/screens/home_page/home_page_tabs/profile_tab.dart';
import 'package:food_delivery_test_app_flutter/ui/screens/home_page/home_page_tabs/search_tab.dart';
import 'package:food_delivery_test_app_flutter/ui/screens/home_page/home_page_tabs/main_tab.dart';

import '../../../common/app_colors.dart';
import '../category_page/categry_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        Navigator(
          onGenerateRoute: (settings) {
            return MaterialPageRoute(
              builder: (_) {
                if (settings.name == 'category') {
                  final Category category = settings.arguments as Category;
                  return CategoryPage(categoryName: category.name);
                } else {
                  return const MainTab();
                }
              },
            );
          },
        ),
        const SearchPage(),
        const CartPage(),
        const ProfilePage(),
      ][currentPageIndex],
      bottomNavigationBar: NavigationBar(
        height: 60,
        backgroundColor: AppColors.mainBackground,
        indicatorColor: AppColors.appAccentColor,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home_rounded),
            selectedIcon: Icon(
              Icons.home_rounded,
              color: Colors.white,
            ),
            label: 'Главная',
          ),
          NavigationDestination(
            icon: Icon(Icons.search_rounded),
            selectedIcon: Icon(
              Icons.search_rounded,
              color: Colors.white,
            ),
            label: 'Поиск',
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_bag_outlined),
            selectedIcon: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
            ),
            label: 'Корзина',
          ),
          NavigationDestination(
            icon: Icon(Icons.account_circle_outlined),
            selectedIcon: Icon(
              Icons.account_circle_outlined,
              color: Colors.white,
            ),
            label: 'Аккаунт',
          ),
        ],
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
      ),
    );
  }
}
