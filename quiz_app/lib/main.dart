import 'package:flutter/material.dart';
import 'package:quiz_app/QuizApp.dart';

void main() {
  runApp(Quiz_App());
}

class Quiz_App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            'Quiz App',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizApp(),
          ),
        ),
      ),
    );
  }
}
