import 'package:flutter/material.dart';

class FacilityIconList {
  Icon icon;
  String name;

  FacilityIconList({
    required this.icon,
    required this.name,
  });
}

class Facility {
  String image;
  String name;
  String address;
  String opening_time;
  int rent;

  Facility({
    required this.image,
    required this.name,
    required this.address,
    required this.opening_time,
    required this.rent,
  });
}