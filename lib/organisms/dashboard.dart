import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sparrk/data/data.dart';
import 'package:sparrk/molecules/index.dart';
import 'package:sparrk/organisms/filter_settings.dart';
import 'package:sparrk/templates/index.dart';

class Dashboard extends StatefulWidget {
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final _sports = FacilityIcons;
  final _facilities = Facilities;

  int _selectedSport = 0;

  @override
  Widget build(BuildContext context) {
    double screen = MediaQuery.of(context).size.width;
    int gridCount = (screen < tablet) ? 1 : (screen < desktop) ? 3 : 4;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Searchbar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade500.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ]),
                child: SearchBar(
                  leading: Icon(
                    Icons.search,
                    size: 30,
                  ),
                  trailing: <Widget>[
                    IconButton(
                    onPressed: () {
                      //Display filter_settings.dart file
                      Navigator.push(context, MaterialPageRoute(builder: (context) => FilterSettings()));
                    }, 
                    icon: Icon(MdiIcons.tuneVariant))
                  ],
                  hintText: 'Search facilities...',
                  backgroundColor:
                      MaterialStatePropertyAll<Color>(Colors.white),
                  elevation: MaterialStatePropertyAll(0),
                  shadowColor: MaterialStatePropertyAll(Colors.black),
                ),
              ),
            ),
            //Horizontal List View
            Container(
              height: 60,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _sports.length,
                    itemBuilder: ((context, index) {
                      return GestureDetector(
                        onTap: (() {
                          setState(() {
                            _selectedSport = index;
                          });
                        }),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SportsIcon(
                              icon: _sports[index].icon,
                              name: _sports[index].name,
                              isSelected: _selectedSport == index),
                        ),
                      );
                    })),
              ),
            ),
            //Vertical List View
            Expanded(
              child: GridView.builder(
                itemCount: _facilities.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: gridCount),
                itemBuilder: (context, index) {
                  return Padding(
                    // padding: const EdgeInsets.symmetric(horizontal: 10),
                    // child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: SportsCard(facility: _facilities[index]),
                  //   ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
