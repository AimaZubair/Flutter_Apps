import 'package:flutter/material.dart';
import 'package:crud/editdata.dart';
import 'package:http/http.dart' as http;
import 'package:crud/main.dart';

class Details extends StatefulWidget {
  List list;
  int index;

  Details({required this.list, required this.index});

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  void deleteData() {
    var url = "http://192.168.1.100/dashboard/crud/deletedata.php";

    http.post(url, body: {
      "id": widget.list[widget.index]['id'],
      //   'name': "NAME"
    });
  }

  void confirm() {
    AlertDialog alertDialog = new AlertDialog(
      content: Text(
          "Are you sure you want to delete this record ${widget.list[widget.index]['name']}"),
      actions: <Widget>[
        new RaisedButton(
          child: Text(
            "Ok Delete",
            style: new TextStyle(color: Colors.white),
          ),
          onPressed: () {
            deleteData();
            Navigator.of(context).push(new MaterialPageRoute(
              builder: (BuildContext context) => new Home(),
            ));
          },
          color: Colors.red,
        ),
        new RaisedButton(
          child: Text(
            "CANCEL",
            style: new TextStyle(color: Colors.white),
          ),
          color: Colors.green,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );

    showDialog(builder: (context) => alertDialog, context: context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("${widget.list[widget.index]['name']}"),
      ),
      body: new Container(
        padding: EdgeInsets.all(20.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              SizedBox(
                height: 40.0,
              ),
              new Text(
                widget.list[widget.index]['name'],
                style: new TextStyle(fontSize: 20.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              new Text(
                widget.list[widget.index]['email'],
                style: new TextStyle(fontSize: 20.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              new Text(
                widget.list[widget.index]['mobile'],
                style: new TextStyle(fontSize: 20.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              new Text(
                widget.list[widget.index]['skill'],
                style: new TextStyle(fontSize: 20.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              new Text(
                widget.list[widget.index]['bloodgroup'],
                style: new TextStyle(fontSize: 20.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              new Text(
                widget.list[widget.index]['address'],
                style: new TextStyle(fontSize: 20.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    child: Text(
                      "EDIT",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    color: Colors.green,
                    onPressed: () =>
                        Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) =>
                          new EditData(list: widget.list, index: widget.index),
                    )),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    child: Text(
                      "DELETE",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    color: Colors.red,
                    onPressed: () => confirm(),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
