import 'package:flutter/material.dart';

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

  // void answerOftheQustion(){
  //   print("Button pressed");
  // }

  @override
  Widget build(BuildContext context) {
    var question = [
      'What\'s your favorite IDE?',
      'What\'s your favorite Theme?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App bar'),
        ),
        body: Column(
          children: [
            Text(question[_indexQuestion]),
            RaisedButton(
              child: Text('Button 1'),
              onPressed: _answerQustion,
            ),
            RaisedButton(
              child: Text('Button 2'),
              onPressed: () => print('Answerd questin no two!'),
            ),
            RaisedButton(
              child: Text('Button 3'),
              onPressed: () {
                // .....
                print("Answered question three!");
              },
            ),
          ],
        ),
      ),
    );
  }
}
