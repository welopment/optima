import 'dart:math' as math;
//import 'package:evolution/evolution.dart';


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
