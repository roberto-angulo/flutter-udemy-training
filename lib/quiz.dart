import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> listOfQuestions;
  final int indexQuestion;
  final Function methodOnClickAnswerButton;
  Quiz(
      {@required this.listOfQuestions,
      @required this.indexQuestion,
      @required this.methodOnClickAnswerButton});
  Widget build(BuildContext context) {
    return (Column(
      children: [
        Question(listOfQuestions[indexQuestion]["questionText"]),
        ...(listOfQuestions[indexQuestion]["answers"]
                as List<Map<String, Object>>)
            .map((currentAnswer) => Answer(currentAnswer["text"],
                () => methodOnClickAnswerButton(currentAnswer["points"])))
            .toList()
      ],
    ));
  }
}
