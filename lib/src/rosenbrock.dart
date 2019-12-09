import 'dart:math' as math;
//import 'package:evolution/evolution.dart';

///
double rosenbrock(List<double> x) {
  double ex = math.pow(x[0], 2).toDouble();
  double a = math.pow(1 - x[0], 2).toDouble();
  double b = math.pow(x[1] - ex, 2).toDouble();
  return a + (100.0 * b);
}
