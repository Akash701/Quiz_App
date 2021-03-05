import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:quiz_app/qfunctions.dart';
//import 'package:quiz_app/qclass.dart';
import 'question.dart';

Qfunction qfunction = Qfunction();

class Result extends StatefulWidget {
  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  Questions questions = Questions();
  Widget result() {
    if (score >= 7) {
      return Image.asset(
        'images/gold.png',
      );
    } else if (score >= 5 && score < 7) {
      return Image.asset('images/silver.png');
    } else {
      return Image.asset('images/bronze.png');
    }
    // return Text('${score - 1}');
  }
  //AssetImage image;

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
            SizedBox(
              height: 30,
            ),
            Center(
              child: Text(
                'Quiz Result',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: result(),
            ),
            SizedBox(
              height: 40,
            ),
            Text('Your Score'),
            Container(
              child: Text('$score'),
            )
          ],
        )),
      ),
    );
  }
}
