import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:quiz_app_assignment/MyHomePage.dart';

Widget appBar() {
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
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(
          Icons.refresh,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      IconButton(
        icon: Icon(
          Icons.close_rounded,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    ],
  );
}
