import 'package:flutter/material.dart';

class BottomMenuItem {
  final IconData iconData;
  final String labelMenu;

  const BottomMenuItem(this.iconData, this.labelMenu);
}

const listBottomMenuItem = [
  BottomMenuItem(Icons.home, 'Home'),
  BottomMenuItem(Icons.confirmation_num_outlined, 'Transaction'),
  BottomMenuItem(Icons.bookmark_added_outlined, 'Favorite'),
  BottomMenuItem(Icons.person_outline_outlined, 'Profile'),
];
