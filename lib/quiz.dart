import 'package:flutter/material.dart';
import 'package:quizz_app/questions_screen.dart';
import 'package:quizz_app/start_screen.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;
const List<Color> colors = [
  Color.fromARGB(255, 58, 8, 115),
  Color.fromARGB(255, 68, 3, 136),
];

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  Widget? currentScreen;
  @override
  void initState() {
    super.initState();
    currentScreen = StartScreen(switchScreen: switchScreen);
  }

  void switchScreen() {
    setState(() {
      currentScreen = const QuestionsScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: colors,
              begin: startAlignment,
              end: endAlignment,
            ),
          ),
          child: Center(
            child: currentScreen,
          ),
        ),
      ),
    );
  }
}
