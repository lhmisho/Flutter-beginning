import 'package:first_app/result.dart';
import 'package:flutter/material.dart';
import './quize.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _indexQuestion = 0;
  int _totalScore = 0;

  final _questions = const [
    {
      'question': 'What\'s your favorite IDE?',
      'answers': [
        {'text': 'intelIj', 'score': 10},
        {'text': 'pycharm', 'score': 10},
        {'text': 'vscode', 'score': 8},
        {'text': 'sublime', 'score': 5}
      ]
    },
    {
      'question': 'What\'s your favorite Theme?',
      'answers': [
        {'text': 'cobalt2', 'score': 5},
        {'text': 'dracula', 'score': 9},
        {'text': 'material', 'score': 10},
        {'text': 'dark', 'score': 10}
      ]
    },
    {
      'question': 'What\'s your favorite Programming Language',
      'answers': [
        {'text': 'c', 'score': 5},
        {'text': 'c++', 'score': 10},
        {'text': 'java', 'score': 10},
        {'text': 'python', 'score': 10},
      ]
    },
    {
      'question': 'What\'s your favorite Machine',
      'answers': [
        {'text': 'HP', 'score': 5},
        {'text': 'DEL', 'score': 8},
        {'text': 'apple', 'score': 10},
        {'text': 'lenovo', 'score': 8}
      ]
    },
  ];
  void _answerQustion(int score) {
    _totalScore += score;
    setState(() {
      _indexQuestion += 1;
    });
    print(_indexQuestion);
  }

  void _resetQuize(){
    setState(() {
      _totalScore = 0;
      _indexQuestion = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App bar'),
        ),
        body: _indexQuestion < _questions.length
            ? Quize(
                answerQustion: _answerQustion,
                questions: _questions,
                indexQuestion: _indexQuestion)
            : Result(_totalScore, _resetQuize),
      ),
    );
  }
}
