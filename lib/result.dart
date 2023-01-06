import 'package:flutter/material.dart';
import 'main.dart';
class Result extends StatelessWidget {
  final Function() resetQuiz;
  final int resultScore;

  const Result(this.resetQuiz, this.resultScore);

  String get resultPhrase {
    String resultText;
    if (resultScore == 5) {
      resultText = 'You Are Awesome!';
    } else if (resultScore <= 4 && resultScore >= 1) {
      resultText = 'Pretty Likeable!';
    } else {
      resultText = 'You Are So Bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold, color: b),
          ),
          Text(
            'You Got:',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: b),
          ),
          Text(
            '${resultScore}/5',
            style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold, color: b),
          ),
          Text(
            'App Created By Omar Ameer :)',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: b),
          ),
          TextButton(
            onPressed: resetQuiz,
            child: const Text(
              'Restart The App',
              style: TextStyle(fontSize: 25),
            ),
          )
        ],
      ),
    );
  }
}
