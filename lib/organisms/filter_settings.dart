import 'package:flutter/material.dart';
import 'package:sparrk/molecules/index.dart';
import 'package:sparrk/organisms/index.dart';

class FilterSettings extends StatelessWidget {
  const FilterSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Filter by'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(
                context, MaterialPageRoute(builder: (context) => Dashboard()));
          },
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 0,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
                onPressed: () {},
                child: Text(
                  'Reset',
                  style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.blue[900],
                      decorationColor: Colors.blue[900]),
                )),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5), color: Colors.blue[700]),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Show results',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          NumberSlider( title: 'Your Budget (For 1 Hour)', ),
        ],
      ),
    );
  }
}
