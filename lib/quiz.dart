import 'package:first_app/question.dart';
import 'package:flutter/material.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  //const Quiz({ Key? key }) : super(key: key);
  var _question;
  final int _index;
  final VoidCallback _answer;
  Quiz(this._question, this._answer, this._index);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Question(_question[_index]['questionText'].toString()),
          ...(_question[_index]['answer'] as List<String>).map((answer) {
            return Answer(_answer, answer);
          }).toList(),

          //RaisedButton(child: Text('Answer'), onPressed: _questionAnswer),
          //RaisedButton(child: Text('Answer'), onPressed: _questionAnswer),
        ],
      ),
    );
  }
}
