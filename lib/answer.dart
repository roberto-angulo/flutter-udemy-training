import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function clickHandler;
  final String textAnswer;
  Answer(this.textAnswer, this.clickHandler);

  @override
  Widget build(BuildContext context) {
    return (Container(
        width: double.infinity,
        child: RaisedButton(
            child: Text(textAnswer),
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: clickHandler)));
  }
}
