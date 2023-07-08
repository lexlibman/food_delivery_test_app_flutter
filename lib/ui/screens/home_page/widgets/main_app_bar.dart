import 'package:flutter/material.dart';

import '../../../../common/app_colors.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({
    super.key,
  });

  final String date = '12 августа 2023';

  final String location = 'Санкт-Петербург';

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: const [
        CircleAvatar(
          radius: 25,
          backgroundImage: NetworkImage(
              'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww&w=1000&q=80'),
        ),
        SizedBox(
          width: 20,
        )
      ],
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.location_on_outlined,
                color: Colors.black,
                size: 25,
              ),
              SizedBox(
                height: 15,
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                location,
                style: const TextStyle(color: Colors.black),
              ),
              Text(
                date,
                style: const TextStyle(color: Colors.black38, fontSize: 15),
              )
            ],
          ),
        ],
      ),
      backgroundColor: AppColors.mainBackground,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
