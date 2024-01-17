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
  String currentScreen = 'Start-Screen';

  void switchScreen() {
    setState(() {
      currentScreen = 'Questions-Screen'; // const QuestionsScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget? renderedWidget;
    if (currentScreen == 'Start-Screen') {
      renderedWidget = StartScreen(switchScreenFn: switchScreen);
    } else {
      renderedWidget = const QuestionsScreen();
    }
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
            child: renderedWidget,
          ),
        ),
      ),
    );
  }
}
