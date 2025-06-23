import 'package:flutter/material.dart';
import 'package:flutter_application/summary_number.dart';
import 'package:google_fonts/google_fonts.dart';

class SummaryAnswer extends StatelessWidget {
  const SummaryAnswer(this.data, {super.key});

  final Map<String, Object> data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          SummaryNumber(
            questionindex: data['question_index'] as int,
            useranswer: data['user_answer'] as String,
            correctanswer: data['correct_answer'] as String,
          ),
          const SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data['question'] as String,
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 20),
                Text(
                  data['user_answer'] as String,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 202, 171, 252),
                  ),
                ),
                Text(
                  data['correct_answer'] as String,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 181, 254, 246),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
