import 'dart:io';
import 'appointment.dart';
import 'doctor.dart';

void main() {
  List<Doctor> data_dokter = [
    Doctor(nama: "dinda", no_telpon: '123', gaji: 10000),
    Doctor(nama: "arin", no_telpon: '123', gaji: 10000),
    Doctor(nama: "vista", no_telpon: '123', gaji: 10000),
  ];

  List<Appointment> data_janji_temu = [];

  bool running = true;
  while (running) {
    print("\nMenu");
    print("1. Daftar doctor");
    print("2. Buat janji temu");
    print("3. Lihat janji temu");
    print("4. Keluar");
    stdout.write('Pilih opsi: ');
    String? pilihan = stdin.readLineSync();

    if (pilihan == '1') {
      print('\nDaftar Dokter');
      if (data_dokter.isEmpty) {
        print('Belum ada dokter yang tersedia.');
      } else {
        data_dokter.asMap().forEach((index, doctor) {
          print('${index + 1}. ${doctor.keterangan()}');
        });
      }
    } else if (pilihan == '2') {
      print('\nDaftar Dokter');
      if (data_dokter.isEmpty) {
        print('Belum ada dokter yang tersedia.');
      } else {
        data_dokter.asMap().forEach((index, doctor) {
          print('${index + 1}. ${doctor.keterangan()}');
        });
        stdout.write('Masukkan nomor dokter: ');
        String? pilihan_doctor = stdin.readLineSync();
        int? index_dokter = int.tryParse(pilihan_doctor ?? '');

        if (index_dokter != null && index_dokter > 0 && index_dokter <= data_dokter.length) {
          stdout.write('Masukkan nama pasien: ');
          String? nama_pasien = stdin.readLineSync();
          
          if (nama_pasien != null && nama_pasien.isNotEmpty) {
            // Tambahkan janji temu
            data_janji_temu.add(data_janji_temu as Appointment);
            print('Janji temu berhasil dibuat');
        } else {
          print('inputan tidak Valid');
          }
        } else {
          print('pilihan dokter tidak valid!');
        }
      }
    } else if (pilihan == '3') {
      print('\nDaftar Janji Temu');
      (data_janji_temu.isEmpty)
          ? print('Belum ada janji temu')
          : data_janji_temu
              .forEach((appointment) => print(appointment.keterangan()));
    } else if (pilihan == '4') {
      running = false;
      print('Terima kasih telah menggunakan aplikasi ini.');
    } else {
      print('pilihan tidak valid.');
    }
  }
}
