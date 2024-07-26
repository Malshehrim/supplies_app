import 'package:flutter/material.dart';
import 'package:supplies_app/models/product.dart';

class Shop extends ChangeNotifier {
  // products for sale
  final List<Product> _shop = [
//first product
    Product(
      name: 'Nike shos',
      description: 'nice and beautful shoe to wear',
      price: '220',
      // imagePath: 'lib/images/blue_shoce.webp',
    ),
    Product(
      name: 'Nike shos2',
      description: 'nice and beautful shoe to wear',
      price: '220',
      // imagePath: 'lib/images/blue_shoce.webp',
    ),
    Product(
      name: 'Nike shos3',
      description: 'nice and beautful shoe to wear',
      price: '220',
      // imagePath: 'lib/images/blue_shoce.webp',
    ),
    Product(
      name: 'Nike shos4',
      description: 'nice and beautful shoe to wear',
      price: '220',
      // imagePath: 'lib/images/blue_shoce.webp',
    ),
  ];
  //user cart
  final List<Product> _cart = [];

  //get product list
  List<Product> get shop => _shop;

  //get user cart
  List<Product> get cart => _cart;

  // add item to cart
  void addToCart(Product product) {
    _cart.add(product);
    notifyListeners();
  }

  // remove item from cart
  void removeFromCart(Product product) {
    _cart.remove(product);
    notifyListeners();
  }
}

/*
  List _cart = [];

  //get product list
  List getProductList() {
    return _cart;
  }

  // add item to cart
  void addItem(List item) {
    _cart.add(item);
  }

  void removeItem(List item) {
    _cart.remove(item);
  }
  // remove item from cart
}


*/
