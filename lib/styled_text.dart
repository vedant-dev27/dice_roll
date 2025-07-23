import 'package:flutter/material.dart';

class TextStyler extends StatelessWidget {
  const TextStyler(this.text, {super.key});

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: TextStyle(color: Color.fromARGB(255, 252, 251, 251), fontSize: 60),
    );
  }
}
