import 'package:flutter/material.dart';

// import customized widgets
import 'package:first_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer([
            Color.fromARGB(255, 41, 2, 109),
            Color.fromARGB(255, 49, 90, 238),
          ]),
      ),
    ),
  );
}
