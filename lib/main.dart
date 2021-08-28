import 'package:flutter/material.dart';

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

  var questions = ['this is q 1', 'this is q2'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text("App Bar")),
      body: Column(
        children: <Widget>[
          Text(questions[qindex]),
          ElevatedButton(child: Text('Answer 1'), onPressed: answer),
          ElevatedButton(
              child: Text('Answer 2'),
              onPressed: () => {print('Yeahhh answer 2')}),
          ElevatedButton(child: Text('Answer 3'), onPressed: answer)
        ],
      ),
    ));
  }
}
