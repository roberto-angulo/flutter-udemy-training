import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

void main() => runApp(MyFirstApp());

/* our widget itself extends the StatefulWidget */
class MyFirstApp extends StatefulWidget {
  // We create a state from our class widget, that extends the State class
  State<StatefulWidget> createState() {
    // the widget has to return a state
    return MyFirstAppState();
  }
}

/* We have to extend the State class of type MyFirstApp, that is our app widget */
class MyFirstAppState extends State<MyFirstApp> {
  var indexQuestion = 0;
  var listOfQuestions = [
    {
      "questionText": "Which is your favorite dog breed?",
      "answers": [
        {"text": "Rottweiler", "points": 8},
        {"text": "Poddle", "points": 1},
        {"text": "Pitbull", "points": 10}
      ]
    },
    {
      "questionText": "What's your favorite movie?",
      "answers": [
        {"text": "Titanic", "points": 4},
        {"text": "Harry Potter", "points": 5},
        {"text": "La vida es bella", "points": 2}
      ]
    },
    {
      "questionText": "Which is your favorite city?",
      "answers": [
        {"text": "Oslo", "points": 3},
        {"text": "New York", "points": 5},
        {"text": "Paris", "points": 4}
      ]
    }
  ];
  var totalScore = 0;
  void methodOnClickAnswerButton(int score) {
    totalScore += score;
    setState(() => indexQuestion++);
  }

  void resetAll() {
    setState(() {
      totalScore = 0;
      indexQuestion = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text('My first app')),
            body: indexQuestion < listOfQuestions.length
                ? Quiz(
                    listOfQuestions: listOfQuestions,
                    indexQuestion: indexQuestion,
                    methodOnClickAnswerButton: methodOnClickAnswerButton)
                : Result(totalScore, resetAll)));
  }
}
