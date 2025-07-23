import 'package:flutter/material.dart';

final custbutton = OutlinedButton.styleFrom(
  foregroundColor: Colors.yellow,
  textStyle: const TextStyle(fontSize: 60),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
  side: BorderSide(
    color: Colors.amber[900]!,
    width: 4,
    style: BorderStyle.solid,
  ),
);
