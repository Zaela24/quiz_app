import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
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
  List<String> selectedAnswers = [];
  var activeScreen = 'starting-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = [];
        activeScreen = 'starting-screen';
      });
    }
  }

  @override
  Widget build(context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.deepPurple),
      home: Scaffold(
        body: Container(
          child: activeScreen == 'starting-screen'
              ? StartingScreen(switchScreen)
              : QuestionsScreen(onSelectAnswer: chooseAnswer),
        ),
      ),
    );
  }
}
