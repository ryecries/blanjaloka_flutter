import 'dart:io';

import 'package:blanjaloka_flutter/constant.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../size_config.dart';
import '../../widgets/primary_button.dart';

class RegisterInfoToko extends StatefulWidget {
  const RegisterInfoToko({Key? key}) : super(key: key);

  @override
  State<RegisterInfoToko> createState() => _RegisterInfoTokoState();
}

class _RegisterInfoTokoState extends State<RegisterInfoToko> {
  File? image;
  String? _namaToko;
  String? _kategoriProduk;
  String? _prov;
  String? _kota;
  String? _pasar;
  String? _alamatToko;
  String? _patokan;
  String? _lokasiToko;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildNameToko() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 8,
            left: 8,
          ),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Nama Toko",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          child: TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: 'Masukkan Nama Toko',
            ),
            onSaved: (value) {
              _namaToko = value;
            },
          ),
        )
      ],
    );
  }

  Widget _buildKategoriProduk() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 8,
            left: 8,
          ),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Pilih Kategori',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          child: Container(
            height: 56,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(width: 1.0, color: Colors.grey),
              ),
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterInfoToko()),
                );
              },
              child: Row(
                children: [
                  Expanded(
                      flex: 10,
                      child: Text(
                        'Informasi Toko',
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                      )),
                  Expanded(
                      flex: 2,
                      child: Icon(Icons.keyboard_arrow_down,
                          color: Colors.black45)),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildProv() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 8,
            left: 8,
          ),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Pilih Provinsi',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          child: TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                hintText: 'Pilih Provinsi',
                suffixIcon: Icon(Icons.keyboard_arrow_down)),
          ),
        )
      ],
    );
  }

  Widget _buildKota() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 8,
            left: 8,
          ),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Pilih Kota',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          child: TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                hintText: 'Pilih Kota',
                suffixIcon: Icon(Icons.keyboard_arrow_down)),
          ),
        )
      ],
    );
  }

  Widget _buildPasar() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 8,
            left: 8,
          ),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Pilih Pasar',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          child: TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                hintText: 'Pilih Pasar',
                suffixIcon: Icon(Icons.keyboard_arrow_down)),
          ),
        )
      ],
    );
  }

  Widget _buildAlamatToko() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 8,
            left: 8,
          ),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Alamat Toko",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          child: TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: 'Masukkan Alamat Toko',
            ),
          ),
        )
      ],
    );
  }

  Widget _buildPatokan() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 8,
            left: 8,
          ),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Patokan",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          child: TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: 'Nama Blok, lantai, dll',
            ),
          ),
        )
      ],
    );
  }

  Widget _buildLokasiToko() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Text(
            "Lokasi",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        // Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 15),
          child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: bPrimaryColor)))),
              child: Text(
                "Pilih Lokasi",
                style: TextStyle(
                    color: bPrimaryColor, fontWeight: FontWeight.bold),
              )),
        )
      ],
    );
  }

  Future getImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? imagePicked =
        await _picker.pickImage(source: ImageSource.gallery);
    image = File(imagePicked!.path);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black54),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "Informasi Toko",
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
          margin: EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    image != null
                        ? Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image.file(
                                  image!,
                                  fit: BoxFit.cover,
                                  height: 80,
                                  width: 80,
                                )),
                          )
                        : Container(
                            padding: const EdgeInsets.only(left: 8),
                            child: Image(
                                image: AssetImage(
                                    'assets/images/upload_foto.png'))),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        "Foto Profil Toko",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: const EdgeInsets.only(right: 8),
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(color: bPrimaryColor)))),
                          // TextButton.styleFrom(backgroundColor: bPrimaryColor),
                          onPressed: () async {
                            await getImage();
                          },
                          child: Text(
                            "Ambil Foto",
                            style: TextStyle(
                                color: bPrimaryColor,
                                fontWeight: FontWeight.bold),
                          )),
                    )
                  ],
                ),
                Expanded(
                    child: ListView(
                  children: [
                    Form(
                        child: Column(
                      key: _formKey,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        new Padding(padding: EdgeInsets.only(top: 15)),
                        _buildNameToko(),
                        _buildKategoriProduk(),
                        _buildProv(),
                        _buildKota(),
                        _buildPasar(),
                        _buildAlamatToko(),
                        _buildPatokan(),
                        _buildLokasiToko(),
                      ],
                    ))
                  ],
                ))
              ]),
            ],
          )),
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
