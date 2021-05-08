import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sessional_2/components/AppBar.dart';

class contactus extends StatelessWidget {
  static const String routeName = '/contact';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: appBar(context),
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Text(
                  'Contact Us',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto-Italic',
                    fontSize: 40.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50.0),
                child: Text(
                  '033429019289',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto-Italic',
                    fontSize: 20.0,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 70.0),
                child: Text(
                  'aimak2340@gmail.com',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Roboto-Italic',
                    fontSize: 20.0,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
