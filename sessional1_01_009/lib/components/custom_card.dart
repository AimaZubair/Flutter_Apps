import 'package:flutter/material.dart';

Widget customCard() {
  return Card(
    child: Container(
      decoration: BoxDecoration(
          color: Colors.purple[400],
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
              image: AssetImage(""),
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.dstATop)
          fit: BoxFit.cover,
          ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(Icons.ac_unit),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Text1'),
                SizedBox(
                  height: 5.0,
                ),
                Text('Text2'),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
