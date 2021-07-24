import 'dart:ffi';
import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  double _result = 0;

  CalculatorBrain({required this.height, required this.weight});

  String getResultTitle() {
    if (_result >= 25) {
      return 'Overweight';
    } else if (_result > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getResultBody() {
    _result = weight / pow(height / 100, 2);
    return _result.toStringAsFixed(1);
  }

  String getResultDescription() {
    if (_result >= 25) {
      return 'You have higher than a normal body weight. Try to exercise more.';
    } else if (_result > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have less than a normal body weight. You can eat a little more.';
    }
  }
}
