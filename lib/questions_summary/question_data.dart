import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionData extends StatelessWidget {
  const QuestionData({
    required this.question,
    required this.correctAnswer,
    required this.selectedAnswer,
  });

  final String question;
  final String correctAnswer;
  final String selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(question,
              style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 211, 188, 225),
                fontSize: 16,
              )),
          Text(
            selectedAnswer,
            style: const TextStyle(
              color: Color.fromARGB(223, 157, 87, 239),
            ),
          ),
          Text(
            correctAnswer,
            style: const TextStyle(
              color: Color.fromARGB(239, 38, 161, 227),
            ),
          ),
        ],
      ),
    );
  }
}
