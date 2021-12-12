import 'armor_titan.dart';
import 'bangun-datar.dart';
import 'employee.dart';
import 'segitiga.dart';

main() {
  // soal 1
  var armorTitan = new ArmorTitan();
  armorTitan.powerPoint = 10;
  armorTitan.powerPoint < 5 ? print(5) : print(armorTitan.powerPoint);
  print(armorTitan.terjang());

  // soal 2
  var bangunDatar = new BangunDatar();
  var segitiga = new Segitiga();
  segitiga.a = 10;
  segitiga.b = 5;
  segitiga.t = 7;

  print(bangunDatar.keliling);
  print(bangunDatar.luas());
  print(segitiga.keliling);
  print(segitiga.luas());

  // soal 3
  var employee1 = new Employee.id(1);
  var employee2 = new Employee.name("Two");
  var employee3 = new Employee.dept("Three");
  print(employee1.id);
  print(employee2.name);
  print(employee3.dept);
}
