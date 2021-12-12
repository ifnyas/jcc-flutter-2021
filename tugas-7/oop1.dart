import 'dart:math';

main() {
  // soal 1
  var segitiga = new Segitiga();
  segitiga.setengah = 0.5;
  segitiga.alas = 20.0;
  segitiga.tinggi = 30.0;
  print(segitiga.luas);

  // soal 2
  var lingkaran = new Lingkaran();
  lingkaran.r = 10.0;
  print(lingkaran.luas);
}

class Segitiga {
  late double _setengah, _alas, _tinggi;

  set setengah(double setengah) => _setengah = setengah;
  set alas(double alas) => _alas = alas;
  set tinggi(double tinggi) => _tinggi = tinggi;

  double get setengah => _setengah;
  double get alas => _alas;
  double get tinggi => _tinggi;

  get luas => _setengah * _alas * _tinggi;
}

class Lingkaran {
  late double _r;
  set r(double r) => _r = r;
  double get r => _r;
  get luas => pi * _r * _r;
}
