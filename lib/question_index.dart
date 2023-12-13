import 'package:flutter/material.dart';

class QuestionIndex extends StatelessWidget {
  const QuestionIndex({
    super.key,
    required this.questionIndex,
    required this.isCorrect,
  });

  final int questionIndex;
  final bool isCorrect;

  @override
  Widget build(BuildContext context) {
    final questionNumber = questionIndex + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrect
            ? const Color.fromARGB(255, 144, 219, 142)
            : const Color.fromARGB(255, 245, 134, 134),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(questionNumber.toString(),
          style: const TextStyle(
            color: Color.fromARGB(255, 8, 8, 8),
          )),
    );
  }
}
