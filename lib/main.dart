import 'package:flutter/material.dart';
// import 'package:quiz_app/question.dart';
// import 'question.dart';
import 'package:quiz_app/Home.dart';
import 'package:quiz_app/question.dart';
import 'package:quiz_app/Result.dart';

void main() {
  runApp(QuizApp());
}

class QuizApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home': (context) => Home(),
        'questions': (context) => Questions(),
        'result': (context) => Result(),
      },
    );
  }
}
