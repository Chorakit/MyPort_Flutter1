import 'package:flutter/widgets.dart';

class SummaryNumber extends StatelessWidget {
  const SummaryNumber({
    super.key,
    required this.questionindex,
    required this.useranswer,
    required this.correctanswer,
  });

  final int questionindex;
  final String useranswer;
  final String correctanswer;

  Color checkSummaryColor(useranswer, correctanswer) {
    return correctanswer == useranswer
        ? Color.fromARGB(255, 150, 198, 241)
        : Color.fromARGB(255, 249, 133, 241);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: checkSummaryColor(useranswer, correctanswer),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        ((questionindex + 1).toString()),
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 22, 2, 56),
        ),
      ),
    );
  }
}
