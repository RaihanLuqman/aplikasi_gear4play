import 'package:flutter/material.dart';
import 'package:uts_mobile_raihanlilo/models/gear.dart';

class Item extends ChangeNotifier {
  //Gear List
  final List<Gear> _gearList = [
    //Headset
    Gear(
        name: "Headset Daxa TS 1",
        price: "60.00",
        imagePath: "images/item/daxats1.jpg",
        rating: "4.8"),

    //mouse
    Gear(
        name: "Mouse Daxa Air IV Pro",
        price: "90.00",
        imagePath: "images/item/daxaair4.jpg",
        rating: "4.9"),
  ];

  //customer Cart
  List<Gear> _cart = [];

  //getter method
  List<Gear> get gearList => _gearList;
  List<Gear> get cart => _cart;

  //tambahkan ke keranjang
  void addToCart(Gear gearItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(gearItem);
    }
    notifyListeners();
  }

  //hapus dari keranjang
  void removeFormCart(Gear gear) {
    _cart.remove(gear);
    notifyListeners();
  }
}
