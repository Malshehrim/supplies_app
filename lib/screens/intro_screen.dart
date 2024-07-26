import 'package:flutter/material.dart';
import 'package:supplies_app/components/button.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.shopping_bag,
              size: 72,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(height: 25),
            //title
            const Text(
              'Minimum Shop',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),

            const SizedBox(height: 10),
            //subtitle
            Text(
              'Beauty products and services',
              style: TextStyle(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            const SizedBox(height: 20),
            //button
            MyButton(
              onTap: () => Navigator.pushNamed(context, 'shop_screen'),
              child: const Icon(
                Icons.arrow_forward,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
