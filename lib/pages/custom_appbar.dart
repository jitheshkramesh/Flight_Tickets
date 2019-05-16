import 'package:flutter/material.dart';
import '../main.dart';

class CustomAppBar extends StatelessWidget {
  final List<BottomNavigationBarItem> bottomBarItem = [];
  CustomAppBar() {
    bottomBarItem.add(BottomNavigationBarItem(
        activeIcon: Icon(
          Icons.home,
          color: appTheme.primaryColor,
        ),
        icon: Icon(
          Icons.home,
          color: Colors.black,
        ),
        title: Text(
          "Explore",
          style: TextStyle(color: Colors.black),
        )));
    bottomBarItem.add(new BottomNavigationBarItem(
        icon: Icon(
          Icons.favorite,
          color: Colors.black,
        ),
        title: Text(
          "Watchlist",
          style: TextStyle(color: Colors.black),
        )));
    bottomBarItem.add(new BottomNavigationBarItem(
        icon: Icon(
          Icons.local_offer,
          color: Colors.black,
        ),
        title: Text(
          "Deals",
          style: TextStyle(color: Colors.black),
        )));
    bottomBarItem.add(new BottomNavigationBarItem(
        icon: Icon(
          Icons.notifications,
          color: Colors.black,
        ),
        title: Text(
          "Notifications",
          style: TextStyle(color: Colors.black),
        )));
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 15.0,
      child: BottomNavigationBar(
        items: bottomBarItem,
        type: BottomNavigationBarType.shifting,
      ),
    );
  }
}
