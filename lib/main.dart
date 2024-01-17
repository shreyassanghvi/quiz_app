import 'package:flutter/material.dart';
import 'package:quizz_app/quiz_init.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

void main() {
  const List<Color> colors = [
    Color.fromARGB(255, 58, 8, 115),
    Color.fromARGB(255, 68, 3, 136),
  ];
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: colors,
              begin: startAlignment,
              end: endAlignment,
            ),
          ),
          child: const Center(
            child: QuizInit(),
          ),
        ),
      ),
    ),
  );
}
