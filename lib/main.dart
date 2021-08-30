import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import 'package:flutter/foundation.dart';

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
  var questions = [
    {
      'questionText': 'Your City',
      'answers': ['Sonipat', 'New Delhi'],
      'score': 10
    },
    {
      'questionText': 'Marks in 10th class',
      'answers': ['567', '456'],
      'score': 15
    },
    {
      'questionText': 'Fav Animal',
      'answers': ['Dog', 'Cat'],
      'score': 25
    },
  ];
  int qindex = 0;
  int totalScore = 0;
  void answer() {
    if (qindex <= questions.length - 1) {
      totalScore += questions[qindex]['score'] as int;
    }

    setState(() {
      qindex = qindex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("App Bar")),
      body: qindex <= questions.length - 1
          ? Column(
              children: [
                Text(totalScore.toString()),
                Question(questions[qindex]['questionText']),
                ...(questions[qindex]['answers'] as List)
                    .map((ans) => Answer(answer, ans))
              ],
            )
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'data',
                  ),
                ],
              ),
            ),
    ));
  }
}
