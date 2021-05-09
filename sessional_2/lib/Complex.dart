import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sessional_2/components/AppBar.dart';
import 'package:sessional_2/components/drawer.dart';

class Complexcal extends StatelessWidget {
  const Complexcal({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  String output = "0";

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
        buttonText == "X") {
      num1 = double.parse(output);

      operand = buttonText;

      _output = "0";
    } else if (buttonText == ".") {
      if (_output.contains(".")) {
        print("Already conatains a decimals");
        return;
      } else {
        _output = _output + buttonText;
      }
    } else if (buttonText == "=") {
      num2 = double.parse(output);

      if (operand == "+") {
        _output = (num1 + num2).toString();
      }
      if (operand == "-") {
        _output = (num1 - num2).toString();
      }
      if (operand == "x") {
        _output = (num1 * num2).toString();
      }
      if (operand == "/") {
        _output = (num1 / num2).toString();
      }

      num1 = 0.0;
      num2 = 0.0;
      operand = "";
    } else {
      _output = _output + buttonText;
    }

    print(_output);

    setState(() {
      output = double.parse(_output).toStringAsFixed(2);
    });
  }

  Widget buildButton(String buttonText) {
    return new Expanded(
      child: new OutlineButton(
        padding: new EdgeInsets.all(24.0),
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
                  buildButton("7"),
                  buildButton("8"),
                  buildButton("9"),
                  buildButton("/")
                ]),
                new Row(children: [
                  buildButton("4"),
                  buildButton("5"),
                  buildButton("6"),
                  buildButton("X")
                ]),
                new Row(children: [
                  buildButton("1"),
                  buildButton("2"),
                  buildButton("3"),
                  buildButton("-")
                ]),
                new Row(children: [
                  buildButton("."),
                  buildButton("0"),
                  buildButton("00"),
                  buildButton("+")
                ]),
                new Row(children: [
                  buildButton("CLEAR"),
                  buildButton("="),
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}