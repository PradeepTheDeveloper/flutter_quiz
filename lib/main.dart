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
      'questionText': 'What are "Types"?',
      'answers': [
        {
          'text': 'Data types of values you work with in your code',
          'score': 10
        },
        {'text': 'The name types of variables in your code.', 'score': 0},
        {'text': 'Function arguments used in your code', 'score': 0},
        {'text': 'None of these!', 'score': 0},
      ],
    },
    {
      'questionText': 'What\'s the job of variables?',
      'answers': [
        {
          'text': 'Variables allow you to execute code whenever you want',
          'score': 0
        },
        {
          'text': 'Variables describe which type of data you\'re working with.',
          'score': 0
        },
        {
          'text': 'Variables hold data with which you can work in your code.',
          'score': 10
        },
        {'text': 'None of these!', 'score': 0},
      ],
    },
    {
      'questionText': 'What are functions?',
      'answers': [
        {
          'text': 'Functions can be instantiated to create objects.',
          'score': 0
        },
        {
          'text': 'Functions store data so that you can use it later.',
          'score': 0
        },
        {
          'text':
              'Functions hold code which you can call as often and whenever you want.',
          'score': 10
        },
        {'text': 'None of these!', 'score': 0},
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
    // var aBool = true;
    // aBool = false;

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = const ['Hello'];
    // dummy.add('Max');
    // print(dummy);
    // dummy = [];
    // questions = []; // does not work if questions is a const

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text('FLUTTER - TEKHEIST LEARNING HUB'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
