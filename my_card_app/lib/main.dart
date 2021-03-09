import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        body: SafeArea(
          child: Container(
            color: Colors.green,
            height: 100.0,
            width: 200.0,
            margin: EdgeInsets.all(100.0),
            padding: EdgeInsets.all(30.0),
            child: Text(
              'Aima',
              style: TextStyle(
                  color: Colors.grey[800],
                  fontWeight: FontWeight.bold,
                  fontSize: 40),
            ),
          ),
        ),
      ),
    );
  }
}
