import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler; //pointeur sur la fonction answerQuestion
  final String answer;

  Answer(this.selectHandler,this.answer);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.blue,
     // textColor: Colors.white,
      child: ElevatedButton(onPressed: selectHandler, child: Text(answer)),
    );
  }
}
