import 'package:first_app/gradiat_cantainer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradiatCantainer(const Color.fromARGB(255, 0, 5, 137),
            const Color.fromARGB(255, 60, 0, 82)),
      ),
    ),
  );
}
