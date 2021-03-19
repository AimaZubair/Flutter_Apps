import 'package:flutter/material.dart';

Widget appBar() {
  return AppBar(
    elevation: 0.0,
    backgroundColor: Colors.grey[850],
    title: Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('Explore'),
      ),
    ),
    actions: <Widget>[
      IconButton(
        icon: Icon(
          Icons.search,
          color: Colors.white,
        ),
      ),
      IconButton(
        icon: Icon(
          Icons.notifications,
          color: Colors.white,
        ),
      )
    ],
  );
}
