import 'package:flutter/material.dart';

class cardModel extends ChangeNotifier {
  final List _shopItems = [
    ['Avacado', '4.00', 'assets/images/avocado.png', Colors.green],
    ['Banana', '8.00', 'assets/images/banana.png', Colors.yellow],
    ['Chicken', '12.00', 'assets/images/chicken.png', Colors.brown],
    ['Water', '1.00', 'assets/images/water.png', Colors.blue],
  ];

  final List _cartItems = [];

  get shopItems => _shopItems;
  get cartItems => _cartItems;

  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }

    return totalPrice.toStringAsFixed(2);
  }
}
