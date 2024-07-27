import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supplies_app/components/drawer.dart';
import 'package:supplies_app/components/product_tile.dart';
import 'package:supplies_app/models/shop.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //access product in shop
    final products = context.watch<Shop>().shop;

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'cart_screen');
            },
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        elevation: 0,
        title: Text(
          'Shope Page',
          style: TextStyle(
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
        ),
      ),
      drawer: const MyDrawer(),
      body: ListView(
        children: [
          // shop title
          const Center(
            child: Text('SHOP'),
          ),
          const SizedBox(height: 25),
          //shop subtitle

          // product list

          SizedBox(
            height: 550,
            child: ListView.builder(
              //h or v
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(5),
              itemCount: products.length,
              itemBuilder: (context, index) {
                //get each individual product
                final product = products[index];

                // return as product tile UI
                return ProductTile(product: product);
              },
            ),
          ),
        ],
      ),
    );
  }
}
