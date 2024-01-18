import 'package:flutter/material.dart';
import 'package:quizz_app/answer_button.dart';
import 'package:quizz_app/data/questions.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionScreenState();
  }
}

class _QuestionScreenState extends State<QuestionsScreen> {
  int currentQuestionIndex = 0;

  void answerQuestion() {
    if (currentQuestionIndex < questions.length) {
      setState(() {
        currentQuestionIndex++;
      });
    } else {
      print('Questions completed');
    }
  }

  @override
  Widget build(BuildContext context) {
    final currQuestion = questions[currentQuestionIndex];
    return Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currQuestion.text,
            style: GoogleFonts.lato(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 134, 64, 204),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          ...currQuestion.getShuffledAnswers().map((e) {
            return AnswerButton(
              answerText: e,
              onTap: answerQuestion,
            );
          }),
        ],
      ),
    );
  }
}
