import 'package:flutter/material.dart';
import 'package:supplies_app/models/product.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  const ProductTile({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          
          //product image
          const Icon(Icons.favorite),
          
          //Image.asset(product.)
          //product name
          Text(product.name),

          //product description

          Text(product.description),

          // price and button to add to cart
          Text(product.price),
          TextButton(onPressed: () {}, child: const Text('add')),
        ],
      ),
    );
  }
}
