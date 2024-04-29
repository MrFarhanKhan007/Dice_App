import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var randomVal = 1;

  void rollDice() {
    setState(() {
      randomVal = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/dice-$randomVal.png",
          height: 200,
        ),
        // const SizedBox(height: 20)
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              elevation: 2, padding: const EdgeInsets.only(top: 20)),
          child: const Text(
            "Roll Dice",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        )
      ],
    );
  }
}
