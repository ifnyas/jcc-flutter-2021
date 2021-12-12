import 'dart:io';

main() {
  // soal 1
  var word = 'dart';
  var second = 'is';
  var third = 'awesome';
  var fourth = 'and';
  var fifth = 'I';
  var sixth = 'love';
  var seventh = 'it!';
  var joined = '$word $second $third $fourth $fifth $sixth $seventh';
  print(joined);

  // soal 2
  var sentence = "I am going to be Flutter Developer";
  var splitted = sentence.split(" ");
  var exampleFirstWord = splitted[0];
  var secondWord = splitted[1];
  var thirdWord = splitted[2];
  var fourthWord = splitted[3];
  var fifthWord = splitted[4];
  var sixthWord = splitted[5];
  var seventhWord = splitted[6];

  print('First Word: ' + exampleFirstWord);
  print('Second Word: ' + secondWord);
  print('Third Word: ' + thirdWord);
  print('Fourth Word: ' + fourthWord);
  print('Fifth Word: ' + fifthWord);
  print('Sixth Word: ' + sixthWord);
  print('Seventh Word: ' + seventhWord);

  // soal 3
  print('masukkan nama depan: ');
  var inputFirstName = stdin.readLineSync();
  print('masukkan nama belakang: ');
  var inputLastName = stdin.readLineSync();
  print('$inputFirstName $inputLastName');

  // soal 4
  var a = 5;
  var b = 10;
  print('perkalian: ${a * b}');
  print('pembagian: ${a / b}');
  print('penambahan: ${a + b}');
  print('pengurangan: ${a - b}');
}
