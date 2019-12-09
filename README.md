Optima
======

A collection of test functions for optimization useful to evaluate characteristics of optimization algorithms, such as convergence rate, precision, robustness, general performance.

{@image <image alt='' src='https://en.wikipedia.org/wiki/File:Rastrigin_function.png'>}


# Getting started #

## Add dependency #

To use this library, add optima as a dependency in your pubspec.yaml file.

```yaml
dependencies:
  optima: #latest version
  evolution: #latest version
```

## Example:

Use optima to benchmark the differential evolution algorithm provided by package:evolution.

```dart
  import 'package:evolution/evolution.dart';
  import 'package:optima/optima.dart';

  void main() {

    // Optimize the sphere function using the unrestricted verion of the problem
    10.times((int i) {
      var ret = diff(4, 25, 10, 10, 25, i, 10000, 10.0, sphere100);
      print("Sphere100 - Trial Nr.: ${i} - f: ${ret.fitness()} - ag: ${ret}   ");
      return ret;
    });

    // Using the restricted verions of diff
    10.times((int i) {
      var ret = diff2(4, 25, 10, 10, 25, i, 10000, 10.0, sphere100, 50, 150);
      print(
          "Sphere100 (restricted) - Trial Nr.: ${i} - f: ${ret.fitness()} - ag: ${ret}   ");
      return ret;
    });

    // Optimize the ackley function using the unrestricted verion of the problem
    10.times((int i) {
      var ret = diff(4, 25, 10, 10, 25, i, 10000, 10.0, ackley100);
      print("Ackley100 - Trial Nr.: ${i} - f: ${ret.fitness()} - ag: ${ret}   ");
      return ret;
    });

    // Using the restricted verions of diff
    10.times((int i) {
      var ret = diff2(4, 25, 10, 10, 25, i, 10000, 10.0, ackley100, 50, 150);
      print(
          "Ackley100 (restricted) - Trial Nr.: ${i} - f: ${ret.fitness()} - ag: ${ret}   ");
      return ret;
    });
  }
```
