import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler; //pointeur sur la fonction answerQuestion

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.blue,
     // textColor: Colors.white,
      child: ElevatedButton(onPressed: selectHandler, child: Text('Answer1')),
    );
  }
}
