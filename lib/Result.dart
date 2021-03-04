import 'package:flutter/material.dart';
import 'package:quiz_app/qfunctions.dart';
import 'package:quiz_app/qclass.dart';

Qfunction qfunction = Qfunction();
int score;

class Result extends StatefulWidget {
  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  void result(bool userPickedAnswer) {
    bool correctAnswer = qfunction.getCorrectAnswer();
    setState(() {
      if (userPickedAnswer == correctAnswer) {
        score++;
      }
    });
  }

  String medal() {
    if (score >= 8) {
      return 'Gold';
    } else if (score == 8) {
      return 'Silver';
    } else {
      return 'Bronze';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.8), BlendMode.dstATop),
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
            child: Column(
          children: [
            Center(
              child: Text(
                'Quiz Result',
                style: TextStyle(fontSize: 40),
              ),
            ),
            Text(medal()),
          ],
        )),
      ),
    );
  }
}
