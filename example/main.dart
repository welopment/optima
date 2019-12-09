import 'package:evolution/evolution.dart';

void main(){
  10.times((int i) {
    var result = diff(3, 25, 10, 10, 25, i, 10000, 10.0, ackley);
    print("Trial Nr. ${i} - fitness: ${result.fitness()} - solution: ${result}");
  });
}