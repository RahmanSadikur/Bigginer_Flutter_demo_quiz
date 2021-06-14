import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback _answer;
  final String _answerText;
  Answer(this._answer, this._answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blueGrey,
        child: Text(_answerText),
        onPressed: _answer,
      ),
    );
  }
}
