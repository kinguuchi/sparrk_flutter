import 'package:flutter/material.dart';

class NumberSlider extends StatelessWidget {
  final String? title;

  const NumberSlider({ this.title });

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        if (title != null)
          Text(title ?? ''),
        Slider(
          value: 0, 
          min: 0,
          max: 1000,
          onChanged: (value){},
          divisions: 1,
        ),
      ],
    );
  }
}