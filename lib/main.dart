import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AppState();
  }
}

class _AppState extends State<App> {
  var _index = 0;
  var abl = true;
  var question = [
    {
      'questionText': 'what\'s your favt color',
      'answer': ['Red', 'Green', 'Blue', 'Black']
    },
    {
      'questionText': 'what\'s your favt animal',
      'answer': ['Dog', 'Cat', 'Han']
    },
  ];
  void _questionAnswer() {
    setState(() {
      if (_index < question.length) {
        _index = _index + 1;
      } else {
        abl = false;
        _index = 0;
      }
    });

    print(_index);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: _index < question.length
            ? Quiz(question, _questionAnswer, _index)
            : Result(),
      ),
    );
  }
}
