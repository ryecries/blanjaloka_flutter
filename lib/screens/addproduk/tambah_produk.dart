import 'package:blanjaloka_flutter/nav.dart';
import 'package:blanjaloka_flutter/screens/addproduk/pilih_kategori_produk.dart';
import 'package:blanjaloka_flutter/screens/addproduk/pilih_satuan_produk.dart';
import 'package:flutter/material.dart';

import '../../widget.dart';
import '../../widgets/primary_button.dart';
import 'package:blanjaloka_flutter/constant.dart';

import 'package:blanjaloka_flutter/widgets/primary_button.dart';

class TambahProduk extends StatefulWidget {
  final int? dataKategori;
  final int? dataSatuan;
  final String? passedKategori;
  final String? passedSatuan;
  const TambahProduk({Key? key, this.dataKategori,this.dataSatuan, this.passedKategori,this.passedSatuan}) : super(key: key);

  @override
  State<TambahProduk> createState() => _TambahProdukState();
}

class _TambahProdukState extends State<TambahProduk> {
  String? kategori;
  String? satuan;
  bool _enable = false;

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
          "Tambah Produk",
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
                        ImageProdukWidget(titleImgs: "Foto Produk"),
                        // identitas pedagang dll. isi dibawah
                        Padding(padding: const EdgeInsets.only(top: 12)),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 12,
                                left: 8,
                              ),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Nama Produk yang dijual",
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
                                decoration: InputDecoration(hintText: "Nama Produk"),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 12,
                                left: 8,
                              ),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Kategori Produk",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                        color: Colors.grey,
                                        width: 1.0,
                                      ),
                                  )),
                              child: Column(
                                children: [
                                  InkWell(
                                    borderRadius: BorderRadius.circular(5),
                                    splashColor: bPrimaryColor,
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        width: double.infinity,
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                                          child: widget.dataKategori != null
                                              ? Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(height: 45,),
                                                    Text(
                                                        widget.passedKategori!,
                                                      ),
                                                    Spacer(),
                                                    Icon(Icons.arrow_forward_ios, size: 16)
                                                  ],
                                                )
                                              : Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text(
                                                      "Kategori Produk",
                                                      style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),
                                                    ),
                                                    SizedBox(
                                                      height: 45,
                                                    ),
                                                    Icon(Icons.arrow_forward_ios, size: 16)
                                                  ],
                                                ),
                                        ),
                                      ),
                                    ),
                                    onTap: () async {
                                      final result =
                                          await showModalBottomSheet(
                                              shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.only(
                                                      topLeft: Radius.circular(20), topRight: Radius.circular(20))),
                                              isScrollControlled: true,
                                              enableDrag: false, context: context, builder: (context) => PilihKategoriProduk());
                                      setState(() {
                                        this.kategori = result;
                                      });
                                    },
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),

                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 12,
                                left: 8,
                              ),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Harga Produk",
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
                                decoration: InputDecoration(hintText: "Rp"),
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                width: 180,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 12,
                                        left: 8,
                                      ),
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          "Jumlah Satuan",
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
                                        decoration: InputDecoration(hintText: "Jumlah Satuan"),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 170,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 12,
                                      left: 8,
                                    ),
                                    child: Align(
                                      alignment: Alignment.topLeft,
                                      child: Text(
                                        "Satuan Produk",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border(
                                          bottom: BorderSide(
                                            color: Colors.grey,
                                            width: 1.0,
                                          ),
                                        )),
                                    child: Column(
                                      children: [
                                        InkWell(
                                          borderRadius: BorderRadius.circular(5),
                                          splashColor: bPrimaryColor,
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                              width: double.infinity,
                                              child: Padding(
                                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                                                child: widget.dataSatuan != null
                                                    ? Row(
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  children: [
                                                    SizedBox(height: 45,),
                                                    Text(
                                                      widget.passedSatuan!,
                                                    ),
                                                    Spacer(),
                                                    Icon(Icons.arrow_forward_ios, size: 16)
                                                  ],
                                                )
                                                    : Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Text(
                                                      "Satuan Produk",
                                                      style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),
                                                    ),
                                                    SizedBox(height: 45,),
                                                    Icon(Icons.arrow_forward_ios, size: 16)
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          onTap: () async {
                                            final result =
                                            await showModalBottomSheet(
                                                shape: RoundedRectangleBorder(
                                                    borderRadius: BorderRadius.only(
                                                        topLeft: Radius.circular(20), topRight: Radius.circular(20))),
                                                isScrollControlled: true,
                                                enableDrag: false, context: context, builder: (context) => PilihSatuanProduk());
                                            setState(() {
                                              this.satuan = result;
                                            });
                                          },
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 12,
                                left: 8,
                              ),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Stok tersedia",
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
                                decoration: InputDecoration(hintText: "Stok Tersedia"),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 12,
                                left: 8,
                              ),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Minimal Pemesanan",
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
                                decoration: InputDecoration(hintText: "Minimal Pemesanan"),
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 12,
                                left: 8,
                              ),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "Deskripsi Produk",
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
                                decoration: InputDecoration(hintText: "Deskripsi Produk"),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 190,
                              margin: EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 8,
                              ),
                              color: Colors.transparent,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "Status Toko",
                                    style: TextStyle(fontSize: 14, color: Colors.black, fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    "Jika status aktif, maka produkmu dapat dicari pembeli",
                                    style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Align(
                                alignment: Alignment.topRight,
                                child: Container(
                                    margin: EdgeInsets.symmetric(
                                      vertical: 8,
                                    ),
                                    color: Colors.transparent,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        CustomSwitch(
                                          value: _enable,
                                          onChanged: (bool val) {
                                            setState(() {
                                              _enable = val;
                                            });
                                          },
                                        ),
                                      ],
                                    )),
                              ),
                            ),
                            // SizedBox(width: 16,),
                          ],
                        ),
                        SizedBox(
                          height: 80,
                        )
                      ],
                    ),
                  ],
                ),
                PrimaryButton(
                    buttontxt: 'Selesai',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Nav()),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
