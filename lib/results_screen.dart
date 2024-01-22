import 'package:flutter/material.dart';
import 'package:quizz_app/Data/questions.dart';
import 'package:quizz_app/questions_summary/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    this.onRestart,
    required this.selectedAnswers,
  });

  final List<String> selectedAnswers;
  final void Function()? onRestart;

  List<Map<String, Object>> getResult() {
    final results = <Map<String, Object>>[];
    for (var i = 0; i < selectedAnswers.length; i++) {
      results.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'selected_answer': selectedAnswers[i],
      });
    }
    return results;
  }

  @override
  Widget build(BuildContext context) {
    final getResultData = getResult();
    final totalQuestions = selectedAnswers.length;
    final correctQuestions = getResultData.where((element) {
      return element['correct_answer'] == element['selected_answer'];
    }).length;
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answered $correctQuestions out of $totalQuestions questions correctly!!',
              style: const TextStyle(
                color: Color.fromARGB(231, 154, 108, 206),
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            QuestionsSummary(getResult()),
            const SizedBox(
              height: 30,
            ),
            TextButton.icon(
              onPressed: onRestart,
              icon: const Icon(Icons.refresh_rounded),
              label: const Text('Restart Quiz!!'),
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 211, 188, 225),
              )
            ),
          ],
        ),
      ),
    );
  }
}
