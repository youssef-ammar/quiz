import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion(){

    print("answer 1 chosen!");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('TaxiPartner'),
        ),
        body: Column(
          children: [
            Text('the question!'),
            ElevatedButton(onPressed: answerQuestion, child: Text('Answer1')),
            ElevatedButton(onPressed: ()=> print("answer 2 chosen!"), child: Text('Answer2')),
            ElevatedButton(onPressed: ()=>print("answer 3 chosen!"), child: Text('Answer3')),
          ],
        ),
      ),
    );
  }
}
