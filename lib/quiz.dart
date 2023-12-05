import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/starting_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'starting-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.deepPurple),
      home: Scaffold(
        body: Container(
          child: activeScreen == 'starting-screen'
              ? StartingScreen(switchScreen)
              : const QuestionsScreen(),
        ),
      ),
    );
  }
}
