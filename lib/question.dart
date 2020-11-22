import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
      child: Text(questionText,
          style: TextStyle(fontSize: 23), textAlign: TextAlign.center),
    );
  }
}
