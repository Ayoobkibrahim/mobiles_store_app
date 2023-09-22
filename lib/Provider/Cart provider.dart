import 'package:flutter/material.dart';

import '../Models/product model.dart';

List<Products> Iphones = [
  Products(name: "Iphon14pro", price: 140000, image: "assets/iphone14pro.jpeg"),
  Products(name: "Iphone14", price: 85000, image: "assets/iphone14.jpeg"),
  Products(name: "Iphone13pro", price: 130000, image: "assets/iphone13pro.jpeg"),
  Products(name: "Iphone13", price: 80000, image: "assets/iphone13.jpeg"),
  Products(name: "Iphone12pro", price: 120000, image: "assets/iphone12pro.jpeg"),
  Products(name: "Iphone12", price: 75000, image: "assets/iphone12.jpeg"),
  Products(name: "Iphone11pro", price: 110000, image: "assets/iphone11pro.jpeg"),
];
List<Products> Samsung = [
  Products(name: "S23Ultra", price: 130000, image: "assets/s23ultra.jpeg",),
  Products(name: "S23", price: 80000, image: "assets/s23.jpeg",),
  Products(name: "S22Ultra", price: 120000, image: "assets/s22ultra.jpeg",),
  Products(name: "S22", price: 70000, image: "assets/s22.jpeg",),
  Products(name: "S21Ultra", price: 120000, image: "assets/s21ultra.jpeg",),
  Products(name: "S21fe", price: 70000, image: "assets/s21.jpeg",),
];

List<Products> Vivo = [
  Products(name: "Vivo Y27", price: 15000, image: "assets/vivoy27.jpeg",),
  Products(name: "Vivo X90", price: 60000, image: "assets/vivox90.jpeg",),
  Products(name: "Vivo T2x", price: 14000, image: "assets/VivoT2x.jpeg",),
  Products(name: "Vivo Y100", price: 23000, image: "assets/Vivo y100.jpeg",),
  Products(name: "vivo Y16", price: 13000, image: "assets/Vivo y16.jpeg",),
];

List<Products> Xiaomi = [
  Products(name: "Xiaomi 11Tpro", price: 30000, image: "assets/Xiamoi11Tpro.jpeg",),
  Products(name: "Mi 11Xpro", price: 30000, image: "assets/Mi 11xpro.jpeg",),
  Products(name: "Xiaomi 12pro", price: 45000, image: "assets/mi12pro.jpeg",),
  Products(name: "Xiaomi 13pro", price: 80000, image: "assets/mi13pro.jpeg",),
  Products(name: "Mi 12s", price: 70000, image: "assets/mi12s.jpeg",),
  Products(name: "Mi Note10", price: 14000, image: "assets/mi note10.jpeg",),
];

class CartProvider extends ChangeNotifier {

  var IPhones = Iphones;

  List<Products> get Iphonehome => IPhones;

  var Samsungs = Samsung;

  List<Products> get Samsunghome =>Samsungs ;

  var Vivos = Vivo;

  List<Products> get Vivohome => Vivos;

  var Xiaomis = Xiaomi;

  List<Products> get Xiaomihome => Xiaomis;


  final List<Products> cart = [];

  List<Products> get cartall => cart;

  void addToCart(Products data) {
    int index = cart.indexWhere((element) => element == data);
    if (index != -1 ) {
      cart[index].count =cart[index].count +1;
    }else {
      cart.add(data);
    }
    notifyListeners();
  }

  void removeFromCart(Products data) {
    int index = cart.indexWhere((element) => element == data);
    if (index != -1) {
      if (cart[index].count > 1) {
        cart[index].count--;
      } else {
        cart.removeAt(index);
      }
      notifyListeners();
    }
  }

}