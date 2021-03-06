import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/constants.dart';

class IconContent extends StatelessWidget {
  IconContent({required this.icon, required this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          label,
          style: kLabelStyle,
        ),
      ],
    );
  }
}
