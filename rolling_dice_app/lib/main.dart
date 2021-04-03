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
  int sum_1 = 0;
  int sum_2 = 0;
  int sum_3 = 0;
  int sum_4 = 0;
  void update() {
    setState(() {
      //Random.nextInt(n) returns random integer rom 0 to n-1
      dice_no = Random().nextInt(6) + 1;
      sum_1 = sum_1 + dice_no;
    });
  }

  void update2() {
    setState(() {
      //Random.nextInt(n) returns random integer rom 0 to n-1
      dice_no1 = Random().nextInt(6) + 1;
      sum_2 = sum_2 + dice_no1;
    });
  }

  void update3() {
    setState(() {
      //Random.nextInt(n) returns random integer rom 0 to n-1
      dice_no2 = Random().nextInt(6) + 1;
      sum_3 = sum_3 + dice_no2;
    });
  }

  void update4() {
    setState(() {
      //Random.nextInt(n) returns random integer rom 0 to n-1
      dice_no3 = Random().nextInt(6) + 1;
      sum_4 = sum_4 + dice_no3;
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
            Column(
              children: <Widget>[
                Text(
                  'Player 1',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20.0, left: 10.0),
                  height: 150.0,
                  child: FlatButton(
                      child: Image.asset('images/dice$dice_no.png'),
                      onPressed: () {
                        update();
                      }),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Text(
                  'Player 2',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20.0, left: 40.0),
                  height: 150.0,
                  child: FlatButton(
                      child: Image.asset('images/dice$dice_no1.png'),
                      onPressed: () {
                        update2();
                      }),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text(
                    'Player 3',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 36.0, left: 10.0),
                  height: 170.0,
                  child: FlatButton(
                      child: Image.asset('images/dice$dice_no2.png'),
                      onPressed: () {
                        update3();
                      }),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text(
                    'Player 4',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 35.0,
                    left: 35.0,
                  ),
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
        ),
        Padding(
          padding: ,
        ),

      ],
    );
  }
}
