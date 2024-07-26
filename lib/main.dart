import 'package:flutter/material.dart';
import 'package:supplies_app/models/shop.dart';
import 'package:supplies_app/screens/cart_screen.dart';
import 'package:supplies_app/screens/intro_screen.dart';
import 'package:supplies_app/screens/shop_screen.dart';
import 'package:supplies_app/themes/light_theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: MaterialApp(
        routes: {
          'intro_screen': (ctx) => const IntroScreen(),
          'shop_screen': (ctx) => const ShopScreen(),
          'cart_screen': (ctx) => const CartScreen(),
        },
        theme: lightMode,
        home: const IntroScreen(),
      ),
    ),
  );
}
