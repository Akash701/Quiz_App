import 'package:flutter/material.dart';
//import 'package:quiz_app/question.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 200,
                ),
                Center(
                  child: Image.asset(
                    'images/light-bulb.png',
                    height: 100,
                    width: 100,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  "Quizzler",
                  style: TextStyle(fontFamily: 'MarckScript', fontSize: 60),
                ),
                SizedBox(
                  height: 30,
                ),
                FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  color: Colors.lightBlue,
                  onPressed: () {
                    Navigator.pushNamed(context, 'questions');
                  },
                  child: Text(
                    'Start',
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
