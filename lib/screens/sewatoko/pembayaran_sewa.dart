import 'package:blanjaloka_flutter/constant.dart';
import 'package:blanjaloka_flutter/screens/tokoregister.dart';
import 'package:flutter/material.dart';

class PembayaranSewa extends StatefulWidget {
  const PembayaranSewa({Key? key}) : super(key: key);

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
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(5),
                          splashColor: bPrimaryColor,
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => TokoReg()),
                            // );
                          },
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
                                      "Pilih Pembayaran",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Icon(Icons.arrow_forward_ios, size: 16)
                                  ],
                                ),
                              ),
                            ),
                          ),
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
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        child: InkWell(
                          splashColor: bPrimaryColor,
                          borderRadius: BorderRadius.circular(5),
                          onTap: () {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => TokoReg()),
                            // );
                          },
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
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                width: double.infinity,
                child: ElevatedButton(
                  child: Container(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: Text(
                        "Bayar",
                        style: TextStyle(fontSize: 20),
                      )),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => Nav()),
                    // );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF00838F),
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
