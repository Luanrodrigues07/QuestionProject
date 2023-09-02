import 'package:flutter/material.dart';
import './question.dart';
import './answers.dart';

main() => runApp(QuestionApp());

class _AnswerAppState extends State<QuestionApp> {
  var _selectQuestion = 0;

  void _answer() {
    setState(() {
      _selectQuestion++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final questions = [
      'Qual a sua Cor Favorita ?',
      'Qual é o seu animal Favorito ?'
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Question(questions[_selectQuestion]),
            Answer('Answer1', _answer),
            Answer('Answer1', _answer),
            Answer('Answer1', _answer)
          ],
        ),
      ),
    );
  }
}

class QuestionApp extends StatefulWidget {
  _AnswerAppState createState() {
    return _AnswerAppState();
  }
}
