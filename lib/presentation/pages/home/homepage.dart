import 'package:flutter/material.dart';

import '../../../config/theme/colors_config.dart';
import '../../widgets/bottom_item.dart';

import '../favorite/favoritepage.dart';
import '../profile/profilepage.dart';
import '../transaction/transactionpage.dart';
import 'homebody.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with WidgetsBindingObserver {
  int _currentIndex = 0;
  final listBottonMenu = listBottomMenuItem;

  final List<Widget> _children = const [
    HomePageBody(),
    TransactionPage(),
    ProfilePage(),
    FavoritePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultColor,
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        elevation: 12,
        backgroundColor: defaultColor,
        selectedItemColor: primaryColor,
        unselectedItemColor: greyColor,
        // selectedLabelStyle: textPrimaryColor,
        // unselectedLabelStyle: textTheme.caption,
        onTap: onTabTapped,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        items: listBottonMenu
            .map((item) => BottomNavigationBarItem(
                icon: Icon(item.iconData), label: item.labelMenu))
            .toList(),
      ),
    );
  }

  void onTabTapped(int index) {
    if (!mounted) return;
    setState(() {
      _currentIndex = index;
    });
  }
}
