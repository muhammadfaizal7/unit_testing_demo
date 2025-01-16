# Unit Testing untuk Kelas `Person` di Flutter

## Deskripsi
Repositori ini berisi implementasi dan pengujian untuk kelas `Person` menggunakan framework **Flutter Test**. Kelas `Person` adalah contoh sederhana yang mencakup properti seperti nama, usia, dan angka keberuntungan. Pengujian dilakukan untuk memastikan bahwa kelas ini bekerja sesuai dengan yang diharapkan, termasuk validasi properti dan logika internalnya.

## Struktur Proyek

```
project_root/
|- lib/
|  |- person.dart         # Kelas utama Person
|- test/
|  |- person_test.dart    # File pengujian untuk kelas Person
```

### File Utama
- **`person.dart`**: Berisi definisi kelas `Person` dengan properti:
  - `name`: Nama default "no name".
  - `age`: Usia dengan validasi untuk memastikan nilainya positif.
  - `luckyNumbers`: Daftar berisi tiga angka keberuntungan acak antara 0 hingga 10.

- **`person_test.dart`**: Berisi pengujian unit untuk memverifikasi:
  - Properti `name` dan `age` diinisialisasi dengan nilai default yang benar.
  - Nilai `age` selalu positif meskipun diatur ke nilai negatif.
  - Properti `luckyNumbers` selalu berisi tiga angka positif.

## Fitur
1. **Kelas Person**
   - Properti:
     - `name`: Nama default "no name".
     - `age`: Usia yang valid (tidak negatif).
     - `luckyNumbers`: Daftar angka keberuntungan.
   - Validasi pada setter `age` untuk memastikan nilainya positif.

2. **Unit Testing**
   - Memastikan inisialisasi properti dengan nilai default yang benar.
   - Memastikan nilai `age` selalu positif.
   - Memastikan properti `luckyNumbers` memiliki tiga angka positif.

## Cara Menjalankan

1. **Kloning Repository**
   ```bash
   git clone https://github.com/username/repository_name.git
   cd repository_name
   ```

2. **Instalasi Dependensi**
   Pastikan Anda sudah menginstal Flutter. Jalankan perintah berikut untuk menginstal dependensi:
   ```bash
   flutter pub get
   ```

3. **Jalankan Pengujian**
   Gunakan perintah berikut untuk menjalankan semua pengujian:
   ```bash
   flutter test
   ```

## Contoh Output
Saat menjalankan pengujian, Anda akan melihat output seperti berikut:
```
setUp
Mengecek Class Person Inisialisasi objek Person
tearDown
setUp
Mengecek Class Person Age harus positif
tearDown
setUp
Mengecek Class Person LuckyNumbers harus memiliki 3 angka positif
tearDown
```
