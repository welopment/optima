import 'dart:math' as math;
//import 'package:evolution/evolution.dart';

///
/// Rastrigin function
///
/// In mathematical optimization, the Rastrigin function is a
/// non-convex function used as a performance test problem
/// for optimization algorithms.
/// It is a typical example of non-linear multimodal function.
/// It was first proposed by Rastrigin as a 2-dimensional function
/// and has been generalized by Mühlenbein et al.
/// Finding the minimum of this function is a fairly difficult
/// problem due to its large search space and its large number
/// of local minima.
///
/// Rastrigin, L. A. "Systems of extremal control." Mir, Moscow (1974).
/// H. Mühlenbein, D. Schomisch and J. Born. "The Parallel Genetic Algorithm as Function Optimizer ". Parallel Computing, 17, pages 619–632, 1991.
///
/// This version is defined on an n-dimensional domain.
///
/// It has a global minimum at

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
