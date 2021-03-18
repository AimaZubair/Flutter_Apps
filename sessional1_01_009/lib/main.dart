import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80.0,
          backgroundColor: Colors.black,
          title: Center(
            child: Text(
              "Compose",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          leading: Icon(
            Icons.arrow_left_rounded,
            size: 30.0,
          ),
          actions: <Widget>[
            Icon(
              Icons.more_vert,
              size: 30.0,
            ),
          ],
        ),
        body: Container(
          color: Colors.tealAccent,
          height: 150.0,
          child: Row(
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                height: 35.0,
                width: 300.0,
                child: Column(
                  children: <Widget>[
                    Text(
                      "4 People",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                      ),
                    ),
                  ],
                ),
              ),
              Icon(Icons.arrow_forward_ios),
            ],
          ),
        ),
      ),
    );
  }
}
