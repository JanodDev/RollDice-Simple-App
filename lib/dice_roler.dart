import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoler extends StatefulWidget {
  const DiceRoler({super.key});

  @override
  State<DiceRoler> createState() {
    return _DiceRolerState();
  }
}

class _DiceRolerState extends State<DiceRoler> {
  var currentDiceRoll = 2;

  void rolldice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rolldice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: TextStyle(
              fontSize: 28,
            ),
          ),
          child: Text('Roll Dice'),
        ),
      ],
    );
  }
}
