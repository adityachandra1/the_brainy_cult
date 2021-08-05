import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const Result({ Key? key }) : super(key: key);
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    var resultText = 'Try Again next time, You are not fit for the Brainy Cult right now';
    if (resultScore >= 601 ) {
      resultText = "Wow! That's a perfect score, Welcome to the brainy Cult";
    } else if (resultScore >= 500 && resultScore <= 600) {
      resultText = 'You are a member of the Brainy Cult now on!';
    } else if (resultScore <= -6000) {
      resultText = "Try Not Skipping all questions from next time";
    }else if (resultScore >= 400 && resultScore < 500) {
      resultText = 'You are a member of the Brainy Cult now on!';
    }else if (resultScore >= 100 && resultScore < 400) {
      resultText = 'OK, Get Good';
    }else if (resultScore < 0) {
      resultText = 'Bad Performance';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            height: 40,
          ),
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.grey[900]),
            textAlign: TextAlign.center,
          ),
           Container(
            height: 40,
          ),
          TextButton(
            child: Text('Give me one more chance! I can do better!'),
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
