import 'package:event_app/screens/home/home.dart';
import 'package:event_app/screens/manage_event/manage_event.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class Home extends StatefulWidget {
  static String routeName = '/home_screen';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController pageController = new PageController();
  int currentIndex = 0;

  void onTap(int page) {
    setState(() {
      currentIndex = page;
    });
    pageController.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: pageController,
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        children: [HomeScreen(), ManageEvent()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        type: BottomNavigationBarType.fixed,
        iconSize: 26,
        selectedFontSize: 14,
        unselectedFontSize: 12,
        currentIndex: currentIndex,

        backgroundColor: nearlyWhite,
        unselectedItemColor: Colors.black54,
        // unselectedLabelStyle: TextStyle(color: Colors.black),
        selectedItemColor: kPrimraryColor,
        //selectedLabelStyle: TextStyle(color: Colors.yellow),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Discover',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.border_all),
            label: 'Manage Events',
          ),
        ],
      ),
    );
  }
}
