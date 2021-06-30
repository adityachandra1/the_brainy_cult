import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // const Question({ Key? key }) : super(key: key);

  String questionText;
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(40),
        child: Text(
          questionText,
          style: TextStyle(fontSize: 25),
          textAlign: TextAlign.center,
        ));
  }
}
