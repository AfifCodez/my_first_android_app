import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var answerIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
      answerIndex = answerIndex + 1;
    });
    print(questionIndex);
    print(answerIndex);
  }

  Widget build(BuildContext context) {
    var questions = const [
      'What\'s your favourite car?',
      'What\'s your favourite color?',
      'What\'s your favourite City?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz in normal List'),
        ),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            // ignore: deprecated_member_use
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            // ignore: deprecated_member_use
            RaisedButton(child: Text('Answer 2'), onPressed: answerQuestion),
            // ignore: deprecated_member_use
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () => answerQuestion,
            )
          ],
        ),
      ),
    );
  }
}
