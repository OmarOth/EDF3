import 'package:edf3/features/cards/presentation/widgets/card_widget.dart';
import 'package:edf3/utils/enums/assets_enum.dart';
import 'package:edf3/utils/history_screen.dart';
import 'package:edf3/features/home_screen/presentation/page/home_screen.dart';
import 'package:flutter/material.dart';

Map<int, (String, AppIconsEnum)> screensNames = {
  0: (
    "Home",
    AppIconsEnum.home,
  ),
  1: (
    "History",
    AppIconsEnum.history,
  ),
  2: (
    "Payment",
    AppIconsEnum.qr,
  ),
  3: (
    "Cards",
    AppIconsEnum.card,
  ),
  4: ("Profile", AppIconsEnum.profile)
};

const List<Widget> screens = [
  HomeScreen(),
  HistoryScreen(),
  SizedBox(),
  Center(
    child: CreditCard(),
  ), // Placeholder for 'Cards' screen
  Center(
    child: Text(
      'Profile Screen',
    ),
  ), // Placeholder for 'Profile' screen
];
