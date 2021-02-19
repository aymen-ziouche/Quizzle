import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function x;

  Answer(this.x, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: RaisedButton(
          elevation: 20,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
          color: Colors.deepPurpleAccent,
          textColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                answerText,
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          onPressed: x,
        ),
      ),
    );
  }
}
