import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  VoidCallback AnswerPressed;
  String AnswerText;

  Answer(this.AnswerPressed, this.AnswerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: Colors.blueAccent),
        child: Text(AnswerText),
        onPressed: (AnswerPressed),
      ),
    );
  }
}
