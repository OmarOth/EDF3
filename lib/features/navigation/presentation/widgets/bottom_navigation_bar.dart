import 'package:edf3/features/navigation/presentation/cubit/navigation_cubit.dart';
import 'package:edf3/features/navigation/presentation/widgets/custom_nav_bar_row_item.dart';
import 'package:edf3/utils/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavigationBarAligned extends StatelessWidget {
  const BottomNavigationBarAligned({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 75,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[const SizedBox(width: 8)] +
              screensNames.entries
                  .map(
                    (k) => CustomNavBarRowItem(
                      icon: k.value.$2,
                      text: k.value.$1,
                      isHightLighted: k.key ==
                          context
                              .watch<NavigationCubit>()
                              .state
                              .currentScreenIndex,
                      onTap: (value) {
                        context.read<NavigationCubit>().changeScreen(value);
                      },
                      index: k.key,
                    ),
                  )
                  .toList() +
              <Widget>[
                const SizedBox(
                  width: 8,
                  height: 20,
                ),
              ],
        ),
      ),
    );
  }
}
