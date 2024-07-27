import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:supplies_app/models/product.dart';
import 'package:supplies_app/models/shop.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  const ProductTile({
    super.key,
    required this.product,
  });

  void addToCart(BuildContext context) {
    //show a dialog box
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: const Padding(
          padding: EdgeInsets.only(top: 20),
          child: Text('Add this item to your cart?'),
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
              context.read<Shop>().addToCart(product);
            },
            child: const Text('Yes'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Theme.of(context).colorScheme.primary,
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              //product image
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusDirectional.circular(12),
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    child: const Icon(Icons.favorite)),
              ),
              const SizedBox(height: 25),
              //Image.asset(product.)
              //product name
              Text(
                product.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 10),
              //product description

              Text(product.description),
              const SizedBox(height: 25),
              // price and button to add to cart
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //product price
              Text('\$${product.price}'),
              //add cart button
              Container(
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: BorderRadiusDirectional.circular(12)),
                child: IconButton(
                  onPressed: () => addToCart(context),
                  icon: const Icon(Icons.add),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
