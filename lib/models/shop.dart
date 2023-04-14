import 'package:flutter/material.dart';

import 'drink.dart';

class Shop extends ChangeNotifier {
  // list of drinks for sale
  final List<Drink> _shop = [
    Drink(
        name: "Original Milk Tea",
        price: "4,000 won",
        imagePath: "lib/images/bubbletea.png"),
    Drink(
        name: "Green Tea",
        price: "4,300 won",
        imagePath: "lib/images/greentea.png"),
    Drink(
        name: "Special Tea",
        price: "4,500 won",
        imagePath: "lib/images/specialtea.png"),
  ];

  // list of drinks in user cart
  final List<Drink> _userCart = [];

  // get drinks for sale
  List<Drink> get shop => _shop;

  // get user cart
  List<Drink> get cart => _userCart;

  // add drink to cart
  void addToCart(Drink drink) {
    _userCart.add(drink);
    notifyListeners();
  }

  // remove drink from cart
  void removeFromCart(Drink drink) {
    _userCart.remove(drink);
    notifyListeners();
  }
}
