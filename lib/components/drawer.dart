import 'package:flutter/material.dart';
import 'package:supplies_app/components/list_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //drawer header? logo
          Column(
            children: [
              DrawerHeader(
                child: Center(
                  child: Icon(
                    Icons.shopping_bag,
                    size: 72,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              ),

              //shop tile
              MyListTile(
                  text: 'Shop',
                  icon: Icons.home,
                  onTap: () {
                    Navigator.of(context).pop;

                    Navigator.pushNamed(context, 'shop_screen');
                  }),

              // cart tile
              MyListTile(
                text: 'Cart',
                icon: Icons.shopping_cart,
                onTap: () {
                  //pop drawer first
                  Navigator.of(context).pop;

                  //go to cart screen
                  Navigator.pushNamed(context, 'cart_screen');
                },
              ),
              //exit
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: MyListTile(
              text: 'Exit',
              icon: Icons.exit_to_app,
              onTap: () => Navigator.pushNamedAndRemoveUntil(
                  context, 'intro_screen', (route) => false),
            ),
          ),
        ],
      ),
    );
  }
}
