import 'package:flutter/material.dart';
import 'dart:math';
import 'package:dice_roll/button_style.dart';
import 'package:flutter/services.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  final randomizer = Random();

  var currentDiceRoll = Random().nextInt(6) + 1;
  var timesRolled = 0;

  void rollDice() {
    setState(() {
      int newRoll;
      do {
        newRoll = randomizer.nextInt(6) + 1;
      } while (newRoll == currentDiceRoll);
      currentDiceRoll = newRoll;
      timesRolled += 1;
    });
    HapticFeedback.vibrate();
  }

  void resetDice() {
    setState(() {
      timesRolled = 0;
    });
    HapticFeedback.vibrate();
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 400,
          child: Image.asset(
            'assets/images/dice-$currentDiceRoll.png',
            width: 400,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          "Times Rolled: $timesRolled",
          style: TextStyle(
            fontSize: 45,
            fontFamily: 'Swansea-q3pd',
            color: Colors.amber[600],
          ),
        ),
        const SizedBox(height: 50),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: rollDice,
              style: custbutton,
              child: Text("Roll"),
            ),

            const SizedBox(width: 100),

            OutlinedButton(
              onPressed: resetDice,
              style: custbutton,
              child: Text("Reset"),
            ),
          ],
        ),
      ],
    );
  }
}
