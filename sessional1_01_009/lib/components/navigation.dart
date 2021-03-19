import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;
  static List<Widget> widgetOptions = <Widget>[
    Center(child: Text('Home Screen')),
    Center(child: Text('Explore Screen')),
    Center(child: Text('Rewards Screen')),
    Center(child: Text('Messages Screen')),
    Center(child: Text('Profile Screen')),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      drawer: drawer(),
      body: IndexedStack(
        index: _selectedIndex,
        children: widgetOptions,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.globe),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.compass),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: FaIcon(FontAwesomeIcons.bars),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin),
            title: Text(''),
          ),
        ],
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 0.0,
        selectedFontSize: 0.0,
        selectedItemColor: Colors.pink[400],
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
        iconSize: 30.0,
      ),
    );
  }
}
