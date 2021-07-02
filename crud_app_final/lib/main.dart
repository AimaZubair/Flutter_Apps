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
      home: AnimatedSplashScreen(
        duration: 3000,
        splashIconSize: 300.0,
        splash: 'images/images.png',
        nextScreen: MyHomePage(),
        pageTransitionType: PageTransitionType.bottomToTop,
        splashTransition: SplashTransition.sizeTransition,
      ),
    );
  }
}

