import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app_assignment/components/AppBar.dart';
import 'package:quiz_app_assignment/components/drawer.dart';

class TrueFalse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TrueFQuiz(),
    );
  }
}

class TrueFQuiz extends StatefulWidget {
  @override
  _TrueFQuizState createState() => _TrueFQuizState();
}

class _TrueFQuizState extends State<TrueFQuiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      drawer: drawer(),
    );
  }
}
