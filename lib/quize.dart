import 'package:flutter/material.dart';
import './answer.dart';
import './questions.dart';

class Quize extends StatelessWidget {
  final Function answerQustion;
  final List<Map<String, Object>> questions;
  final int indexQuestion;

  Quize({
    @required this.answerQustion,
    @required this.questions,
    @required this.indexQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Questions(questions[indexQuestion]['question']),
        ...(questions[indexQuestion]['answers'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => answerQustion(answer['score']), answer['text']);
        }).toList(),
      ],
    );
  }
}
