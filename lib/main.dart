import 'package:flutter/material.dart';

// void main(){
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  void answerOftheQustion() => print("Answer chossen");
  // void answerOftheQustion(){
  //   print("Button pressed");
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App bar'),
        ),
        body: Column(
          children: [
            Text('The questions!'),
            RaisedButton(
              child: Text('Button 1'),
              onPressed: answerOftheQustion,
            ),
            RaisedButton(
              child: Text('Button 2'),
              onPressed: () => print('Answerd questin no two!'),
            ),
            RaisedButton(
              child: Text('Button 3'),
              onPressed: (){
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
