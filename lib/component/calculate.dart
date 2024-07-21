import 'dart:math';

class Calculate {
  final int height;
  final int weight;

  Calculate({
    required this.height,
    required this.weight,
  });

  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight / pow((height / 100), 2);
    return _bmi.toStringAsFixed(2);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Over Weight!';
    } else if (_bmi >= 18) {
      return 'Normal';
    } else {
      return 'Under Weight!';
    }
  }

  String getInterPretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi >= 18) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
