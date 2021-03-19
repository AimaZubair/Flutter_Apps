import 'package:flutter/material.dart';
import 'package:sessional1_01_009/components/main.dart';

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 650.0,
      color: Colors.black87,
      child: Column(
        children: <Widget>[
          Container(
            height: 50.0,
            color: Colors.grey[850],
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  'Discover',
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
                Text(
                  'Activities',
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
              ],
            ),
          ),
          Main(),
        ],
      ),
    );
  }
}
