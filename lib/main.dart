import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'If 1=3 , 2=3 , 3=5 , 4=4 , 5=4 . Then, 6=?',
      'answers': [
        {'text': '3', 'score': 100},
        {'text': '6', 'score': -30},
        {'text': '9', 'score': -30},
        {'text': '1', 'score': -30},
        {'text': 'Skip', 'score': -1000},
      ],
    },
    {
      'questionText': 'Which number is equivalent to 3^(4)÷3^(2)',
      'answers': [
        {'text': '3', 'score': -30},
        {'text': '1', 'score': -30},
        {'text': '27', 'score': -30},
        {'text': '9', 'score': 100},
        {'text': '18', 'score': -30},
        {'text': 'Skip', 'score': -1000},
      ],
    },
    {
      'questionText': 'How many feet are in a mile?',
      'answers': [
        {'text': '6900', 'score': 0},
        {'text': '5120', 'score': -30},
        {'text': '5200', 'score': -30},
        {'text': '5280', 'score': 100},
        {'text': '6000', 'score': -30},
        {'text': 'Skip', 'score': -1000},
      ],
    },
    {
      'questionText': 'If 13 x 12 = 651 & 41 x 23 = 448, then, 24 x 22 =?',
      'answers': [
        {'text': '420', 'score': -30},
        {'text': '924', 'score': 100},
        {'text': '900', 'score': -30},
        {'text': '1024', 'score': -30},
        {'text': 'Skip', 'score': -1000},
      ],
    },
    {
      'questionText': 'Marvin was 13 years old in 1870 and 8 years old in 1875. How is it possible?',
      'answers': [
        {'text': 'The dates are in AC', 'score': -30},
        {'text': '1875 was a leap year', 'score': -30},
        {'text': '1870 began on the vernal equinox', 'score': -30},
        {'text': 'The dates are in BC', 'score': 100},
        {'text': 'Skip', 'score': -1000},
      ],
    },
     {
      'questionText': 'If POST is 1234 and FLIRT is 56784 what is FROST?',
      'answers': [
        {'text': '582324', 'score': -30},
        {'text': '58243', 'score': 100},
        {'text': '52384', 'score': -30},
        {'text': '43285', 'score': -30},
        {'text': 'Skip', 'score': -1000},
      ],
    },
    {
      'questionText': 'How was the test?',
      'answers': [
        {'text': 'Hated It', 'score': -10},
        {'text': 'Okayish', 'score': 0},
        {'text': 'Easy', 'score': 0},
        {'text': 'Im bad at Math', 'score': 10},
        {'text': 'Skip', 'score': -1000},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex++;
    });
    print('Answer Choosen');
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more _questions!');
    } else {
      print('No _questions left');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("The Brainy Cult "),
        backgroundColor: Colors.grey[900],
        shadowColor: Colors.yellowAccent,

      ),
      body: _questionIndex < _questions.length
          ? Quiz(
              answerQuestion: _answerQuestion,
              questionIndex: _questionIndex,
              questions: _questions)
          : Result(_totalScore, _resetQuiz),
    ));
  }
}
