import 'package:blanjaloka_flutter/constant.dart';
import 'package:blanjaloka_flutter/screens/addproduk/tambah_produk.dart';

import 'package:blanjaloka_flutter/widgets/primary_button.dart';
import 'package:flutter/material.dart';

import '../../widgets/no_image_labeled_radio.dart';

class PilihSatuanProduk extends StatefulWidget {
  const PilihSatuanProduk({Key? key}) : super(key: key);

  @override
  State<PilihSatuanProduk> createState() => _PilihSatuanProdukState();
}

class _PilihSatuanProdukState extends State<PilihSatuanProduk> {
  int _isRadioSelected = 0;
  String? passSatuan;


  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .45,
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
                      "Pilih Satuan Produk",
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
                          label: 'Bungkus (bks)',
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          value: 1,
                          groupValue: _isRadioSelected,
                          onChanged: (newValue) {
                            setState(() {
                              _isRadioSelected = newValue;
                              passSatuan = 'Bungkus (bks)';
                            });
                          },
                        ),
                        NoImageLabeledRadio(
                          borderActive: _isRadioSelected == 2
                              ? bPrimaryColor
                              : Colors.black,
                          label: 'Gram (g)',
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          value: 2,
                          groupValue: _isRadioSelected,
                          onChanged: (newValue) {
                            setState(() {
                              _isRadioSelected = newValue;
                              passSatuan = 'Gram (g)';
                            });
                          },
                        ),
                        NoImageLabeledRadio(
                          borderActive: _isRadioSelected == 3
                              ? bPrimaryColor
                              : Colors.black,
                          label: 'Kilogram (Kg)',
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          value: 3,
                          groupValue: _isRadioSelected,
                          onChanged: (newValue) {
                            setState(() {
                              _isRadioSelected = newValue;
                              passSatuan = 'Kilogram (Kg)';
                            });
                          },
                        ),
                        NoImageLabeledRadio(
                          borderActive: _isRadioSelected == 4
                              ? bPrimaryColor
                              : Colors.black,
                          label: 'Liter (ltr)',
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          value: 4,
                          groupValue: _isRadioSelected,
                          onChanged: (newValue) {
                            setState(() {
                              _isRadioSelected = newValue;
                              passSatuan = 'Liter (ltr)';
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
                      dataSatuan : _isRadioSelected,
                      passedSatuan: passSatuan,
                    )));
                // Navigator.of(context).pop(_isRadioSelected.toString());
              })
        ],
      ),
    );
  }
}
