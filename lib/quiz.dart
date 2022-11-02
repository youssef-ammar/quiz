import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final VoidCallback selecthandler;

  final List<Map<String, Object>> questions;
  final int questionIndex;

  Quiz(this.selecthandler, this.questions,this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answers'] as List<String>)
            .map((answer) {
          return Answer(selecthandler, answer);
        }).toList()
      ],
    );
  }
}
