import 'package:flutter/material.dart';
import 'package:Quizzle/quiz.dart';
import 'package:Quizzle/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _totalScore = 0;
  int _questionIndex = 0;

  int number = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void answerQuestion(score) {
    number = score;
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    print("_questionindex = $_questionIndex");
    print("number = $number");
    print("_totalScore = $_totalScore");
  }

  final List<Map<String, Object>> question = [
    {
      "questionText": "Which planet is closest to the sun ?",
      "answers": [
        {"text": "Venus", "score": 00},
        {"text": "Neptune", "score": 00},
        {"text": "Mercury", "score": 10},
        {"text": "Saturn", "score": 00},
      ]
    },
    {
      "questionText": "What's the biggest animal in the world ?",
      "answers": [
        {"text": "Saltwater Crocodile", "score": 00},
        {"text": "The blue whale", "score": 10},
        {"text": "Brown Bear", "score": 00},
        {"text": "African Elephant", "score": 00},
      ]
    },
    {
      "questionText": "Who painted the Mona Lisa ?",
      "answers": [
        {"text": "Leonardo da Vinci", "score": 10},
        {"text": "Michelangelo", "score": 00},
        {"text": "Pablo Picasso", "score": 00},
        {"text": "Salvador Dalí", "score": 00},
      ]
    },
    {
      "questionText": "How many elements are there in the periodic table ?",
      "answers": [
        {"text": "74 elements", "score": 00},
        {"text": "102 elements", "score": 00},
        {"text": "86 elements", "score": 00},
        {"text": "118 elements", "score": 10},
      ]
    },
    {
      "questionText": "What's a baby rabbit called ?",
      "answers": [
        {"text": "A hatchling", "score": 00},
        {"text": "A poult", "score": 00},
        {"text": "A kit", "score": 10},
        {"text": "A crias", "score": 00},
      ]
    },
    {
      "questionText": "Which of Shakespeare’s plays is the longest ?",
      "answers": [
        {"text": "Hamlet", "score": 10},
        {"text": "Macbeth", "score": 00},
        {"text": "The Tempest", "score": 00},
        {"text": "Othello", "score": 00},
      ]
    },
    {
      "questionText": "When did the Cold War end ?",
      "answers": [
        {"text": "1939", "score": 00},
        {"text": "1918", "score": 00},
        {"text": "1989", "score": 10},
        {"text": "1945", "score": 00},
      ]
    },
    {
      "questionText": "What is the longest river in the world ?",
      "answers": [
        {"text": "Amazon River", "score": 00},
        {"text": "Mississippi River", "score": 00},
        {"text": "Yellow River", "score": 00},
        {"text": "The Nile River", "score": 10},
      ]
    },
    {
      "questionText": "What is the capital city of Australia ?",
      "answers": [
        {"text": "Sydney", "score": 00},
        {"text": "Melbourne", "score": 00},
        {"text": "Canberra", "score": 10},
        {"text": "Hobart", "score": 00},
      ]
    },
    {
      "questionText": "What is the world's biggest spider ?",
      "answers": [
        {"text": "Goliath birdeater", "score": 10},
        {"text": "Wolf spider", "score": 00},
        {"text": "Badumna", "score": 00},
        {"text": "Zoropsidae", "score": 00},
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFEEF0F7),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
          title: Text(
            "Quizzle",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xFF4F59DF),
                fontSize: 30),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  color: Color(0xFFEEF0F7),
                  margin: EdgeInsets.all(10.0),
                  child: _questionIndex < question.length
                      ? Quiz(question, _questionIndex, answerQuestion)
                      : Result(_resetQuiz, _totalScore)),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.deepPurpleAccent,
          child: Icon(Icons.arrow_back),
          onPressed: () {
            _totalScore -= number;

            setState(() {
              if (_questionIndex > 0) {
                _questionIndex--;
                if (_questionIndex == 0) {
                  number = 0;
                }
              }
            });
            print("_questionindex = $_questionIndex");
            print("number = $number");
            print("_totalScore = $_totalScore");
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }
}
