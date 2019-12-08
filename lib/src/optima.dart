import 'dart:math' as math;
//import 'package:evolution/evolution.dart';

///////////////////////
/// Sphere
double sphere(List<double> a) {
  return a.fold(0.0, (double acc, double d) {
    var d1 = d - 100.0;
    var d2 = d1 * d1;
    return acc + d2;
  });
}

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

///Ackley's Function
double ackley(List<double> variable) {
  final int dim = variable.length;

  final double a = 20;
  final double b = 0.2;
  final double c = 2 * math.pi;

  double sum1 = 0;
  double sum2 = 0;
  for (int i = 0; i < dim; i++) {
    sum1 += variable[i] * variable[i];
    sum2 += math.cos(c * variable[i]);
  }

  sum1 = -b * math.sqrt((1.0 / dim) * sum1);
  sum2 = (1.0 / dim) * sum2;

  return ((-a * math.exp(sum1)) - math.exp(sum2)) + a + math.exp(1);
}

///
double rosenbrock(List<double> x) {
  double ex = math.pow(x[0], 2).toDouble();
  double a = math.pow(1 - x[0], 2).toDouble();
  double b = math.pow(x[1] - ex, 2).toDouble();
  return a + (100.0 * b);
}

///
double magicSquare(List<double> p) {
  int n = math.sqrt(p.length).toInt();
  int magic = n * (n * n + 1) ~/ 2;
  double error = 0;
  for (int i = 0; i < n; i++) {
    double sRow = 0;
    double sCol = 0;
    for (int j = 0; j < n; j++) {
      sRow += p[i * n + j];
      sCol += p[j * n + i];
    }
    error += (sRow - magic).abs();
    error += (sCol - magic).abs();
  }
  double sum = 0;
  for (int i = 0, j = 0; i < n; i++, j++) {
    sum += p[i * n + j];
  }
  error += (sum - magic).abs();
  sum = 0;
  for (int i = 0, j = n - 1; i < n; i++, j--) {
    sum += p[i * n + j];
  }
  error += (sum - magic).abs();
  return error.toDouble();
}

///
double parabola(List<double> x, int step) {
  return math.pow(x[0] + step, 2).toDouble();
}

///
double michalewicz(List<double> x, int m) {
  double sum = 0;
  for (int i = 0; i < x.length; i++) {
    sum -= math.sin(x[i]) *
        math.pow(math.sin((i + 1) * math.pow(x[i], 2) / math.pi), 2 * m);
  }
  return sum;
}
