import 'dart:math' as math;
//import 'package:evolution/evolution.dart';

///
double parabola(List<double> x, int step) {
  return math.pow(x[0] + step, 2).toDouble();
}
