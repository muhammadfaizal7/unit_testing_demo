import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing_demo/person.dart';

void main() {
  group("Mengecek Class Person", () {
    late Person p; // Gunakan `late` agar diinisialisasi dalam `setUp`

    setUp(() {
      print("setUp");
      p = Person(); // Inisialisasi objek Person sebelum setiap tes
    });

    tearDown(() {
      print("tearDown");
    });

    test("Inisialisasi objek Person", () {
      expect(p.name,
          equals("no name")); // Memastikan nama default adalah "no name"
      expect(p.age, equals(0)); // Memastikan usia default adalah 0
    });

    test("Age harus positif", () {
      p.age = -5; // Setter akan mengubah -5 menjadi 5
      expect(p.age, isPositive); // Memastikan usia positif
    });

    test("LuckyNumbers harus memiliki 3 angka positif", () {
      expect(p.luckyNumbers.length, equals(3)); // Memastikan panjang daftar 3
      expect(p.luckyNumbers.every((number) => number >= 0),
          isTrue); // Memastikan semua angka positif
    });
  });
}
