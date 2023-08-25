import 'package:flutter/material.dart';
import 'package:sparrk/pages/index.dart';
import 'package:sparrk/templates/index.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileLayout;
  final Widget tabletLayout;

  const ResponsiveLayout({ required this.mobileLayout, required this.tabletLayout });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > tablet) {
        return Home();
      }
      return Home();
    });
  }
}