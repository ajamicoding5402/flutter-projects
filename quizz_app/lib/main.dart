// ignore_for_file: annotate_overrides, prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, avoid_print

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
    // ignore: todo
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _question = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answer': [
        {'text': 'Blue', 'score': 10},
        {'text': 'Green', 'score': 15},
        {'text': 'Red', 'score': 20},
        {'text': 'Yellow', 'score': 25}
      ],
    },
    {
      'questionText': 'what\'s your favorite animal?',
      'answer': [
        {'text': 'Tiger', 'score': 10},
        {'text': 'Capybara', 'score': 15},
        {'text': 'Monke', 'score': 20},
        {'text': 'Big Foot', 'score': 25}
      ],
    },
    {
      'questionText': 'what\'s your favorite show?',
      'answer': [
        {'text': 'Better Call Saul', 'score': 10},
        {'text': 'Breaking Bad', 'score': 15},
        {'text': 'Attack on Titan', 'score': 20},
        {'text': 'Re:zero', 'score': 25}
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _questionIndex < _question.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                question: _question,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
