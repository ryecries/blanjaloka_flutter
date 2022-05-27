import 'package:flutter/material.dart';

class Data {
  // for ordering in the graph
  final int id;
  final String name;
  final double y;

  const Data({
    required this.name,
    required this.id,
    required this.y,
  });
}

class BarData {
  static int interval = 5;

  static List<Data> barData = [
    Data(
      id: 0,
      name: 'Mon',
      y: 15,
    ),
    Data(
      name: 'Tue',
      id: 1,
      y: 3,
    ),
    Data(
      name: 'Wed',
      id: 2,
      y: 11,
    ),
    Data(
      name: 'Thu',
      id: 3,
      y: 10,
    ),
    Data(
      name: 'Fri',
      id: 4,
      y: 5,
    ),
    Data(
      name: 'Sat',
      id: 5,
      y: 17,
    ),
    Data(
      name: 'Sun',
      id: 6,
      y: 5,
    ),
  ];
}
