import 'package:optima/optima.dart';

///
double sphere100(List<double> a) {
  return a.fold(0.0, (double acc, double d) {
    var d1 = d - 100.0;
    var d2 = d1 * d1;
    return acc + d2;
  });
}

///
double Function(List<double>) rastrigin100 = (l) {
  var m = l.map((d) {
    return d - 100.0;
  }).toList();

  //  if (m.every((d) => d.abs() < 5.12))
  return rastrigin(m);
};

///
double Function(List<double>) ackley100 = (l) {
  List<double> m = l.map((d) {
    return d - 100.0;
  }).toList();

  return ackley(m);
};

///
double Function(List<double>) ackley10 = (l) {
  List<double> m = l.map((d) {
    return d - 10.0;
  }).toList();

  return ackley(m);
};
