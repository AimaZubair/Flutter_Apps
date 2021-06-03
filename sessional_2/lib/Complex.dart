import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sessional_2/components/AppBar.dart';
import 'package:sessional_2/components/drawer.dart';

class Complexcal extends StatelessWidget {
  const Complexcal({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Complex(),
    );
  }
}

class Complex extends StatefulWidget {
  const Complex({Key key}) : super(key: key);

  @override
  _ComplexState createState() => _ComplexState();
}

class _ComplexState extends State<Complex> {
  List<dynamic> all = [];
  String output = "0";
  int count = 0;

  String _output = "0";
  double num1 = 0.0;
  double num2 = 0.0;
  String operand = "";

  buttonPressed(String buttonText) {
    if (buttonText == "CLEAR") {
      _output = "0";
      num1 = 0.0;
      num2 = 0.0;
      operand = "";
    } else if (buttonText == "+" ||
        buttonText == "-" ||
        buttonText == "/" ||
        buttonText == "x") {
      num1 = double.parse(output);

      operand = buttonText;

      _output = "0";
    } else if (buttonText == ".") {
      if (_output.contains(".")) {
        print("Already contains a decimals");
        return;
      } else {
        _output = _output + buttonText;
      }
    } else if (buttonText == "=") {
      num2 = double.parse(output);

      if (operand == "+") {
        _output = (num1 + num2).toString();
        all.add(_output);
        count++;
      }
      if (operand == "-") {
        _output = (num1 - num2).toString();
        all.add(_output);
        count++;
      }
      if (operand == "x") {
        _output = (num1 * num2).toString();
        all.add(_output);
        count++;
      }
      if (operand == "/") {
        _output = (num1 / num2).toString();
        all.add(_output);
        count++;
      }
      print(all);

      num1 = 0.0;
      num2 = 0.0;
      operand = "";
    } else if (buttonText == "UNDO") {
      var prev = all[count - 1];
      count--;
      if (count == -1) {
        print("Nothing to undo");
        return;
      }
      _output = prev.toString();
    } else if (buttonText == "REDO") {
      var prev = all[count + 1];
      count++;
      _output = prev.toString();
    } else {
      _output = _output + buttonText;
    }

    print(_output);

    setState(() {
      output = double.parse(_output).toStringAsFixed(2);
    });
  }

  Widget buildButton(String buttonText, Color clr) {
    return new Expanded(
      child: new OutlineButton(
        padding: new EdgeInsets.all(24.0),
        hoverColor: clr,
        child: new Text(
          buttonText,
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
        onPressed: () => buttonPressed(buttonText),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      drawer: drawer(),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.centerRight,
              padding:
                  new EdgeInsets.symmetric(vertical: 24.0, horizontal: 12.0),
              child: new Text(
                output,
                style: new TextStyle(
                  fontSize: 48.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Divider(),
            ),
            Column(
              children: [
                Row(children: [
                  buildButton("7", Colors.white),
                  buildButton("8", Colors.white),
                  buildButton("9", Colors.white),
                  buildButton("/", Colors.white)
                ]),
                new Row(children: [
                  buildButton("4", Colors.white),
                  buildButton("5", Colors.white),
                  buildButton("6", Colors.white),
                  buildButton("x", Colors.white)
                ]),
                new Row(children: [
                  buildButton("1", Colors.white),
                  buildButton("2", Colors.white),
                  buildButton("3", Colors.white),
                  buildButton("-", Colors.white)
                ]),
                new Row(children: [
                  buildButton(".", Colors.white),
                  buildButton("0", Colors.white),
                  buildButton("00", Colors.white),
                  buildButton("+", Colors.white)
                ]),
                new Row(children: [
                  buildButton("CLEAR", Colors.green),
                  buildButton("=", Colors.deepOrangeAccent),
                ]),
                new Row(children: [
                  buildButton("UNDO", Colors.green),
                  buildButton("REDO", Colors.green),
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
