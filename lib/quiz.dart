import 'package:flutter/material.dart';
import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function answerQuestion;

  Quiz(this.question, this.questionIndex, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question[questionIndex]["questionText"]),
        ...(question[questionIndex]["answers"] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer["score"]), answer["text"]);
        }).toList(),
      ],
    );
  }
}
