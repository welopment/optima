import 'package:evolution/evolution.dart';
import 'package:optima/optima.dart';

void main() {
  //var seed = DateTime.now().millisecond;

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
