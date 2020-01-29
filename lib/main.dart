import 'package:flutter/material.dart';

// void main(){
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int indexQuestion = 0;

  void answerQustion() {
    setState(() {
      indexQuestion += 1;
    });
    print(indexQuestion);
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
            Text(question[indexQuestion]),
            RaisedButton(
              child: Text('Button 1'),
              onPressed: answerQustion,
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
