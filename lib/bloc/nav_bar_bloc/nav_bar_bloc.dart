import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavBarBloc {
  final navBarStreamController = StreamController.broadcast();

  Stream get getStream => navBarStreamController.stream;

  int currentIndex = 0;

  List<MyCustomBottomNavBarItem> get tabs => _tabs;

  static const List<MyCustomBottomNavBarItem> _tabs = [
    MyCustomBottomNavBarItem(
      icon: Icon(Icons.home_rounded),
      activeIcon: Icon(Icons.home_rounded),
      label: 'Главная',
      initialLocation: '/',
    ),
    MyCustomBottomNavBarItem(
      icon: Icon(Icons.search_rounded),
      activeIcon: Icon(Icons.search_rounded),
      label: 'Поиск',
      initialLocation: '/search',
    ),
    MyCustomBottomNavBarItem(
      icon: Icon(Icons.shopping_bag_outlined),
      activeIcon: Icon(Icons.shopping_bag_outlined),
      label: 'Корзина',
      initialLocation: '/cart',
    ),
    MyCustomBottomNavBarItem(
      icon: Icon(Icons.account_circle_outlined),
      activeIcon: Icon(Icons.account_circle_outlined),
      label: 'Аккаунт',
      initialLocation: '/profile',
    ),
  ];

  void goOtherTab(BuildContext context, int index) {
    if (index == navBarBloc.currentIndex) return;
    GoRouter router = GoRouter.of(context);
    String location = tabs[index].initialLocation;
    if (index == 3) {
      router.push(location);
    }
    navBarBloc.currentIndex = index;
    router.go(location);
    navBarStreamController.sink.add(index);
  }

  void dispose() {
    navBarStreamController.close();
  }
}

final navBarBloc = NavBarBloc();

class MyCustomBottomNavBarItem extends BottomNavigationBarItem {
  final String initialLocation;

  const MyCustomBottomNavBarItem(
      {required this.initialLocation,
      required Widget icon,
      String? label,
      Widget? activeIcon})
      : super(
          icon: icon,
          label: label,
          activeIcon: activeIcon ?? icon,
        );
}
