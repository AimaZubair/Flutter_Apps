import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          toolbarHeight: 80.0,
          backgroundColor: Colors.black87,
          title: Center(
            child: Text(
              "Compose",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          leading: Icon(
            Icons.arrow_left_rounded,
            size: 30.0,
          ),
          actions: <Widget>[
            Icon(
              Icons.more_vert,
              size: 30.0,
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  color: Colors.teal,
                  height: 100.0,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 25.0, top: 28.0, right: 0.0, bottom: 0.0),
                        child: Column(
                          children: <Widget>[
                            Text(
                              '4 People',
                              style: TextStyle(
                                fontSize: 25.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 150.0, top: 0.0, right: 0.0, bottom: 0.0),
                        child: Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 30.0, top: 120.0, right: 0.0, bottom: 0.0),
                      child: Icon(Icons.search, color: Colors.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, top: 120.0, right: 0.0, bottom: 0.0),
                      child: Text(
                        'Search',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30.0, top: 150.0, right: 0.0, bottom: 0.0),
                  child: SizedBox(
                    height: 20.0,
                    width: 300.0,
                    child: Divider(
                      color: Colors.white,
                      thickness: 2.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30.0, top: 180.0, right: 0.0, bottom: 0.0),
                  child: Column(
                    children: <Widget>[
                      ImageIcon(
                        AssetImage('assets/images/cards/1.jpg'),
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 80.0, top: 185.0, right: 0.0, bottom: 0.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Aima Zubair',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30.0, top: 210.0, right: 0.0, bottom: 0.0),
                  child: SizedBox(
                    height: 20.0,
                    width: 300.0,
                    child: Divider(
                      color: Colors.white,
                      thickness: 2.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30.0, top: 240.0, right: 0.0, bottom: 0.0),
                  child: Column(
                    children: <Widget>[
                      ImageIcon(
                        AssetImage('assets/images/cards/1.jpg'),
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 80.0, top: 245.0, right: 0.0, bottom: 0.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Aima Zubair',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30.0, top: 270.0, right: 0.0, bottom: 0.0),
                  child: SizedBox(
                    height: 20.0,
                    width: 300.0,
                    child: Divider(
                      color: Colors.white,
                      thickness: 2.0,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
