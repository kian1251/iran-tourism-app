import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:latlong2/latlong.dart';
/*import 'package:project/pages/home_Page.dart';
import 'package:project/pages/navigatorpages/map_page.dart';
import 'package:project/pages/navigatorpages/my_page.dart';
import 'package:project/pages/navigatorpages/search_page.dart';*/

import '../home_Page.dart';
import 'map_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List Pages = [
    HomePage(),
    MapPage(),
    //SearchPage(),
    //MyPage(),
  ];
  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 30,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey.withOpacity(0.3),
        selectedFontSize: 0,
        unselectedFontSize: 0,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black.withOpacity(1),
        unselectedItemColor: Colors.grey.withOpacity(1),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(label: ("Home"), icon: Icon(Icons.apps)),
          BottomNavigationBarItem(
              label: ("Map"), icon: Icon(Icons.map_outlined)),
          //BottomNavigationBarItem(label: ("Search"), icon: Icon(Icons.search)),
          // BottomNavigationBarItem(label: ("My"), icon: Icon(Icons.person_2)),
        ],
      ),
    );
  }
}
