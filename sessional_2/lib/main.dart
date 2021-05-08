import 'package:flutter/material.dart';
import 'MyHomePage.dart';

import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'package:page_transition/page_transition.dart';

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

class Splash extends StatefulWidget {
  const Splash({Key key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      duration: 5,
      splash: 'images/images.png',
      nextScreen: MyHomePage(),
      pageTransitionType: PageTransitionType.topToBottom,
      splashTransition: SplashTransition.sizeTransition,
    );
  }
}
