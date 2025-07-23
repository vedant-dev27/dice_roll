import 'package:flutter/material.dart';
import 'package:test_app/gradient_class.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(colors: [Colors.black, Color(0xFF1A1A1A)]),
      ),
    ),
  );
}
