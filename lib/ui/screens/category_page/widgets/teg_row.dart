import 'package:flutter/material.dart';

import '../../../../blocs/dish_bloc/dish_bloc.dart';
import '../../../../common/app_colors.dart';

class TegRow extends StatelessWidget {
  const TegRow({super.key, required this.dishBloc});

  final DishBloc dishBloc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 5),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: dishBloc.tegs.length,
        separatorBuilder: (_, index) => const SizedBox(
          width: 10,
        ),
        itemBuilder: (context, index) {
          String teg = dishBloc.tegs[index];
          return GestureDetector(
            onTap: () {
              dishBloc.add(DishEvent.filterByTeg(teg: teg));
            },
            child: AnimatedContainer(
                duration: const Duration(milliseconds: 100),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: teg == dishBloc.teg
                      ? AppColors.appAccentColor
                      : AppColors.cellBackground,
                ),
                height: 170,
                child: Center(
                  child: Text(
                    teg,
                    style: TextStyle(
                      color: teg == dishBloc.teg
                          ? AppColors.mainBackground
                          : Colors.black,
                    ),
                  ),
                )),
          );
        },
      ),
    );
  }
}
