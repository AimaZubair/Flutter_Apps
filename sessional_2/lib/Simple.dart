import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sessional_2/components/AppBar.dart';
import 'package:sessional_2/components/drawer.dart';

class Simple extends StatelessWidget {
  const Simple({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Simplecal(),
    );
  }
}

class Simplecal extends StatefulWidget {
  const Simplecal({Key key}) : super(key: key);

  @override
  _SimplecalState createState() => _SimplecalState();
}

class _SimplecalState extends State<Simplecal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      drawer: drawer(),
    );
  }
}
