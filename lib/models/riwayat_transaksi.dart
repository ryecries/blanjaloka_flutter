import 'package:flutter/material.dart';

class RiwayatTransaksi {
  final String nama, profilPict, status, date;
  final int price, id;
  final Color iconColor;
  final IconData iconData;

  RiwayatTransaksi({
    required this.nama,
    required this.profilPict,
    required this.price,
    required this.id,
    required this.status,
    required this.date,
    required this.iconColor,
    required this.iconData,
  });
}

List<RiwayatTransaksi> transaksi = [
  RiwayatTransaksi(
      nama: 'Adi Nugroho',
      profilPict: 'assets/images/profil_photo_0.png',
      price: 200000,
      id: 1621093,
      status: 'Pending',
      date: '12 Sep 2021',
      iconColor: Colors.blue,
      iconData: Icons.access_time),
  RiwayatTransaksi(
      nama: 'Ria Subekti',
      profilPict: 'assets/images/profil_photo_1.png',
      price: 55000,
      id: 1621095,
      status: 'Dibatalkan',
      date: '12 Sep 2021',
      iconColor: Colors.red,
      iconData: Icons.cancel_rounded),
  RiwayatTransaksi(
      nama: 'Yati Suryani',
      profilPict: 'assets/images/profil_photo_2.png',
      price: 200000,
      id: 1621093,
      status: 'Dibatalkan',
      date: '12 Sep 2021',
      iconColor: Colors.red,
      iconData: Icons.cancel_rounded),
  RiwayatTransaksi(
      nama: 'Dito Reski',
      profilPict: 'assets/images/profil_photo_3.png',
      price: 200000,
      id: 1621093,
      status: 'Selesai',
      date: '12 Sep 2021',
      iconColor: Colors.green,
      iconData: Icons.add)
];
