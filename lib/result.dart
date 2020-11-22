import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetCallback;
  Result(this.score, this.resetCallback);

  String get outputPhrase {
    String output;
    if (score < 10) {
      output = "You are so cute!";
    } else {
      output = "You are kind of dangerous!";
    }
    return output;
  }

  Widget build(BuildContext context) {
    return (Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          outputPhrase,
          style: TextStyle(fontSize: 29, fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
        Text(
          'Points gotten: $score',
          style: TextStyle(fontSize: 24),
        ),
        FlatButton(
          child: Text('Reset all'),
          onPressed: resetCallback,
        )
      ],
    )));
  }
}
