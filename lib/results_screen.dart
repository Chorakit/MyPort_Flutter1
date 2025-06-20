import 'package:flutter/material.dart';
import 'package:flutter_application/data/questions.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.choseAnswers});

  final List<String> choseAnswers;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < choseAnswers.length; i++) {
      summary.add({
        'questiom_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers,
        'user_answer': choseAnswers[i],
      });
    }

    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You answered X out of Y questions correctly!'),
            const SizedBox(height: 30),
            const Text('List of answers and questions...'),
            const SizedBox(height: 30),
            TextButton(onPressed: () {}, child: const Text('Restart Quiz!')),
          ],
        ),
      ),
    );
  }
}
