import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sessional1_01_009/components/appBar.dart';
import 'package:sessional1_01_009/components/drawer.dart';
import 'package:sessional1_01_009/screens/explore_screen.dart';

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      drawer: drawer(),
      body: Container(
        child: Explore(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.globe,
              color: Colors.grey,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.compass,
              color: Colors.pink,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.bars,
              color: Colors.grey,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
              color: Colors.grey,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_pin,
              color: Colors.grey,
            ),
            title: Text(''),
          ),
        ],
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 0.0,
        selectedFontSize: 0.0,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
        iconSize: 30.0,
      ),
    );
  }
}
