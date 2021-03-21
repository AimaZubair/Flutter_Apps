import 'package:flutter/material.dart';
import 'package:sessional1_01_009/components/custom_card.dart';

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 150.0,
              width: MediaQuery.of(context).size.width,
              child: customCard(
                  "Nature`s Light", "450 Spots", Icons.access_alarm, "1"),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  height: 200.0,
                  width: 194.0,
                  child: customCard(
                      "Cultural", "257 Spots", Icons.accessibility, "2"),
                ),
                Container(
                  width: 194.0,
                  child: customCard("Popularity", "357 Spots",
                      Icons.add_a_photo_outlined, "3"),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  width: 194.0,
                  child: customCard("Modern Life", "117 Spots",
                      Icons.camera_enhance_outlined, "4"),
                ),
                Container(
                  height: 200.0,
                  width: 194.0,
                  child: customCard(
                      "Sun and Sand", "147 Spots", Icons.brightness_5, "5"),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
