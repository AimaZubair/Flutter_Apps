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
                  height: 120.0,
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
                            left: 200.0, top: 0.0, right: 0.0, bottom: 0.0),
                        child: Icon(Icons.arrow_forward_ios),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 70.0, top: 80.0, right: 0.0, bottom: 0.0),
                  child: Container(
                    width: 70.0,
                    height: 70.0,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 180.0, top: 80.0, right: 0.0, bottom: 0.0),
                  child: Container(
                    width: 70.0,
                    height: 70.0,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 300.0, top: 80.0, right: 0.0, bottom: 0.0),
                  child: Container(
                    width: 70.0,
                    height: 70.0,
                    color: Colors.white,
                  ),
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 30.0, top: 160.0, right: 0.0, bottom: 0.0),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 35.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, top: 160.0, right: 0.0, bottom: 0.0),
                      child: Text(
                        'Search...',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30.0, top: 185.0, right: 0.0, bottom: 0.0),
                  child: SizedBox(
                    height: 20.0,
                    width: 340.0,
                    child: Divider(
                      color: Colors.white,
                      thickness: 2.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30.0, top: 205.0, right: 0.0, bottom: 0.0),
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
                      left: 80.0, top: 210.0, right: 0.0, bottom: 0.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Aima',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                      ),
                      Text(
                        'Hello How are you?',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30.0, top: 240.0, right: 0.0, bottom: 0.0),
                  child: SizedBox(
                    height: 20.0,
                    width: 340.0,
                    child: Divider(
                      color: Colors.white,
                      thickness: 2.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30.0, top: 260.0, right: 0.0, bottom: 0.0),
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
                      left: 90.0, top: 260.0, right: 0.0, bottom: 0.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Dania',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                      ),
                      Text(
                        'Hye This is Me',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30.0, top: 290.0, right: 0.0, bottom: 0.0),
                  child: SizedBox(
                    height: 20.0,
                    width: 340.0,
                    child: Divider(
                      color: Colors.white,
                      thickness: 2.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30.0, top: 310.0, right: 0.0, bottom: 0.0),
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
                      left: 90.0, top: 310.0, right: 0.0, bottom: 0.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Zubair',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 15.0,
                        ),
                      ),
                      Text(
                        'Hye This is Me',
                        style: TextStyle(
                          fontWeight: FontWeight.normal,
                          color: Colors.white,
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 30.0, top: 350.0, right: 0.0, bottom: 0.0),
                  child: SizedBox(
                    height: 20.0,
                    width: 340.0,
                    child: Divider(
                      color: Colors.white,
                      thickness: 2.0,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 505.0),
                  child: Stack(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          padding:
                              EdgeInsets.only(left: 10, bottom: 10, top: 10),
                          height: 60,
                          width: double.infinity,
                          color: Colors.white,
                          child: Row(
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {},
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Write message...",
                                      hintStyle:
                                          TextStyle(color: Colors.black54),
                                      border: InputBorder.none),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              FloatingActionButton(
                                onPressed: () {},
                                child: Icon(
                                  Icons.send,
                                  color: Colors.white,
                                  size: 18,
                                ),
                                backgroundColor: Colors.grey,
                                elevation: 0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
