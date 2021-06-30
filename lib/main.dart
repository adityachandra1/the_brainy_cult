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
      'questionText': 'Whats your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 40},
        {'text': 'Red', 'score': 100},
        {'text': 'Blue', 'score': 50},
        {'text': 'Green', 'score': 60},
      ],
    },
    {
      'questionText': 'What\'s your favourite hobby?',
      'answers': [
        {'text': 'Drawing', 'score': 40},
        {'text': 'Gaming', 'score': 40},
        {'text': 'Cooking', 'score': 70},
        {'text': 'Hunting', 'score': 50},
        {'text': 'Procrastinating', 'score': 100},
      ],
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Hippo', 'score': 40},
        {'text': 'Elephant', 'score': 40},
        {'text': 'Ant', 'score': 100},
        {'text': 'Worm', 'score': 50},
        {'text': 'Pikachu', 'score': 60},
      ],
    },
    {
      'questionText': 'What\'s your favourite food?',
      'answers': [
        {'text': 'Black', 'score': 40},
        {'text': 'Pizza', 'score': 100},
        {'text': 'Pasta', 'score': 50},
        {'text': 'Chicken', 'score': 60},
      ],
    },
    {
      'questionText': 'What\'s your favourite game?',
      'answers': [
        {'text': 'GTA', 'score': 40},
        {'text': 'PUBG', 'score': 100},
        {'text': 'Hitman', 'score': 50},
        {'text': 'Tomb Raider', 'score': 60},
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
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions)
              : Result(_totalScore , _resetQuiz),)
    );
  }
}
