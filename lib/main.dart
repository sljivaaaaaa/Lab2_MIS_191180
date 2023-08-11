import 'package:flutter/material.dart';

import './model/question.dart';
import './widgets/clothing_answer.dart';
import './widgets/clothing_question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  void _iWasTapped() {
    setState(() {
      _questionIndex += 1;
    });
  }

  var questions = [
    Question(
      questionText: "Select store:",
      answers: [
        'Adidas',
        'Nike',
        'Reebok',
        'Puma',
      ],
    ),
    Question(
      questionText: "Select category:",
      answers: [

        'Shirts',
        'Shoes',
        'Tops',
        'Skirts',
        'Sweaters',
        'Dresses',
        'Jeans',
      ],
    ),
    Question(
      questionText: "Select fabric/material",
      answers: [
        'Cotton',
        'Denim',
        'Leather',
        'Polyester',
        'Silk',
        'Wool',
        'Linen',
        'Velvet',
      ],
    ),
  ];
  var _questionIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "lab2 - 191180",
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text("Clothing Store"),
            ],
          ),
        ),
        body: Column(
          children: [
            PizzaQuestion(questions[_questionIndex].questionText),
            ...(questions[_questionIndex].answers).map((answer) {
              return PizzaAnswer(_iWasTapped, answer);
            }),
          ],
        ),
      ),
    );
  }
}
