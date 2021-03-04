import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Questions extends StatefulWidget {
  @override
  _QuestionsState createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
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
              Text(
                'Question No 7',
                style: TextStyle(
                  fontSize: 35,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.minimize_rounded,
                    size: 50,
                    color: Colors.green,
                  ),
                ],
              ),
              Container(child: Text(''))
            ],
          ),
        ),
      ),
    );
  }
}
