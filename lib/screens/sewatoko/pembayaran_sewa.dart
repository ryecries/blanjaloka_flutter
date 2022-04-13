import 'package:blanjaloka_flutter/constant.dart';
import 'package:blanjaloka_flutter/screens/sewatoko/menunggu_pembayaran.dart';
import 'package:blanjaloka_flutter/screens/sewatoko/pilih_pembayaran.dart';
import 'package:blanjaloka_flutter/screens/sewatoko/pilih_sistem_pembayaran.dart';
import 'package:blanjaloka_flutter/screens/tokoregister.dart';
import 'package:blanjaloka_flutter/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class PembayaranSewa extends StatefulWidget {
  const PembayaranSewa(
      {Key? key, this.dataPembayaran, this.passedImg, this.passedText})
      : super(key: key);
  final int? dataPembayaran;
  final String? passedImg;
  final String? passedText;

  @override
  State<PembayaranSewa> createState() => _PembayaranSewaState();
}

class _PembayaranSewaState extends State<PembayaranSewa> {
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
          "Pembayaran",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: SafeArea(
          child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
                        child: Row(
                          children: [
                            Image.asset('assets/images/logo_market.png'),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Sewa Toko',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16)),
                                  Text('3 Bulan',
                                      style: TextStyle(fontSize: 13))
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Divider(
                          height: 10,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                        child: Column(
                          children: [
                            Row(children: [
                              Text('Batas Akhir Sewa :'),
                              Text(' 26 Nov 2021',
                                  style: TextStyle(fontWeight: FontWeight.bold))
                            ]),
                            Row(children: [
                              Text('Biaya Sewa Toko :'),
                              Text(' Rp 540.000',
                                  style: TextStyle(fontWeight: FontWeight.bold))
                            ]),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(height: 10, thickness: 2),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Metode Pembayaran',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Material(
                        elevation: 0.5,
                        color: Colors.white,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(5),
                          splashColor: bPrimaryColor,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  border: Border.all(width: 0.1),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 4, 20, 4),
                                child: widget.dataPembayaran != null
                                    ? Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            widget.passedImg!,
                                            height: 50,
                                            width: 50,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 15),
                                            child: Text(
                                              widget.passedText!,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Spacer(),
                                          Icon(Icons.arrow_forward_ios,
                                              size: 16)
                                        ],
                                      )
                                    : Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [

                                          Text(
                                            "Pilih Sistem Pembayaran",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(height: 50,),
                                          Icon(Icons.arrow_forward_ios,
                                              size: 16)
                                        ],
                                      ),
                              ),
                            ),
                          ),
                          onTap: () {
                            showModalBottomSheet(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20))),
                                isScrollControlled: true,
                                enableDrag: false,
                                context: context,
                                builder: (context) => PilihPembayaran());
                          },
                        ),
                      )
                    ],
                  ),
                ),
                Divider(height: 10, thickness: 2),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    children: [
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Sistem Pembayaran',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Material(
                          elevation: 0.5,
                          color: Colors.white,
                          child: InkWell(
                            splashColor: bPrimaryColor,
                            borderRadius: BorderRadius.circular(5),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    border: Border.all(width: 0.1),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 20, 20, 20),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Pilih Sistem Pembayaran",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Icon(Icons.arrow_forward_ios, size: 16)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            onTap: () {
                              showModalBottomSheet(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20),
                                          topRight: Radius.circular(20))),
                                  isScrollControlled: true,
                                  enableDrag: false,
                                  context: context,
                                  builder: (context) =>
                                      PilihSistemPembayaran());
                            },
                          ))
                    ],
                  ),
                )
              ],
            ),
            PrimaryButton(buttontxt: 'Bayar', onPressed: () {
              String? textToSend = widget.passedText;
              String? imgToSend = widget.passedImg;
              Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => MenungguPembayaran(img: imgToSend!,text: textToSend!)),
            );})
          ],
        ),
      )),
    );
  }
}
