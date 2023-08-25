import 'package:flutter/material.dart';

import '../organisms/index.dart';

class TabletHome extends StatefulWidget {
  const TabletHome({super.key});

  @override
  State<TabletHome> createState() => _TabletHomeState();
}

class _TabletHomeState extends State<TabletHome> {

  int _navIndex = 0;

  void handleNavChange(int index) {
    setState(() {
      _navIndex = index;
    });
  }

  final List<Widget> _pages = [
    TabletDashboard(),
    TabletDashboard(),
    TabletDashboard(),
    TabletDashboard(),
    TabletDashboard(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_navIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _navIndex,
        onTap: handleNavChange,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold
        ),
        unselectedItemColor: Color.fromRGBO(148, 165, 189, 1),
        selectedItemColor: Colors.lightBlue[700],
        landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.search, size: 30), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border, size: 30), label: 'Wishlists'),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today_outlined, size: 30), label: 'Booking'),
          BottomNavigationBarItem(icon: Icon(Icons.email_outlined, size: 30), label: 'Inbox'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined, size: 30), label: 'Profile'),
        ],
      ),
    );
  }
}