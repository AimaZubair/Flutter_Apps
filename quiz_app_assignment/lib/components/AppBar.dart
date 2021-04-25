
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:quiz_app_assignment/MyHomePage.dart';
import 'package:quiz_app_assignment/components/Score.dart';

Widget appBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.deepPurple,
    title: Center(
      child: Text(
        'Quiz App',
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'FredokaOne',
        ),
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(
          Icons.home,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => MyHomePage()));
        },
      ),
      IconButton(
        icon: Icon(
          Icons.close_rounded,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ScoreScreen()));
        },
      ),
    ],
  );
}
