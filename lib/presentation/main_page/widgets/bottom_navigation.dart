

import 'package:flutter/material.dart';
import 'package:ott_flutter_app/core/color/colors.dart';
 ValueNotifier<int> indexChangeNotifier=ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
    valueListenable: indexChangeNotifier, 
    builder: (context, int newIndex,_) {
      return BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedIconTheme: const IconThemeData(color: Colors.white),
        unselectedIconTheme: const IconThemeData(color: Colors.grey),
        currentIndex: newIndex,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: backgroundColor,
        onTap: (index) {
        indexChangeNotifier.value=index;
        },
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.home), label: 'Home'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.collections), label: 'New& Hot'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.emoji_emotions), label: 'Fast Laugh'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.search), label: 'Search'),
          const BottomNavigationBarItem(
              icon: Icon(Icons.download), label: 'Downloads'),
        ]);
    },);
  }
}
