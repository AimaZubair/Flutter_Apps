import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app_assignment/components/AppBar.dart';
import 'package:quiz_app_assignment/components/drawer.dart';

class contactus extends StatelessWidget {
  static const String routeName = '/contact';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: appBar(context),
        drawer: drawer(),
        body: Center(
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 40.0),
                child: Text(
                  'Contact Us',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto-Italic',
                    fontSize: 40.0,
                  ),
                ),
              ),
              Text(
                'aimak2340@gmail.com',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto-Italic',
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
