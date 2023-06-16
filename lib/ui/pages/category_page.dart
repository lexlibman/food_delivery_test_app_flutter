import 'package:flutter/material.dart';
import 'package:food_delivery_test_app_flutter/ui/widgets/dish_list.dart';
import 'package:go_router/go_router.dart';
import '../../bloc/nav_bar_bloc/nav_bar_bloc.dart';
import '../../common/app_colors.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            context.pop();
          },
        ),
        foregroundColor: Colors.black,
        actions: const [
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(
                'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww&w=1000&q=80'),
          ),
          SizedBox(
            width: 20,
          ),
        ],
        centerTitle: true,
        title: Text(
          widget.name,
          style: const TextStyle(color: Colors.black),
        ),
        backgroundColor: AppColors.mainBackground,
        elevation: 0,
      ),
      body: const SafeArea(
        child: DishList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 10,
        selectedFontSize: 10,
        elevation: 8,
        unselectedItemColor: AppColors.unselectedItemColor,
        selectedItemColor: AppColors.appAccentColor,
        backgroundColor: AppColors.mainBackground,
        showUnselectedLabels: true,
        enableFeedback: false,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          navBarBloc.goOtherTab(context, index);
        },
        currentIndex: navBarBloc.currentIndex,
        items: navBarBloc.tabs,
      ),
    );
  }
}
