import 'package:blanjaloka_flutter/screens/sewatoko/pembayaran_sewa.dart';
import 'package:blanjaloka_flutter/widgets/card_radio.dart';
import 'package:blanjaloka_flutter/widgets/primary_button.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';

class PilihSewa extends StatefulWidget {
  const PilihSewa({Key? key}) : super(key: key);

  @override
  State<PilihSewa> createState() => _PilihSewaState();
}

class _PilihSewaState extends State<PilihSewa> {
  int _isRadioSelected = 0;
  String hargaSewa  = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: Text(
          "Pilih Jangka Waktu Sewa",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Expanded(
              child: ListView(
                children: [
                  Column(children: [
                    CardRadio(
                      borderActive:
                          _isRadioSelected == 1 ? bPrimaryColor : Colors.black,
                      label: '1 Bulan',
                      bestChoose: '',
                      desc:
                          'Gratis 7 hari percobaan, fitur penjualan yang mudah, riwayat penjualan terekam, transaksi keuangan jauh lebih cepat dan mudah.',
                      harga: 'Rp 210.000',
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      value: 1,
                      groupValue: _isRadioSelected,
                      onChanged: (newValue) {
                        setState(() {
                          _isRadioSelected = newValue;
                          hargaSewa = 'Rp 210.000';
                        });
                      },
                    ),
                    CardRadio(
                      borderActive:
                          _isRadioSelected == 3 ? bPrimaryColor : Colors.black,
                      label: '3 Bulan',
                      bestChoose: 'Pilihan Terbaik',
                      desc:
                          'Gratis 14 hari percobaan, fitur penjualan yang mudah, riwayat penjualan terekam, transaksi keuangan jauh lebih cepat dan mudah.',
                      harga: 'Rp 540.000',
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      value: 3,
                      groupValue: _isRadioSelected,
                      onChanged: (newValue) {
                        setState(() {
                          _isRadioSelected = newValue;
                          hargaSewa = 'Rp 540.000';
                        });
                      },
                    ),
                    CardRadio(
                      borderActive:
                          _isRadioSelected == 6 ? bPrimaryColor : Colors.black,
                      label: '6 Bulan',
                      bestChoose: '',
                      desc:
                          'Gratis 30 hari percobaan, fitur penjualan yang mudah, riwayat penjualan terekam, transaksi keuangan jauh lebih cepat dan mudah.',
                      harga: 'Rp 1.800.000',
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      value: 6,
                      groupValue: _isRadioSelected,
                      onChanged: (newValue) {
                        setState(() {
                          _isRadioSelected = newValue;
                          hargaSewa = 'Rp 1.800.000';
                        });
                      },
                    )
                  ]),
                ],
              ),
            ),
          ),
          PrimaryButton(
              buttontxt: 'Pilih Penawaran',
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => PembayaranSewa(biayaSewa: hargaSewa,lamaSewa: _isRadioSelected,)));
              })
        ],
      )),
    );
  }
}
