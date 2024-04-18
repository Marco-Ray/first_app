import 'package:flutter/material.dart';

import 'package:first_app/dice_roller.dart';


class GradientContainer extends StatelessWidget {
  // a shorter way to write the construction function - `GradientContainer({key}): super(key: key);`
  const GradientContainer(this.gradientColors, {super.key});

  final List<Color> gradientColors;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
