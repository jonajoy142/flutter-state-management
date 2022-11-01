import 'package:flutter/material.dart';
import '../model/model.dart';

class ShopList extends ChangeNotifier {
  static final List<Item> _items = [
    // Item(name: 'Apple', color: Colors.red, count: 0),
    // Item(name: 'Blackberyy', color: Colors.black, count: 0),
    // Item(name: 'Banana', color: Colors.yellow, count: 0),
    // Item(name: 'Blueberyy', color: Colors.blue.shade600, count: 0),
    // Item(name: 'Guava', color: Colors.green, count: 0),
    // Item(name: 'Grapes', color: Colors.purple, count: 0),
    // Item(name: 'Orange', color: Colors.orange, count: 0),
    // Item(name: 'Mango', color: Colors.yellow, count: 0),
    // Item(name: 'Strawberry', color: Colors.pink, count: 0),
    // Item(name: 'Watermelon', color: Colors.red, count: 0),
    // Item(name: 'Lemon', color: Colors.lightGreenAccent, count: 0),
  ];

  //provide all getters

  //add item to cart
  void addToCart(Item item) {}

  //removing item from cart
  void removeFromCart(Item item) {}
}
