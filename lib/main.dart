import 'package:flutter/material.dart';
import 'package:dice_roll/gradient_class.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: [
            Color.fromARGB(255, 19, 0, 71),
            Color.fromARGB(255, 19, 0, 71),
          ],
        ),
      ),
    ),
  );
}
