// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height,required this.weight});

  final double height;
  final double weight;
  late double _bmi;
  double init(){
    return _bmi;
  }

  double calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi;
  }

  // String getResult() {
  //   if (_bmi >= 25) {
  //     return 'OverWeight';
  //   } else if (_bmi > 18.5) {
  //     return 'Normal';
  //   } else {
  //     return 'UnderWeight';
  //   }
  // }

  // String getInterpretation() {
  //   if (_bmi >= 25) {
  //     return 'You have a higher than normal weight. Try to do some Exercise.';
  //   } else if (_bmi > 18.5) {
  //     return 'You have normal Weight. Good job!';
  //   } else {
  //     return 'You have less than body weight. Eat little bit better.';
  //   }
  // }
}
