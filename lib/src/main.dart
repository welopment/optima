// import 'package:evolution/evolution.dart';

void main() {
  //var seed = DateTime.now().millisecond;
  //10.times((int i) => linear(3, 10, 5, 5, i, 1000, 100.0));
  //10.times( (int i)=> parallel(3, 10, 5, 5, i, 1000, 100.0));

  //rastrigin1,fitnessOriginal, ackley1
  /* 

  10.times((int i) {
    var ret = diff(3, 25, 10, 10, 25, i, 10000, 10.0, ackley1);
    print(" TD: i: ${i} - f: ${ret.fitness()} - ag: ${ret}   ");
    return ret;
  });


  10.times((int i) {
    var ret =
        diff2(4, 25, 10, 10, 25, i, 10000, 10.0, fitnessOriginal, 50, 150);
    print(" TD: i: ${i} - f: ${ret.fitness()} - ag: ${ret}   ");
    return ret;
  });
*/
  /*
  /// Selfoptimization of Parameter of Evolution
  var r = Random(0);
  var z = 0;
  10.times((int i) {
    var ret = diff(4, 20, 10, 10, 20, i * 17 + 257, 10, 10.0, (List<double> l) {
      i++;
      if (i % 1000 == 0) print(" Round: ${i}");
      return fitf(l, ackley1, r);
    }); //  (List<double> l) => fitf(l, ackley1, r)
    //var ret = testDifferential(20, 10, 20, i, 1000, 10.0, fitnessOriginal);
    print(" TD: i: ${i} - f: ${ret.fitness()} - ag: ${ret}   ");
    return ret;
  });
   */
}
