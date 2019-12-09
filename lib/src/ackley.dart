import 'dart:math' as math;
//import 'package:evolution/evolution.dart';

/// Ackley's Function
///
///
/// In mathematical optimization, the Ackley function is a
/// non-convex function used as a performance test problem
/// for optimization algorithms.
/// It was proposed by David Ackley in his 1987 PhD Dissertation.
///
/// Ackley, D. H. (1987) "A connectionist machine for genetic hillclimbing", Kluwer Academic Publishers, Boston MA.
///
/// This version is defined on an n-dimensional domain.
///
/// The global minimum is at (0, ..., 0)
///

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
