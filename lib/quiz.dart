import 'package:flutter/material.dart';
import 'package:quizz_app/questions_screen.dart';
import 'package:quizz_app/results_screen.dart';
import 'package:quizz_app/start_screen.dart';

import 'Data/questions.dart';

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
  List<String> _selectedAnswers = [];
  String _currentScreen = 'Start-Screen';
  void _restartQuiz() {
    setState(() {
      _currentScreen = 'Start-Screen';
      _selectedAnswers = [];
    });
  }
  void _chooseAnswer(String answer) {
    _selectedAnswers.add(answer);
    if (_selectedAnswers.length == questions.length) {
      setState(() {
        _currentScreen = 'Result-Screen';
      });
    }
  }

  void _switchScreen() {
    setState(() {
      _currentScreen = 'Questions-Screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget? renderedWidget;
    if (_currentScreen == 'Start-Screen') {
      renderedWidget = StartScreen(
        switchScreenFn: _switchScreen,
      );
    } else if (_currentScreen == 'Questions-Screen') {
      renderedWidget = QuestionsScreen(
        onSelectAnswer: _chooseAnswer,
      );
    } else {
      renderedWidget = ResultsScreen(
          selectedAnswers: _selectedAnswers,
          onRestart: _restartQuiz
          );
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
