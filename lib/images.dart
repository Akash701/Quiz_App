import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:quiz_app/qfunctions.dart';
//import 'package:quiz_app/qclass.dart';
import 'question.dart';

class Images extends StatelessWidget {
  Widget result() {
    if (score >= 7) {
      return Image.asset('gold.png');
    } else if (score >= 5 && score < 7) {
      return Image.asset('silver.png');
    } else {
      return Image.asset('bronze.png');
    }
    // return Text('${score - 1}');
  }

  @override
  Widget build(BuildContext context) {}
}
