import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final Function resetHandler;

  Result(this.totalScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (totalScore >= 38) {
      resultText = 'You are awsome';
    } else if (totalScore >= 32) {
      resultText = 'You are greate';
    } else if (totalScore > 25) {
      resultText = 'You are good';
    } else {
      resultText = 'Not bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return (Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('play again'),
            textColor: Colors.blue,
            onPressed: resetHandler,
          )
        ],
      ),
    ));
  }
}
