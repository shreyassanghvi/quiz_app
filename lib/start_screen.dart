import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key, required this.switchScreenFn});

  final void Function()? switchScreenFn;

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
        Text(
          "Learn Flutter the fun way!!",
          style: GoogleFonts.lato(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          onPressed: switchScreenFn,
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
