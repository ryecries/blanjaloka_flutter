import 'package:blanjaloka_flutter/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../widget.dart';
import '../../widgets/primary_button.dart';

class InfoRekening extends StatefulWidget {
  const InfoRekening({Key? key}) : super(key: key);

  @override
  State<InfoRekening> createState() => _InfoRekeningState();
}

class _InfoRekeningState extends State<InfoRekening> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
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
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        height: getProportionateScreenHeight(100),
        child: PrimaryButton(
            buttontxt: "Kirim Data",
            onPressed: () {
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => EditProfil()));
            }),
      ),
    );
  }
}
