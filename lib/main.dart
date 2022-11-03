import 'package:flutter/material.dart';
import 'package:quiz/quiz.dart';

import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var totalScore = 0;

  void _resetQuiz() {
    setState(() {
      questionIndex = 0;
      totalScore = 0;
    });
        }

  void _answerQuestion(int score) {
    totalScore += score;
    setState(() {
      questionIndex += 1;
    });

    print(totalScore);
  }

  @override
  Widget build(BuildContext context) {
    final questions = [
      {
        'questionText': 'What\'s your favourite color',
        'answers': [
          {'text': 'Black', 'score': 10},
          {'text': 'Blue', 'score': 8},
          {'text': 'Red', 'score': 5},
          {'text': 'Green', 'score': 3}
        ]
      },
      {
        'questionText': 'What\'s your favourite animal',
        'answers': [
          {'text': 'Cat', 'score': 10},
          {'text': 'Bird', 'score': 8},
          {'text': 'Rabbit', 'score': 5},
          {'text': 'Dog', 'score': 3}
        ]
      },
      {
        'questionText': 'What\'s your favourite instructor',
        'answers': [
          {'text': 'Max', 'score': 1},
          {'text': 'Max', 'score': 1},
          {'text': 'Max', 'score': 1},
          {'text': 'Max', 'score': 1}
        ]
      }
    ];
    //print ();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('TaxiPartner'),
        ),
        body: questionIndex < questions.length
            ? Quiz(
          answerQuestion: _answerQuestion,
          questions: questions,
          questionIndex: questionIndex,
        )
            : Result(totalScore,()=>_resetQuiz()),
      ),
    );
  }
}
