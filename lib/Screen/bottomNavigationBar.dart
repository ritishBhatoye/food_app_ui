import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app_ui/Screen/Home.dart';
import 'package:food_app_ui/Screen/bookmark.dart';
import 'package:food_app_ui/Screen/discovery.dart';
import 'package:food_app_ui/Screen/profile.dart';
import 'package:food_app_ui/Screen/topFoodie.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _index = 0;
  List pages = [Home(), Discovery(), Bookmark(), Profile(), TopFoodie()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(_index),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          selectedLabelStyle: TextStyle(color: Colors.yellow),
          unselectedLabelStyle:
              TextStyle(color: Color.fromARGB(255, 171, 215, 247)),
          onTap: (index) {
            setState(() {
              _index = index;
              print("Index : $index");
            });
          },
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.home,
                color: Colors.amber,
              ),
              icon: Icon(
                Icons.home_outlined,
                color: Colors.grey,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.location_on,
                color: Colors.amber,
              ),
              icon: Icon(
                Icons.location_on_outlined,
                color: Colors.grey,
              ),
              label: 'Discovery',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.bookmark,
                color: Colors.amber,
              ),
              icon: Icon(
                Icons.bookmark_border_outlined,
                color: Colors.grey,
              ),
              label: 'Bookmark',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.food_bank,
                color: Colors.amber,
              ),
              icon: Icon(
                Icons.food_bank_outlined,
                color: Colors.grey,
              ),
              label: 'Top Foodie',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                Icons.person_rounded,
                color: Colors.amber,
              ),
              icon: Icon(
                Icons.person_outline,
                color: Colors.grey,
              ),
              label: 'Profile',
            ),
          ]),
    );
  }
}
