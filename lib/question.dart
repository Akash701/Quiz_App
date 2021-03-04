import 'package:flutter/material.dart';
import 'package:quiz_app/qfunctions.dart';

Qfunction qfunction = Qfunction();

class Questions extends StatefulWidget {
  @override
  _QuestionsState createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  void checkAnswer(bool userPickedAnswer) {
    bool correctAnswer = qfunction.getCorrectAnswer();
    setState(() {
      if (qfunction.isFinished() == true) {
        //Statement when the quiz is finished
      } else {
        if (userPickedAnswer == correctAnswer) {
          scoreKeeper.add(Icon(
            Icons.minimize_rounded,
            color: Colors.green,
            size: 32,
          ));
        } else {
          scoreKeeper.add(Icon(
            Icons.minimize_rounded,
            color: Colors.red,
            size: 32,
          ));
        }
        qfunction.nextQuestion();
        //Statement when the quiz is not finished
      }
    });
  }

  List<Icon> scoreKeeper = [];
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                'Question No ${qfunction.questionNumber}/12',
                style: TextStyle(fontSize: 35, color: Colors.white),
              ),
              Row(
                children: scoreKeeper,
              ),
              Container(
                child: Expanded(
                  child: Center(
                    child: Text(
                      qfunction.getQuestionText(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    color: Colors.lightBlue,
                    onPressed: () {
                      checkAnswer(true);
                    },
                    child: Text(
                      'TRUE',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                  FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    color: Colors.lightBlue,
                    onPressed: () {
                      checkAnswer(false);
                    },
                    child: Text(
                      'FALSE',
                      style: TextStyle(
                        fontSize: 40,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                color: Colors.lightBlue,
                onPressed: () {},
                child: Text(
                  'Quit',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
