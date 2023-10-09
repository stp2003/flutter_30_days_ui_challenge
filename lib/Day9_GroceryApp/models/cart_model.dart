import 'package:flutter/material.dart';

class CartModel {
  //*** list of items on sale ->
  final List shopItems = const [
    ["Avocado", "4.00", "assets/images/avocado.png", Colors.green],
    ["Banana", "2.50", "assets/images/banana.png", Colors.yellow],
    ["Chicken", "12.80", "assets/images/chicken.png", Colors.brown],
    ["Water", "1.00", "assets/images/water.png", Colors.blue],
  ];

  // //*** list of cart items
  final List _cartItems = [];
  //
  // get cartItems => _cartItems;
  //
  // get shopItems => _shopItems;
  //
  // //*** add item to cart
  // void addItemToCart(int index) {
  //   _cartItems.add(_shopItems[index]);
  //   notifyListeners();
  // }
  //
  // //*** remove item from cart
  // void removeItemFromCart(int index) {
  //   _cartItems.removeAt(index);
  //   notifyListeners();
  // }

  //*** calculate total price
  // String calculateTotal() {
  //   double totalPrice = 0;
  //   for (int i = 0; i < cartItems.length; i++) {
  //     totalPrice += double.parse(cartItems[i][1]);
  //   }
  //   return totalPrice.toStringAsFixed(2);
  // }
}
