import 'package:flutter/material.dart';
import 'package:quizz_app/questions_summary/question_data.dart';
import 'package:quizz_app/questions_summary/question_identifier.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((e) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start, //to align the text to the top of the row
              children: [
                QuestionIdentifier(
                  isCorrectAnswer: e['selected_answer'] == e['correct_answer'],
                  index: e['question_index'] as int,
                ),
                const SizedBox(
                  width: 20,
                ),
                QuestionData(
                  question: e['question'] as String,
                  correctAnswer: e['correct_answer'] as String,
                  selectedAnswer: e['selected_answer'] as String,
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
