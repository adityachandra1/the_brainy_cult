import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const Result({ Key? key }) : super(key: key);
  final int resultScore;

  Result(this.resultScore);
  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 80) {
      resultText = "Mission Failed!";
    } else if (resultScore <= 200) {
      resultText = 'OK, Bye!';
    } else {
      resultText = "Well Done , Kid!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      ),
    );
  }
}
