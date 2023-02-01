import 'package:flutter/material.dart';

//create Item Model class
class Item {
  final String name;
  final Color color;
  int count = 0;
  Item({required this.name, required this.color, required this.count});
}
