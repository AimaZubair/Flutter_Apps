import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sessional_2/components/ContactUs.dart';

class drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _createHeader(),
          _createDrawerItem(
              icon: Icons.contacts,
              text: 'Contact Us',
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => contactus()))),
          _createDrawerItem(
            icon: Icons.event,
            text: 'Calculator Type',
          ),
          _createDrawerItem(
            icon: Icons.note,
            text: 'Notes',
          ),
          Divider(),
          _createDrawerItem(
              icon: Icons.collections_bookmark, text: 'Customize Calcultor'),
          Divider(),
          _createDrawerItem(icon: Icons.bug_report, text: 'Report an issue'),
        ],
      ),
    );
  }
}

Widget _createDrawerItem(
    {IconData icon, String text, GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(text),
        )
      ],
    ),
    onTap: onTap,
  );
}

Widget _createHeader() {
  return DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: new AssetImage('images/drawer_header_background.png'),
        ),
      ),
      child: Stack(children: <Widget>[
        Positioned(
            bottom: 12.0,
            left: 16.0,
            child: Text("Flutter Step-by-Step",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500))),
      ]));
}
