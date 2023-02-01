import 'package:flutter/material.dart';
import '../model/model.dart';

class ShopList extends ChangeNotifier {
  static final List<Item> _items = [
    Item(name: 'Apple', color: Colors.red, count: 0),
    Item(name: 'Blackberyy', color: Colors.black, count: 0),
    Item(name: 'Banana', color: Colors.yellow, count: 0),
    Item(name: 'Blueberyy', color: Colors.blue.shade600, count: 0),
    Item(name: 'Guava', color: Colors.green, count: 0),
    Item(name: 'Grapes', color: Colors.purple, count: 0),
    Item(name: 'Orange', color: Colors.orange, count: 0),
    Item(name: 'Mango', color: Colors.yellow, count: 0),
    Item(name: 'Strawberry', color: Colors.pink, count: 0),
    Item(name: 'Watermelon', color: Colors.red, count: 0),
    Item(name: 'Lemon', color: Colors.lightGreenAccent, count: 0),
  ];

  List<Item> _cartItem = [];
  int _cartCount = 0;

  //provide all getters
  List<Item> get items => _items;
  List<Item> get cartItems => _cartItem;
  int get itemCount => _items.length;
  int get cartItemCount => _cartItem.length;

  int get cartCount => _cartCount <= 0 ? 0 : _cartCount;

  //add item to cart
  void addToCart(Item item) {
    if (_cartItem.contains(item)) {
      _cartItem[_cartItem.indexOf(item)].count++;
    } else {
      _cartItem.add(item);
      _cartItem[_cartItem.indexOf(item)].count = 1;
      _items[_items.indexOf(item)].count = 1;
    }
    _cartCount++;

    notifyListeners();
  }

  //removing item from cart
  void removeFromCart(Item item) {
    if (_cartItem.contains(item) &&
        _cartItem[_cartItem.indexOf(item)].count == 1) {
      _items[_items.indexOf(item)].count = 0;
      _cartItem.remove(_cartItem[_cartItem.indexOf(item)]);
      _cartCount--;
    } else if (_cartItem[_cartItem.indexOf(item)].count > 0) {
      _cartItem[_cartItem.indexOf(item)].count--;
      _cartCount--;
    }
    notifyListeners();
  }
}
