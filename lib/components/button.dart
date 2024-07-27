import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final void Function()? onTap;
  final Widget child;
  const MyButton({
    super.key,
    required this.onTap,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(12),
              //   color: Theme.of(context).colorScheme.inversePrimary,
            ),
            padding: const EdgeInsets.symmetric(
                horizontal: double.infinity, vertical: 25),
            margin: const EdgeInsets.all(25),
            child: child,
          ),
        ],
      ),
    );
  }
}
