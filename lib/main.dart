import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var qindex = 0;
  void answer() {
    setState(() {
      qindex = qindex + 1;
    });
  }

  var questions = [
    {
      'questionText': 'Your City',
      'answers': ['Sonipat', 'New Delhi']
    },
    {
      'questionText': 'Marks in 10th class',
      'answers': ['567', '456']
    },
    {
      'questionText': 'Fav Animal',
      'answers': ['Dog', 'Cat']
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("App Bar")),
      body: Column(
        children: [
          Question(questions[qindex]['questionText']),
          ...(questions[qindex]['answers'] as List)
              .map((ans) => Answer(answer, ans))
        ],
      ),
    ));
  }
}
