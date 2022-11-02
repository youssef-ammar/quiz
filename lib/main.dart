import 'package:flutter/material.dart';
import 'package:quiz/quiz.dart';
import './question.dart';
import './answer.dart';
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

  void _answerQuestion() {
    setState(() {
      questionIndex += 1;
    });

    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    final questions = [
      {
        'questionText': 'What\'s your favourite color',
        'answers': ['black', 'blue', 'red', 'green']
      },
      {
        'questionText': 'What\'s your favourite animal',
        'answers': ['black', 'blue', 'red', 'green']
      },
      {
        'questionText': 'What\'s your favourite instructor',
        'answers': ['Max', 'Max', 'Max', 'Max']
      }
    ];
    //print ();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('TaxiPartner'),
        ),
        body: questionIndex < questions.length
            ? Quiz(_answerQuestion, questions, questionIndex)
            : Result(),
      ),
    );
  }
}
