import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function q;
  final int resultScore;

  Result(this.q, this.resultScore);

  String get resultPhrase {
    String resultText;

    if (resultScore >= 70) {
      resultText = "Smart *-* !";
    } else if (resultScore >= 50) {
      resultText = "Pretty good !";
    } else {
      resultText = "   You're so dumb !\nGo read Some books";
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
            "Done !",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "Your score is : $resultScore",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 50,
          ),
          FlatButton(
            child: Text(
              "Restart the app",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurpleAccent),
            ),
            onPressed: q,
          ),
        ],
      ),
    );
  }
}
