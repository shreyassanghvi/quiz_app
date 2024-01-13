import 'package:flutter/material.dart';
import 'package:quizz_app/gradient_container.dart';
import 'package:quizz_app/quiz_init.dart';

void main() {
  const List<Color> colors = [
    Color.fromARGB(255, 58, 8, 115),
    Color.fromARGB(255, 68, 3, 136),
  ];
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          colors: colors,
          child: QuizInit(),
        ),
      ),
    ),
  );
}
