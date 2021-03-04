import 'package:flutter/material.dart';
// import 'package:quiz_app/question.dart';
// import 'question.dart';
import 'package:quiz_app/Home.dart';
import 'package:quiz_app/question.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'home',
      routes: {
        'home': (context) => Home(),
        'questions': (context) => Questions(),
      },
    );
  }
}
