import 'package:test_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startalign = Alignment.topRight;
const endalign = Alignment.bottomLeft;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startalign,
          end: endalign,
        ),
      ),
      child: Center(child: DiceRoller()),
    );
  }
}
