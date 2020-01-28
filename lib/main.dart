import 'package:flutter/material.dart';

// void main(){
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
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
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Button 2'),
              onPressed: null,
            ),
            RaisedButton(
              child: Text('Button 3'),
              onPressed: null,
            ),
          ],
        ),
      ),
    );
  }
}
