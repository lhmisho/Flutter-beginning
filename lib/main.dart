import 'package:flutter/material.dart';
import './questions.dart';
import './answer.dart';
// void main(){
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _indexQuestion = 0;

  void _answerQustion() {
    setState(() {
      _indexQuestion += 1;
    });
    print(_indexQuestion);
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      'What\'s your favorite IDE?',
      'What\'s your favorite Theme?',
      'What\'s your favorite Programming Language',
      'What\'s your favorite Machine',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App bar'),
        ),
        body: Column(
          children: [
            Questions(question[_indexQuestion]),
            Answer(_answerQustion),
            Answer(_answerQustion),
            Answer(_answerQustion),
          ],
        ),
      ),
    );
  }
}
