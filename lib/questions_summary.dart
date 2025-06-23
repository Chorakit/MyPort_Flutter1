import 'package:flutter/material.dart';
import 'package:flutter_application/summary_answer.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: SingleChildScrollView(
        child: Column(
          children:
              summaryData.map((data) {
                return SummaryAnswer(data);
              }).toList(),
        ),
      ),
    );
  }
}
