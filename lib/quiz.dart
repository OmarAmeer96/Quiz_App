import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {

  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function(int s) answerQuestion;

  Quiz(this.question, this.questionIndex, this.answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(question[questionIndex]['questionText'].toString()),
        ...(question[questionIndex]['answers'] as List<Map<String, Object>>).map((e) {
          return Answer(() => answerQuestion(int.parse(e['score'].toString())), e['text'].toString());
        }).toList()
      ],
    );
  }
}
