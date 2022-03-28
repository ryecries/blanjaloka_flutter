import 'package:flutter/material.dart';
import 'package:blanjaloka_flutter/widget.dart';

class Pedagang extends StatefulWidget {
  const Pedagang({Key? key}) : super(key: key);

  @override
  _PedagangState createState() => _PedagangState();
}

class _PedagangState extends State<Pedagang> {
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
        title: Text("Identitas Pedagang",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black),),
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
                        ImagePedagangWidget(titleImg: "Foto KTP"),
                        ImagePedagangWidget(titleImg: "Foto Diri dengan KTP"),
                        // identitas pedagang dll. isi dibawah
                        Padding(padding: const EdgeInsets.only(top: 12)),
                        PedagangWidget(
                          title: "Nama Lengkap",
                          hint: "Masukkan Nama Lengkap",
                        ),
                        PedagangWidget(
                          title: "Nomor KTP",
                          hint: "Masukkan Nomor KTP Anda",
                        ),
                        PedagangWidget(
                          title: "Nomor NPWP",
                          hint: "Masukkan Nomor NPWP Anda",
                        ),
                        PedagangWidget(
                          title: "Tempat Lahir",
                          hint: "Masukkan Tempat Lahir Anda",
                        ),
                        Pedagang2Widget(
                          title2: "Tanggal Lahir",
                          hint2: "Pilih Tanggal",
                        ),
                        PedagangWidget(
                          title: "Alamat Sesuai KTP",
                          hint: "Masukkan Alamat Anda",
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
                          padding: EdgeInsets.symmetric(horizontal: 100,vertical: 12),
                          child: Text("Simpan",style: TextStyle(fontSize: 20),)),
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
