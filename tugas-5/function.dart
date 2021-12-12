main() {
  // soal 1
  teriak() {
    return "Halo Sanbers!";
  }

  print(teriak());

  // soal 2
  kalikan(a, b) {
    return a * b;
  }

  var num1 = 12;
  var num2 = 4;

  var hasilKali = kalikan(num1, num2);
  print(hasilKali);

  // soal 3
  introduce(name, age, address, hobby) {
    return "Nama saya $name, umur saya $age tahun, alamat saya di $address, dan saya punya hobby yaitu $hobby!";
  }

  var name = "Agus";
  var age = 30;
  var address = "Jln. Malioboro, Yogyakarta";
  var hobby = "Gaming";

  var perkenalan = introduce(name, age, address, hobby);
  print(perkenalan);

  // soal 4
  factorial(n) {
    if (n <= 0) {
      return 1;
    } else {
      var result = 1;
      for (var i = 1; i <= n; i++) {
        result *= i;
      }
      return result;
    }
  }

  print(factorial(4));
}
