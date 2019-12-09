import 'dart:math' as math;
//import 'package:evolution/evolution.dart';

///
double michalewicz(List<double> x, int m) {
  double sum = 0;
  for (int i = 0; i < x.length; i++) {
    sum -= math.sin(x[i]) *
        math.pow(math.sin((i + 1) * math.pow(x[i], 2) / math.pi), 2 * m);
  }
  return sum;
}
