// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'constants.dart';
import 'roundiconbutton.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

int weight = 50;

class WeightWidget extends StatefulWidget {
  const WeightWidget({Key? key}) : super(key: key);

  @override
  _WeightWidgetState createState() => _WeightWidgetState();
}

class _WeightWidgetState extends State<WeightWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      SizedBox(
        height: 20.0,
      ),
      Text(
        'WEIGHT',
        style: kLabelStyle,
      ),
      Text(
        weight.toString(),
        style: kNumberStyle,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          RoundedIconButton(
              icon: FontAwesomeIcons.minus,
              onPress: () {
                setState(() {
                  weight--;
                });
              }),
          RoundedIconButton(
              icon: FontAwesomeIcons.plus,
              onPress: () {
                setState(() {
                  weight++;
                });
              }),
        ],
      ),
    ]);
  }
}
