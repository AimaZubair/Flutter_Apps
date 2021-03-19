import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[850],
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, top: 0.0, right: 0.0, bottom: 0.0),
              child: Text(
                'Mt. Catlin Hotel',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, top: 0.0, right: 0.0, bottom: 0.0),
              child: Text(
                '967 New York',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  letterSpacing: 5.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, top: 0.0, right: 0.0, bottom: 0.0),
              child: SizedBox(
                height: 20.0,
                width: 320.0,
                child: Divider(
                  color: Colors.white,
                  thickness: 2.0,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, top: 0.0, right: 0.0, bottom: 0.0),
              child: Text(
                'This specification does not indicate the behavior, rendering or otherwise, of space characters other than those explicitly identified here as white space characters.',
                maxLines: 4,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 8.0, top: 8.0, right: 0.0, bottom: 0.0),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 345.0,
                    height: 45.0,
                    color: Colors.grey,
                    child: Stack(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 9.0, top: 8.0, right: 0.0, bottom: 0.0),
                              child: Icon(
                                Icons.brightness_5,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 50.0,
                                  top: 10.0,
                                  right: 0.0,
                                  bottom: 0.0),
                              child: Text(
                                '24 Sunny',
                                maxLines: 2,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 8.0, top: 8.0, right: 0.0, bottom: 0.0),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 345.0,
                    height: 80.0,
                    color: Colors.grey,
                    child: Stack(
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15.0,
                                  top: 8.0,
                                  right: 0.0,
                                  bottom: 0.0),
                              child: Text(
                                'Amanities',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15.0,
                                  top: 35.0,
                                  right: 0.0,
                                  bottom: 0.0),
                              child: Icon(
                                Icons.wifi,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 115.0,
                                  top: 35.0,
                                  right: 0.0,
                                  bottom: 0.0),
                              child: Icon(
                                Icons.flight,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 65.0,
                                  top: 35.0,
                                  right: 0.0,
                                  bottom: 0.0),
                              child: Icon(
                                Icons.brightness_2,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 170.0,
                                  top: 35.0,
                                  right: 0.0,
                                  bottom: 0.0),
                              child: Icon(
                                Icons.headset,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 235.0,
                                  top: 35.0,
                                  right: 0.0,
                                  bottom: 0.0),
                              child: Icon(
                                Icons.settings_bluetooth,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 300.0,
                                  top: 35.0,
                                  right: 0.0,
                                  bottom: 0.0),
                              child: Icon(
                                Icons.settings_sharp,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 8.0, top: 8.0, right: 0.0, bottom: 0.0),
              child: Row(
                children: <Widget>[
                  Container(
                    width: 345.0,
                    height: 120.0,
                    color: Colors.grey,
                    child: Stack(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 9.0,
                                  top: 30.0,
                                  right: 0.0,
                                  bottom: 0.0),
                              child: Icon(
                                Icons.radio_button_on,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 15.0,
                                  top: 8.0,
                                  right: 0.0,
                                  bottom: 0.0),
                              child: Text(
                                'Where is that',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 40.0,
                                  top: 28.0,
                                  right: 0.0,
                                  bottom: 0.0),
                              child: Text(
                                'Address\n152 Taylor street, NYC',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 10.0,
                                  top: 10.0,
                                  right: 0.0,
                                  bottom: 0.0),
                              child: RaisedButton(
                                onPressed: () => {},
                                child: Text('Check it >'),
                                color: Color(0xffFF1744),
                                textColor: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                      left: 8.0, top: 8.0, right: 0.0, bottom: 0.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 345.0,
                        height: 150.0,
                        color: Colors.grey,
                        child: Stack(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0,
                                      top: 10.0,
                                      right: 0.0,
                                      bottom: 0.0),
                                  child: Text(
                                    'Before you go',
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20.0,
                                      top: 10.0,
                                      right: 0.0,
                                      bottom: 0.0),
                                  child: Text(
                                    '- Payment at checkout\n'
                                    '- Wifi Network is off by 12\n'
                                    '- No more than two bags\n'
                                    '- No Refund',
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 25.0, top: 135.0, right: 25.0, bottom: 0.0),
                  child: SizedBox(
                      width: 320.0,
                      child: RaisedButton(
                        onPressed: () => {},
                        child: Text('Back to Home'),
                        color: Color(0xffFF1744),
                        textColor: Colors.white,
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
