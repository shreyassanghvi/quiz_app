import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key, required this.switchScreen});

  final void Function()? switchScreen;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          height: 300,
          color: const Color.fromARGB(128, 255, 255, 255),
        ),
        const SizedBox(
          height: 80,
        ),
        const Text(
          "Learn Flutter the fun way!!",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          onPressed: switchScreen,
          style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 18)),
          label: const Text("Start Quiz"),
          icon: const Icon(Icons.arrow_right_alt),
        )
      ],
    );
  }
}
