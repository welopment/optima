Optima
======

A collection of test functions for optimization useful to evaluate characteristics of optimization algorithms, such as convergence rate, precision, robustness, general performance.

# Getting started

Add this dependency to your pubspec.yaml file:

```yaml
dependencies:
  optima: #latest version
  # And optionally:
  evolution: #latest version
```

Add this import statement to your source files:

```dart
import 'package:optima/optima.dart';
// and optionally:
import 'package:evolution/evolution.dart';
```

To give it a try, simply run the example. 

```dart
dart ./example/main.dart 
```

This example optimizes versions of the sphere function and the Ackley function.

* Sphere100 is version of the sphere function with a global minimum at (100.0, ..., 100.0).
* Sphere100 (restricted) is the same problem to be solved within a restricted search space.
* Ackley10 is a version of the ackley function with a global minimum at (10.0, ..., 10.0).
* Ackley100 is  a version of the ackley function with a global minimum at (100.0, ..., 100.0).
* Ackley100 (restricted) is the same problem to be solved within a restricted search space.


## Example

Use optima to benchmark a version of the Differential Evolution algorithm provided by package:evolution.

```dart
import 'package:optima/optima.dart';
import 'package:evolution/evolution.dart';

void main() {
  //var seed = DateTime.now().millisecond;

  print("Optimize a version of the sphere function centered at (100.0, ... , 100.0) on the unrestricted version of the problem.");
  10.times((int i) {
    var ret = diff(4, 25, 10, 10, 25, i, 500, 10.0, sphere100);
    print("Sphere100 - Trial Nr.: ${i} - f: ${ret.fitness()} - ag: ${ret}");
    return ret;
  });

  print("Use the version confined within (50, 150) in each dimension.");
  10.times((int i) {
    var ret = diff2(4, 25, 10, 10, 25, i, 500, 10.0, sphere100, 50, 150);
    print("Sphere100 (restricted) - Trial Nr.: ${i} - f: ${ret.fitness()} - ag: ${ret}");
    return ret;
  });

  print("Optimize a version of the Ackley function centered at (10.0, ... , 10.0) on the unrestricted version of the problem.");
  10.times((int i) {
    var ret = diff(4, 25, 10, 10, 25, i, 1000, 10.0, ackley10);
    print("Ackley10 - Trial Nr.: ${i} - f: ${ret.fitness()} - ag: ${ret}   ");
    return ret;
  });

  print("Optimize a version of the Ackley function centered at (100.0, ... , 100.0) on the unrestricted version of the problem.");
  print("This will not find a solution to the problem.");

  10.times((int i) {
    var ret = diff(4, 25, 10, 10, 25, i, 1000, 10.0, ackley100);
    print("Ackley100 - Trial Nr.: ${i} - f: ${ret.fitness()} - ag: ${ret}");
    return ret;
  });

  print("Use the version of the Ackley function centered at (100.0, ... , 100.0) confined within (50, 150) in each dimension.");
  10.times((int i) {
    var ret = diff2(4, 25, 10, 10, 25, i, 1000, 10.0, ackley100, 50, 150);
    print(
        "Ackley100 (restricted) - Trial Nr.: ${i} - f: ${ret.fitness()} - ag: ${ret}");
    return ret;
  });
}
```
