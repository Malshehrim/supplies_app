import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supplies_app/components/drawer.dart';
import 'package:supplies_app/models/product.dart';
import 'package:supplies_app/models/shop.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

//remove item function

  void removeItemFromCart(BuildContext context, Product product) {
    //show a dialog box
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: const Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text('remove this item From your cart?'),
        ),
        actions: [
          // cancel button
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Cancel'),
          ),
          // agree button
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);
              //add to cart
              context.read<Shop>().removeFromCart(product);
            },
            child: const Text('Yes'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //get access to the cart
    final cart = context.watch<Shop>().cart;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Cart Screen'),
      ),
      drawer: const MyDrawer(),
      body: Column(
        children: [
          // cart list
          Expanded(
            child: ListView.builder(
              itemCount: cart.length,
              itemBuilder: (context, index) {
                //get individual items in the cart
                final item = cart[index];

                //return it as cart tile UI

                return ListTile(
                  title: Text(item.name),
                  subtitle: Text(
                    item.price,
                  ),
                  trailing: IconButton(
                    icon: const Icon(
                      Icons.remove,
                    ),
                    onPressed: () => removeItemFromCart(context, item),
                  ),
                );
              },
            ),
          ),
          // pay button
        ],
      ),
    );
  }
}
