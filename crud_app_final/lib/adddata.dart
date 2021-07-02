import 'package:crud/main.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AddData extends StatefulWidget {
  @override
  _AddDataState createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  TextEditingController id = new TextEditingController();
  TextEditingController name = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController mobile = new TextEditingController();
  TextEditingController skill = new TextEditingController();
  TextEditingController bloodgroup = new TextEditingController();
  TextEditingController address = new TextEditingController();

  void addData() {
    var url = "http://192.168.1.100/dashboard/crud/adddata.php";
    http.post(url, body: {
      "id": id.text,
      "name": name.text,
      "mobile": mobile.text,
      "email": email.text,
      "address": address.text
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: new Text("Add Data"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(1.0),
          child: ListView(
            children: <Widget>[
              new Column(
                children: <Widget>[
                  /*
                  new TextField(
                    controller: id,
                    decoration: new InputDecoration(
                      hintText: "UID",
                      labelText: "UID",
                    ),
                  ),
                   */
                  new TextField(
                    controller: name,
                    decoration: new InputDecoration(
                      labelText: "Name",
                    ),
                  ),
                  new TextField(
                    controller: email,
                    decoration: new InputDecoration(
                      labelText: "Email",
                    ),
                  ),
                  new TextField(
                    controller: mobile,
                    decoration: new InputDecoration(
                      labelText: "Mobile",
                    ),
                  ),
    
                  new TextField(
                    controller: address,
                    decoration: new InputDecoration(
                      labelText: "Address",
                    ),
                  ),
                  new Padding(padding: EdgeInsets.all(10.0)),
                  new RaisedButton(
                    onPressed: () {
                      addData();
                      //Navigator.of(context).pop();
                      Navigator.of(context).push(
                        new MaterialPageRoute(
                            builder: (BuildContext context) => new Home()),
                      );
                    },
                    child: new Text(
                      "Add Data",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    color: Colors.green,
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
