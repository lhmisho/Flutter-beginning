import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String
      questionText; // final tells that this will not change after initialize on Constructure

  Questions(this.questionText);

  Widget build(BuildContext context) {
    return Text(questionText);
  }
}
