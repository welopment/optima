import 'dart:math' as math;
//import 'package:evolution/evolution.dart';


///////////////////////
/// Rastrigin
double rastrigin(List<double> x) {
  int numberOfVariables = x.length;
  double result = 0.0;
  double a = 10.0;
  double w = 2 * math.pi;

  for (int i = 0; i < numberOfVariables; i++) {
    result += x[i] * x[i] - a * math.cos(w * x[i]);
  }
  result += a * numberOfVariables;
  return result;
}
