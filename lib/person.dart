import 'dart:math';

class Person {
  String name;
  int _age;
  List<int> luckyNumbers;

  // Getter untuk age
  int get age => _age;

  // Setter untuk age dengan validasi
  set age(int value) {
    if (value < 0) {
      value = value.abs(); // Ubah nilai negatif menjadi positif
    }
    _age = value;
  }

  // Konstruktor default
  Person()
      : _age = 0,
        luckyNumbers = List.generate(3, (_) => Random().nextInt(11)),
        name = "no name" {
    if (age < 0) {
      age = age.abs(); // Ubah nilai negatif menjadi positif
    }
  }
}
