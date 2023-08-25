import 'package:flutter/material.dart';

class BSButton extends StatelessWidget {
  final Widget child;

  BSButton({ required this.child });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: (){}, 
      onHover: (value) {},
      style: ButtonStyle(

      ),
      child: child,
    );
  }
}