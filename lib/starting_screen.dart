import 'package:flutter/material.dart';

class StartingScreen extends StatelessWidget {
  const StartingScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(255, 228, 201, 249),
        ),
        const SizedBox(
          height: 70,
        ),
        const Text(
          'Learn Flutter the fun way!',
          style: TextStyle(
              color: Color.fromARGB(255, 228, 201, 249), fontSize: 28),
        ),
        const SizedBox(
          height: 30,
        ),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(
            foregroundColor: Colors.white,
            side: const BorderSide(color: Colors.white),
          ),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text('Start Quiz'),
        ),
      ],
    ));
  }
}
