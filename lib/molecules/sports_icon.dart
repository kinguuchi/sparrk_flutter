import 'package:flutter/material.dart';

class SportsIcon extends StatelessWidget {
  final Icon icon;
  final String name;
  final bool isSelected;

  const SportsIcon(
      {required this.icon, required this.name, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: isSelected ? Colors.blue.shade800 : Colors.transparent,
            width: 2,
          ),
          boxShadow: isSelected
            ? []
            : [
                BoxShadow(
                  color: Colors.grey.shade500.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: Offset(0, 2),
                ),
              ],
        ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          children: [
            Icon(icon.icon, color: isSelected ? Colors.blue.shade800 : Colors.black),
            SizedBox(width: 8),
            Text(
              name,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: isSelected ? Colors.blue.shade800 : Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
