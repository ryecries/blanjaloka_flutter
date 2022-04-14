import 'package:blanjaloka_flutter/constant.dart';
import 'package:blanjaloka_flutter/screens/sewatoko/pembayaran_sewa.dart';
import 'package:blanjaloka_flutter/widgets/primary_button.dart';
import 'package:flutter/material.dart';

import '../../widgets/labeled_radio.dart';

class PilihPembayaran extends StatefulWidget {
  const PilihPembayaran({Key? key}) : super(key: key);

  @override
  State<PilihPembayaran> createState() => _PilihPembayaranState();
}

class _PilihPembayaranState extends State<PilihPembayaran> {
  int _isRadioSelected = 0;
  String? passImg;
  String? passText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .90,
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
                      "Pilih Metode Pembayaran",
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
                        Container(
                          margin: EdgeInsets.only(left: 15, top: 10),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Transfer Bank',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              )),
                        ),
                        LabeledRadio(
                          borderActive: _isRadioSelected == 1
                              ? bPrimaryColor
                              : Colors.black,
                          img: 'assets/images/logo_bca.png',
                          label: 'BCA Virtual Account',
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          value: 1,
                          groupValue: _isRadioSelected,
                          onChanged: (newValue) {
                            setState(() {
                              _isRadioSelected = newValue;
                              passImg = 'assets/images/logo_bca.png';
                              passText = 'BCA Virtual Account';
                            });
                          },
                        ),
                        LabeledRadio(
                          borderActive: _isRadioSelected == 2
                              ? bPrimaryColor
                              : Colors.black,
                          img: 'assets/images/logo_bri.png',
                          label: 'BRI Virtual Account',
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          value: 2,
                          groupValue: _isRadioSelected,
                          onChanged: (newValue) {
                            setState(() {
                              _isRadioSelected = newValue;
                              passImg = 'assets/images/logo_bri.png';
                              passText = 'BRI Virtual Account';
                            });
                          },
                        ),
                        LabeledRadio(
                          borderActive: _isRadioSelected == 3
                              ? bPrimaryColor
                              : Colors.black,
                          img: 'assets/images/logo_bni.png',
                          label: 'BNI Virtual Account',
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          value: 3,
                          groupValue: _isRadioSelected,
                          onChanged: (newValue) {
                            setState(() {
                              _isRadioSelected = newValue;
                              passImg = 'assets/images/logo_bni.png';
                              passText = 'BNI Virtual Account';
                            });
                          },
                        ),
                        LabeledRadio(
                          borderActive: _isRadioSelected == 4
                              ? bPrimaryColor
                              : Colors.black,
                          img: 'assets/images/logo_mandiri.png',
                          label: 'Mandiri Virtual Account',
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          value: 4,
                          groupValue: _isRadioSelected,
                          onChanged: (newValue) {
                            setState(() {
                              _isRadioSelected = newValue;
                              passImg = 'assets/images/logo_mandiri.png';
                              passText = 'Mandiri Virtual Account';
                            });
                          },
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15, top: 25),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'E-Wallet',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              )),
                        ),
                        LabeledRadio(
                          borderActive: _isRadioSelected == 5
                              ? bPrimaryColor
                              : Colors.black,
                          img: 'assets/images/logo_dana.png',
                          label: 'DANA',
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          value: 5,
                          groupValue: _isRadioSelected,
                          onChanged: (newValue) {
                            setState(() {
                              _isRadioSelected = newValue;
                              passImg = 'assets/images/logo_dana.png';
                              passText = 'DANA';
                            });
                          },
                        ),
                        LabeledRadio(
                          borderActive: _isRadioSelected == 6
                              ? bPrimaryColor
                              : Colors.black,
                          img: 'assets/images/logo_gopay.png',
                          label: 'Gopay',
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          value: 6,
                          groupValue: _isRadioSelected,
                          onChanged: (newValue) {
                            setState(() {
                              _isRadioSelected = newValue;
                              passImg = 'assets/images/logo_gopay.png';
                              passText = 'Gopay';
                            });
                          },
                        ),
                        LabeledRadio(
                          borderActive: _isRadioSelected == 7
                              ? bPrimaryColor
                              : Colors.black,
                          img: 'assets/images/logo_linkaja.png',
                          label: 'Link Aja!',
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          value: 7,
                          groupValue: _isRadioSelected,
                          onChanged: (newValue) {
                            setState(() {
                              _isRadioSelected = newValue;
                              passImg = 'assets/images/logo_linkaja.png';
                              passText = 'Link Aja!';
                            });
                          },
                        ),
                        LabeledRadio(
                          borderActive: _isRadioSelected == 8
                              ? bPrimaryColor
                              : Colors.black,
                          img: 'assets/images/logo_ovo.png',
                          label: 'OVO',
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          value: 8,
                          groupValue: _isRadioSelected,
                          onChanged: (newValue) {
                            setState(() {
                              _isRadioSelected = newValue;
                              passImg = 'assets/images/logo_ovo.png';
                              passText = 'OVO';
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
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => PembayaranSewa(
                //           dataPembayaran: _isRadioSelected,
                //           passedImg: passImg,
                //           passedText: passText,
                //         )));
                Navigator.of(context).pop(_isRadioSelected.toString());
              })
        ],
      ),
    );
  }
}
