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
            customCard(),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                customCard(),
                customCard(),
              ],
            ),
            Column(
              children: <Widget>[
                customCard(),
                customCard(),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
