import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DropDown(),
    );
  }
}

class DropDown extends StatefulWidget {
  @override
  DropDownWidget createState() => DropDownWidget();
}

class DropDownWidget extends State<DropDown> {
  String holder = '';
  String holder_2 = '';

  String dropdownValue = 'blue';
  String dropdownValue_2 = '1';

  // To show Selected Item in Text.

  List<String> colorName = [
    'blue',
    'green',
    'purple',
    'pink',
    'white',
    'teal',
    'red'
  ];
  List<String> soundNo = ['1', '2', '3', '4', '5', '6', '7'];

  void getDropDownItem() {
    setState(() {
      holder = dropdownValue;
      holder_2 = dropdownValue_2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'XyloPhone App',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          DropdownButton(
            value: dropdownValue,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 24,
            elevation: 16,
            style: TextStyle(color: Colors.red, fontSize: 18),
            underline: Container(
              height: 2,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (String data) {
              setState(() {
                dropdownValue = data;
              });
            },
            items: colorName.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          DropdownButton(
            value: dropdownValue_2,
            icon: Icon(Icons.arrow_drop_down),
            iconSize: 24,
            elevation: 16,
            style: TextStyle(color: Colors.red, fontSize: 18),
            underline: Container(
              height: 2,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (String data) {
              setState(() {
                dropdownValue_2 = data;
              });
            },
            items: soundNo.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          Padding(
              padding: EdgeInsets.only(top: 30, bottom: 30),
              child:
                  //Printing Item on Text Widget
                  Text('Selected Item = ' + '$holder',
                      style: TextStyle(fontSize: 22, color: Colors.black))),
          Padding(
              padding: EdgeInsets.only(top: 30, bottom: 30),
              child:
                  //Printing Item on Text Widget
                  Text('Selected Item = ' + '$holder_2',
                      style: TextStyle(fontSize: 22, color: Colors.black))),
          RaisedButton(
            child: Text('Next'),
            onPressed: getDropDownItem,
            color: Colors.blue,
            textColor: Colors.white,
            padding: EdgeInsets.fromLTRB(12, 12, 12, 12),
          ),
        ],
      ),
    );
  }
}
