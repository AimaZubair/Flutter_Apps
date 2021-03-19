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
        body: Stack(
          children: <Widget>[
            Container(
              color: Colors.black,
              height: 400.0,
              child: Row(
                children: <Widget>[
                  Container(
                    color: Colors.teal,
                    height: 700.0,
                    child: Stack(
                      children: <Widget>[
                        Column(
                            // children: <Widget>[
                            // Text(
                            //  "4 People",
                            //style: TextStyle(
                            //  fontWeight: FontWeight.bold,
                            //  fontSize: 35.0,
                            //    ),
                            ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
