import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../organisms/index.dart';
import '../providers/index.dart';

class Home extends ConsumerWidget {

  final List<Widget> _pages = [
    Dashboard(),
    Placeholder(),
    Placeholder(),
    Placeholder(),
    Placeholder(),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int _navIndex = ref.watch(navIndexProvider);

    return Scaffold(
      body: _pages[_navIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _navIndex,
        onTap: (index) {
          ref.read(navIndexProvider.notifier).setNavIndex(index);
        },
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