import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const Result({ Key? key }) : super(key: key);
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);
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
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text('Im not Satisfied with my result'),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
