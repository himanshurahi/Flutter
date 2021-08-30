import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  VoidCallback AnswerPressed;

  Answer(this.AnswerPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.blueAccent),
        child: Text('Answer 1'),
        onPressed: AnswerPressed,
      ),
    );
  }
}
