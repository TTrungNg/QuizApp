import 'package:flutter/material.dart';
import 'package:quizz/question_summary/question_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({super.key, required this.itemOfSummary});

  final Map<String, Object> itemOfSummary;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
          questionIndex: itemOfSummary['question_index'] as int,
          isCorrect:
              itemOfSummary['correct_answer'] == itemOfSummary['user_answer'],
        ),
        const SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemOfSummary['question'] as String,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                itemOfSummary['user_answer'] as String,
                style: const TextStyle(
                  color: Color.fromARGB(157, 255, 255, 255),
                ),
              ),
              Text(
                itemOfSummary['correct_answer'] as String,
                style: const TextStyle(
                  color: Color.fromARGB(255, 20, 149, 255),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
            ],
          ),
        )
      ],
    );
  }
}
