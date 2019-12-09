optima
======

A collection of test functions for optimization useful to evaluate characteristics of optimization algorithms, such as convergence rate, precision, robustness, general performance.

{@image <image alt='' src='https://en.wikipedia.org/wiki/File:Rastrigin_function.png'>}


# Get started #

## Add dependency #

To use this library, add optima as a dependency in your pubspec.yaml file.

```yaml
dependencies:
  optima: 0.0.1 #latest version
```

## Example:

This shows howto use optima to benchmark the evolutionary algorithms provided by the evolution package.


```dart
import 'package:evolution/evolution.dart';

void main(){
  10.times((int i) {
    var result = diff(3, 25, 10, 10, 25, i, 10000, 10.0, ackley);
    print("Trial Nr. ${i} - fitness: ${result.fitness()} - solution: ${result}");
  });
}
```
