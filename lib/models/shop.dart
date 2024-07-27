import 'package:flutter/material.dart';
import 'package:supplies_app/models/product.dart';

class Shop extends ChangeNotifier {
  // products for sale
  final List<Product> _shop = [
//first product
    Product(
      name: 'Red Shoes',
      description:
          ' Bold red shoes to make a statement. Stylish and eye-catching.',
      price: '340',
      imagePath: 'lib/images/red_shose.jpg',
    ),

    Product(
      name: 'Blue Unbrealla',
      description: 'protect your head from rain!',
      price: '10',
      imagePath: 'lib/images/un.png',
    ),
    Product(
      name: 'Blue glass',
      description: 'Nice looking blue glass for you and for your family',
      price: '100',
      imagePath: 'lib/images/glass.png',
    ),
    Product(
      name: 'Black Shoes',
      description: 'Classic black shoes for any occasion. Timeless elegance.',
      price: '260',
      imagePath: 'lib/images/black_shose.webp',
    ),
    Product(
      name: 'Blue Shoes',
      description:
          'Sleek blue shoes for a stylish touch. Comfortable and durable',
      price: '220',
      imagePath: 'lib/images/blue_shoce.webp',
    ),
    Product(
      name: 'White Shoes',
      description: 'Crisp white shoes for a modern look. Clean and fresh.',
      price: '130',
      imagePath: 'lib/images/white_shose.webp',
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
