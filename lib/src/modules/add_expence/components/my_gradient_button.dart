import 'dart:math';

import 'package:flutter/material.dart';

class MyGradientButton extends StatelessWidget {
  final double horizontal;
  final void Function()? onPressed;

  const MyGradientButton({
    required this.horizontal,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: horizontal),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          transform: const GradientRotation(pi / 4),
          colors: [
            Theme.of(context).colorScheme.primary,
            Theme.of(context).colorScheme.secondary,
            Theme.of(context).colorScheme.tertiary,
          ],
        ),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: const Text(
          "SAVE",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
