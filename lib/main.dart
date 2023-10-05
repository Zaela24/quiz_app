import 'package:flutter/material.dart';
import 'package:quiz_app/starting_screen.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(scaffoldBackgroundColor: Colors.deepPurple),
    home: const Scaffold(
      body: StartingScreen(),
    ),
  ));
}
