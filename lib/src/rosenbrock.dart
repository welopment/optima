import 'dart:math' as math;
//import 'package:evolution/evolution.dart';

///
/// Rosenbrock function
///
/// In mathematical optimization, the Rosenbrock function is a non-convex function, introduced by Howard H. Rosenbrock in 1960, which is used as a performance test problem for optimization algorithms.[1] It is also known as Rosenbrock's valley or Rosenbrock's banana function.

/// The global minimum is inside a long, narrow, parabolic shaped flat valley.
/// To find the valley is trivial. To converge to the global minimum, however,
/// is difficult.
///
/// This is a 2-dimensional version of the function
/// using only x[0] and x[1]. Parameters are fix at a = 1 und b = 100.
///

double rosenbrock(List<double> x) {
  double a = math.pow(1 - x[0], 2).toDouble();
  double ex = math.pow(x[0], 2).toDouble();
  double b = math.pow(x[1] - ex, 2).toDouble();
  return a + (100.0 * b);
}

///
/// N-dimensional Version.
///
/// The n-dimensional Version of this function has exactly one minimum for N = 3 at (1, 1, 1)
/// and exactly two minima for 4 < N < 7 the global minimum of all ones
/// and a local minimum near (-1, 1, ... ,1).
///
///
///
// TODO
