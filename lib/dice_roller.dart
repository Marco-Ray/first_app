import 'package:flutter/material.dart';
import 'dart:math';

// create as a global variable to avoid recreate the randomizer everytime when set the state
final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rowDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1; // [1, 7)
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        // Colum will occupy as much space as possible by default, utilizing MainAxisSize.max.
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/dice-$currentDiceRoll.png',
            width: 200,
          ),
          // Add a padding box between Image and Button
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: rowDice,
            style: TextButton.styleFrom(
              // alternative way to set the padding
              // padding: EdgeInsets.only(top: 20),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28),
            ),
            child: const Text('Roll Dice'),
          ),
        ]);
  }
}
