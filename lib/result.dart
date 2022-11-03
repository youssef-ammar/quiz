import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final totalscore;
  final VoidCallback resetquiz;

  Result(this.totalscore, this.resetquiz);

  String get resultPhrase {
    String result;
    if (totalscore >= 20)
      result = "You are awesome";
    else if (totalscore >= 16)
      result = "Pretty likebale";
    else
      result = "So bad!";
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>
        [
         Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
         TextButton(onPressed: resetquiz, child: Text('Restart Quiz',style: TextStyle(color: Colors.deepPurpleAccent)),


         ),
    ]));
  }
}
