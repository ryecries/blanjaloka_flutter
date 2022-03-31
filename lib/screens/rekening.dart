import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../widget.dart';

class rekening extends StatefulWidget {
  const rekening({Key? key}) : super(key: key);

  @override
  State<rekening> createState() => _rekeningState();
}

class _rekeningState extends State<rekening> {
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
          "Informasi Rekening",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            child: Stack(
              children: [
                ListView(
                  children: [
                    Column(
                      children: [
                        ImagePedagangWidget(titleImg: "Foto Buku Rekening"),
                        // identitas pedagang dll. isi dibawah
                        Padding(padding: const EdgeInsets.only(top: 12)),
                        PedagangWidget(
                          title: "Nama Pemilik Rekening",
                          hint: "Masukkan Nama Pemilik Rekening",
                        ),
                        PedagangWidget(
                          title: "Nomor Rekening",
                          hint: "Masukkan Nomor Rekening",
                        ),
                        Pedagang2Widget(
                          title2: "Nama Bank",
                          hint2: "Pilih Nama Bank",
                        ),
                      ],
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: const EdgeInsets.only(
                      left: 10,
                      right: 10,
                      bottom: 25,
                    ),
                    width: double.infinity,
                    child: ElevatedButton(
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 100, vertical: 12),
                          child: Text(
                            "Simpan",
                            style: TextStyle(fontSize: 20),
                          )),
                      onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => EnterPassword()),);
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
          ),
        ),
      ),
    );
  }
}
