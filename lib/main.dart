import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

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
    var questions = [
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
        body: Column(
          children: [
            Question(questions[questionIndex]['questionText'] as String),
            ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
            // Answer(_answerQuestion),
            // Answer(_answerQuestion),
            // Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
