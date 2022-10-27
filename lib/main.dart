import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('TaxiPartner'),
        ),
        body: Column(
          children: [
            Text('the question!'),
            ElevatedButton(onPressed: null, child: Text('Answer1')),
            ElevatedButton(onPressed: null, child: Text('Answer2')),
            ElevatedButton(onPressed: null, child: Text('Answer3')),
          ],
        ),
      ),
    );
  }
}
