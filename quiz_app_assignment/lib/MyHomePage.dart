import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Selection_one.dart';

class MyHomePage extends StatelessWidget {
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
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String holder = '';
  String dropdownvalue = 'True/False';

  List<String> Name = [
    'True/False',
    'Multiple Choice',
  ];

  void getDropDownItem() {
    setState(() {
      holder = dropdownvalue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Center(
          child: Text(
            'Quiz App',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'FredokaOne',
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 100.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                child: Text(
                  'Select One Option ...',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25.0,
                    fontFamily: 'Roboto-Italic',
                    color: Colors.deepPurpleAccent,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: DropdownButton(
                  value: dropdownvalue,
                  icon: Icon(Icons.arrow_drop_down),
                  iconSize: 24,
                  elevation: 16,
                  style:
                      TextStyle(color: Colors.deepPurpleAccent, fontSize: 18),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String data) {
                    setState(() {
                      dropdownvalue = data;
                    });
                  },
                  items: Name.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 30.0),
                height: 60.0,
                width: 100.0,
                margin: EdgeInsets.all(10),
                child: RaisedButton(
                  onPressed: () {
                    getDropDownItem();
                    if (holder == 'True/False') {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => TrueFalse()));
                    }
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)),
                  padding: EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xff374ABE), Color(0xff64B6FF)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(30.0)),
                    child: Container(
                      constraints:
                          BoxConstraints(maxWidth: 250.0, minHeight: 50.0),
                      alignment: Alignment.center,
                      child: Text(
                        "Next",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Roboto-Italic',
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
