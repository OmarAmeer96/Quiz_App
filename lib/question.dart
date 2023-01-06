import 'package:flutter/material.dart';
import 'main.dart';

class Question extends StatelessWidget {
  final String questionText;

  const Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.fromLTRB(0, 40, 0, 20),
        child: Text(
          questionText,
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: b,
          ),
          textAlign: TextAlign.center,
        ));
  }
}
