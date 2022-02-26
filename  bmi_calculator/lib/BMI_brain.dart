import 'dart:math';

class BMIBrain {
  BMIBrain({required this.height, required this.weight});

  final int height;
  final int weight;
  double? _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height/100, 2);
    return _bmi!.toStringAsFixed(1);
    //why I use '!' operator after _bmi:
    //https://stackoverflow.com/questions/65035574/the-operator-can-t-be-unconditionally-invoked-because-the-receiver-can-be-null
    //need to manually tell Dart that you are sure that the instance variable isn't null in this case by using the ! operator
  }

  String getResult() {
    if (_bmi! >= 25) {
      return 'Overweight';
    } else if (_bmi! > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi! >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi! >= 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}