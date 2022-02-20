// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:bmi_calculator/components/reusablecard.dart';
import 'package:bmi_calculator/screens/inputpage.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/constants.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({required this.resultbmi});

  final double resultbmi;
  String getResult() {
    if (resultbmi >= 25) {
      return 'OverWeight';
    } else if (resultbmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }
  String getInterpretation() {
    if (resultbmi >= 25) {
      return 'You have a higher than normal weight. Try to do some Exercise.';
    } else if (resultbmi > 18.5) {
      return 'You have normal Weight. Good job!';
    } else {
      return 'You have less than body weight. Eat little bit better.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('BMI Calculator'),
        ),
      ),
      body: Center(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Your Result',
              style: kResulttitle,
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: activeColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      getResult(),
                      style: kResultweight,
                    ),
                    Text(
                      resultbmi.toString(),
                      textAlign: TextAlign.center,
                      style: kNumberStyle,
                    ),
                    Text(
                      getInterpretation(),
                      textAlign: TextAlign.center,
                      style: kLabelStyle,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 80.0,
              color: Color(0xFFEB1555),
              // ignore: deprecated_member_use
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => const InputPage(),
                      ));
                },
                child: Center(
                    child: Text(
                  'Recalculate BMI',
                  style: kButtonStyle,
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
