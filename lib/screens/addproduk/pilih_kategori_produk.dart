import 'package:blanjaloka_flutter/constant.dart';
import 'package:blanjaloka_flutter/screens/addproduk/tambah_produk.dart';

import 'package:blanjaloka_flutter/widgets/primary_button.dart';
import 'package:flutter/material.dart';

import '../../widgets/labeled_radio.dart';
import '../../widgets/no_image_labeled_radio.dart';

class PilihKategoriProduk extends StatefulWidget {
  const PilihKategoriProduk({Key? key}) : super(key: key);

  @override
  State<PilihKategoriProduk> createState() => _PilihKategoriProdukState();
}

class _PilihKategoriProdukState extends State<PilihKategoriProduk> {
  int _isRadioSelected = 0;
  String? passKategori;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .50,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Row(
                  children: [
                    IconButton(
                      splashColor: bPrimaryColor,
                      icon: Icon(Icons.close, color: Colors.black54),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                    Text(
                      "Pilih Kategori Penjualan",
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    Column(
                      children: [
                        NoImageLabeledRadio(
                          borderActive: _isRadioSelected == 1
                              ? bPrimaryColor
                              : Colors.black,
                          label: 'Sayuran',
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          value: 1,
                          groupValue: _isRadioSelected,
                          onChanged: (newValue) {
                            setState(() {
                              _isRadioSelected = newValue;
                              passKategori = 'Sayuran';
                            });
                          },
                        ),
                        NoImageLabeledRadio(
                          borderActive: _isRadioSelected == 2
                              ? bPrimaryColor
                              : Colors.black,
                          label: 'Buah',
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          value: 2,
                          groupValue: _isRadioSelected,
                          onChanged: (newValue) {
                            setState(() {
                              _isRadioSelected = newValue;
                              passKategori = 'Buah';
                            });
                          },
                        ),
                        NoImageLabeledRadio(
                          borderActive: _isRadioSelected == 3
                              ? bPrimaryColor
                              : Colors.black,
                          label: 'Daging',
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          value: 3,
                          groupValue: _isRadioSelected,
                          onChanged: (newValue) {
                            setState(() {
                              _isRadioSelected = newValue;
                              passKategori = 'Daging';
                            });
                          },
                        ),
                        NoImageLabeledRadio(
                          borderActive: _isRadioSelected == 4
                              ? bPrimaryColor
                              : Colors.black,
                          label: 'Ikan',
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          value: 4,
                          groupValue: _isRadioSelected,
                          onChanged: (newValue) {
                            setState(() {
                              _isRadioSelected = newValue;
                              passKategori = 'Ikan';
                            });
                          },
                        ),
                        NoImageLabeledRadio(
                          borderActive: _isRadioSelected == 5
                              ? bPrimaryColor
                              : Colors.black,
                          label: 'Sembako',
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          value: 5,
                          groupValue: _isRadioSelected,
                          onChanged: (newValue) {
                            setState(() {
                              _isRadioSelected = newValue;
                              passKategori = 'Sembako';
                            });
                          },
                        ),
                        SizedBox(
                          height: 100,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          PrimaryButton(
              buttontxt: 'Konfirmasi',
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => TambahProduk(
                          dataKategori : _isRadioSelected,
                          passedKategori: passKategori,
                        )));
                // Navigator.of(context).pop(_isRadioSelected.toString());
              })
        ],
      ),
    );
  }
}
