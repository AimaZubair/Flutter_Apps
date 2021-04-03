import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Rolling Dice',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Color.fromRGBO(15, 157, 88, 1),
        ),
        body: Dice(),
      ),
    );
  }
}

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  // ignore: non_constant_identifier_names
  int dice_no = 1;
  int dice_no1 = 1;
  int dice_no2 = 1;
  int dice_no3 = 1;
  void update() {
    setState(() {
      //Random.nextInt(n) returns random integer rom 0 to n-1
      dice_no = Random().nextInt(6) + 1;
    });
  }

  void update2() {
    setState(() {
      //Random.nextInt(n) returns random integer rom 0 to n-1
      dice_no1 = Random().nextInt(6) + 1;
    });
  }

  void update3() {
    setState(() {
      //Random.nextInt(n) returns random integer rom 0 to n-1
      dice_no2 = Random().nextInt(6) + 1;
    });
  }

  void update4() {
    setState(() {
      //Random.nextInt(n) returns random integer rom 0 to n-1
      dice_no3 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Total Count = 10',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 30.0, left: 10.0),
              height: 150.0,
              child: FlatButton(
                  child: Image.asset('images/dice$dice_no.png'),
                  onPressed: () {
                    update();
                  }),
            ),
            Container(
              padding: EdgeInsets.only(top: 30.0, left: 40.0),
              height: 150.0,
              child: FlatButton(
                  child: Image.asset('images/dice$dice_no1.png'),
                  onPressed: () {
                    update2();
                  }),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 50.0, left: 10.0),
              height: 170.0,
              child: FlatButton(
                  child: Image.asset('images/dice$dice_no2.png'),
                  onPressed: () {
                    update3();
                  }),
            ),
            Container(
              padding: EdgeInsets.only(top: 50.0, left: 40.0),
              height: 170.0,
              child: FlatButton(
                  child: Image.asset('images/dice$dice_no3.png'),
                  onPressed: () {
                    update4();
                  }),
            ),
          ],
        ),
      ],
    );
  }
}
