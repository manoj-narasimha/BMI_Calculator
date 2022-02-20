// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'roundiconbutton.dart';

int age = 18;

class AgeWidget extends StatefulWidget {
  const AgeWidget({Key? key}) : super(key: key);

  @override
  _AgeWidgetState createState() => _AgeWidgetState();
}

class _AgeWidgetState extends State<AgeWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      SizedBox(
        height: 20.0,
      ),
      Text(
        'AGE',
        style: kLabelStyle,
      ),
      Text(
        age.toString(),
        style: kNumberStyle,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          RoundedIconButton(
              icon: FontAwesomeIcons.minus,
              onPress: () {
                setState(() {
                  age--;
                });
              }),
          RoundedIconButton(
              icon: FontAwesomeIcons.plus,
              onPress: () {
                setState(() {
                  age++;
                });
              }),
        ],
      ),
    ]);
  }
}
