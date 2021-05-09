import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sessional_2/Simple.dart';
import 'package:sessional_2/Complex.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropDown();
  }
}

class DropDown extends StatefulWidget {
  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  String holder = '';
  String dropdownvalue = 'Simple';

  List<String> Name = [
    'Simple',
    'Complex',
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
        backgroundColor: Colors.green,
        title: Center(
          child: Text(
            'Calculator App',
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
                  'Select One Level ...',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 25.0,
                    fontFamily: 'Roboto-Italic',
                    color: Colors.green,
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
                  style: TextStyle(color: Colors.green, fontSize: 18),
                  underline: Container(
                    height: 2,
                    color: Colors.green,
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
                    if (holder == 'Simple') {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Simple()));
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Complexcal()));
                    }
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80.0)),
                  padding: EdgeInsets.all(0.0),
                  child: Ink(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.green,
                            Colors.greenAccent,
                            Colors.redAccent
                          ],
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
