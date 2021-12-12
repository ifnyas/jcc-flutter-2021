import 'bangun-datar.dart';

class Segitiga extends BangunDatar {
  late double _a, _b, _t;

  set a(double a) => _a = a;
  set b(double b) => _b = b;
  set t(double t) => _t = t;

  @override
  luas() => _a * _t / 2;

  @override
  double get keliling => _a + _b + _t;
}
