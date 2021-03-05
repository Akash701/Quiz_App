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
        height: 200,
        width: 200,
      );
    } else if (score >= 5 && score < 7) {
      return Image.asset(
        'images/silver.png',
        height: 200,
        width: 200,
      );
    } else {
      return Image.asset(
        'images/bronze.png',
        height: 200,
        width: 200,
      );
    }
    // return Text('${score - 1}');
  }

  void scoreReset() {
    score = 0;
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
              height: 70,
            ),
            Text(
              'Your Score',
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 150.0,
              width: 300.0,
              color: Colors.transparent,
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: new Center(
                    child: new Text(
                      "$score",
                      style: TextStyle(color: Colors.white, fontSize: 50),
                      textAlign: TextAlign.center,
                    ),
                  )),
            ),
            FlatButton(
              onPressed: () {
                setState(() {
                  qfunction.reset();
                  scoreReset();
                  Navigator.pop(context);
                  Navigator.pop(context);
                });
              },
              child: Text('Take New Quiz'),
            ),
          ],
        )),
      ),
    );
  }
}
