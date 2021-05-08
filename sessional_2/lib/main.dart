import 'package:flutter/material.dart';
import 'MyHomePage.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 6,
      navigateAfterSeconds: MyHomePage(),
      title: Text(
        'FA17-BCS-009',
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          color: Colors.white10,
        ),
      ),
      backgroundColor: Colors.black,
      loadingText: Text("Loading"),
      loaderColor: Colors.white10,
    );
  }
}
