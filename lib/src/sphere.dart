///////////////////////
/// sphere function
double sphere(List<double> a) {
  return a.fold(0.0, (double acc, double d) {
    var d1 = d - 100.0;
    var d2 = d1 * d1;
    return acc + d2;
  });
}
