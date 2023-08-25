import 'package:flutter/material.dart';
import 'package:sparrk/pages/index.dart';
import 'package:sparrk/templates/responsive_layout.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveLayout(
        mobileLayout: Home(),
        tabletLayout: TabletHome(),
      ),
    );
  }
}