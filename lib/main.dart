import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

Color w = Colors.white;
Color b = Colors.black;

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;

  bool isSwiched = false;

  void answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  final List<Map<String, Object>> _question = [
    {
      'questionText': "5 x 10 = ...",
      'answers': [
        {'text': '500', 'score': 0},
        {'text': '64', 'score': 0},
        {'text': '50', 'score': 1},
        {'text': '698', 'score': 0},
      ]
    },
    {
      'questionText': "256 / 2 = ...",
      'answers': [
        {'text': '128', 'score': 1},
        {'text': '512', 'score': 0},
        {'text': '125', 'score': 0},
        {'text': '200', 'score': 0},
      ]
    },
    {
      'questionText': "2560 + 440 = ...",
      'answers': [
        {'text': '3000', 'score': 1},
        {'text': '3250', 'score': 0},
        {'text': '2890', 'score': 0},
        {'text': '2666', 'score': 0},
      ]
    },
    {
      'questionText': "850 - 250 = ...",
      'answers': [
        {'text': '350', 'score': 0},
        {'text': '620', 'score': 0},
        {'text': '500', 'score': 0},
        {'text': '600', 'score': 1},
      ]
    },
    {
      'questionText': "Omar is The Best Right?",
      'answers': [
        {'text': 'Yes', 'score': 1},
        {'text': 'No', 'score': 0},
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Quiz App',
            style: TextStyle(color: w),
          ),
          backgroundColor: Colors.blueGrey,
          actions: [
            Switch(
              value: isSwiched,
              onChanged: (value) {
                setState(() {
                  isSwiched = value;
                  if (isSwiched == true) {
                    b = Colors.white;
                    w = Colors.black;
                  } else {
                    w = Colors.white;
                    b = Colors.black;
                  }
                });
              },
              activeColor: Colors.white,
              inactiveThumbColor: Colors.black,
              
            )
          ],
        ),
        body: Container(
            color: w,
            child: _questionIndex < _question.length
                ? Quiz(_question, _questionIndex, answerQuestion)
                : Result(_resetQuiz, _totalScore)),
      ),
    );
  }
}
