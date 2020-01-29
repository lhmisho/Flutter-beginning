import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String
      questionText; // final tells that this will not change after initialize on Constructure

  Questions(this.questionText);

  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 24,),
        textAlign: TextAlign.center,
      ),
    );
  }
}
