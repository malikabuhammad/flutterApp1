import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer choosen ');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what is your favorite color? ',
      'what is your favorite animal ?'
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App '),
          ),
          body: Column(
            children: <Widget>[
              Text(questions.elementAt(0)),
              RaisedButton(
                child: Text('Answer 1 '),
                onPressed: answerQuestion,
              ),
              RaisedButton(
                child: Text('Answer 2 '),
                onPressed: () => print('answer 2 choosen'),
              ),
              RaisedButton(
                child: Text('Answer 3 '),
                onPressed: () => print('answer 3 choosen '),
              ),
            ],
          )),
    );
  }
}
