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
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                color: Colors.green,
                height: 100.0,
                width: 100.0,
                child: Text('Aima'),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                color: Colors.white,
                height: 100.0,
                width: 100.0,
                child: Text('Aima'),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                color: Colors.blue,
                height: 100.0,
                width: 100.0,
                child: Text('Aima'),
              ),
              Container(
                width: double.infinity,
                height: 10.0,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
