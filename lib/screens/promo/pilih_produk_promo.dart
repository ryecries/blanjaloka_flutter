import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:blanjaloka_flutter/api/produk.dart';
import 'package:blanjaloka_flutter/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widgets/primary_button.dart';
import '../../widgets/search.dart';
import '../addproduk/ubah_produk.dart';

class PilihProductPromo extends StatefulWidget {
  const PilihProductPromo({Key? key}) : super(key: key);

  @override
  _PilihProductPromoState createState() => _PilihProductPromoState();
}

class _PilihProductPromoState extends State<PilihProductPromo> {
  Future<List<Produk>> produkFuture = getProduk();

  static Future<List<Produk>> getProduk() async {
    const url = 'https://625f9a6753a42eaa07f775a7.mockapi.io/fake_api/products';
    final response = await http.get(Uri.parse(url));

    final body = json.decode(response.body);
    return body.map<Produk>(Produk.fromJson).toList();
  }

  String query = '';
  String? value;

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
                      "Masukkan Produk",
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: buildSearch()),
              Expanded(
                child: FutureBuilder<List<Produk>>(
                  future: produkFuture,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return Container(
                          height: MediaQuery.of(context).size.height / 1.75,
                          child: Center(
                              child: CircularProgressIndicator(
                                color: bPrimaryColor,
                              )));
                    } else if (snapshot.hasError) {
                      return Text('${snapshot.error}');
                    } else if (snapshot.hasData) {
                      final produks = snapshot.data!;

                      return buildProduk(produks);
                    } else {
                      return Container(
                        height: MediaQuery.of(context).size.height / 1.75,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                                image:
                                AssetImage('assets/images/no_product.png')),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 40),
                              child: Text(
                                'Belum ada produk yang ditambahkan, yuk tambah produk pertamamu',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
          PrimaryButton(
              buttontxt: 'Pilih Produk',
              onPressed: () {
                // Navigator.of(context).push(MaterialPageRoute(
                //     builder: (context) => PembayaranSewa(
                //           dataPembayaran: _isRadioSelected,
                //           passedImg: passImg,
                //           passedText: passText,
                //         )));
                // Navigator.of(context).pop(_isRadioSelected.toString());
              })
        ],
      ),
    );
  }

  Widget buildSearch() => SearchWidget(
      text: query, hintText: 'Cari Produk Di Sini', onChanged: searchProduk);

  void searchProduk(String query) {
    setState(() {
      this.query = query;
    });
  }

  Widget buildProduk(List<Produk> produks) => ListView.builder(
    itemCount: produks.length,
    itemBuilder: (context, index) {
      final produk = produks[index];

      return Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
            border: Border.all(width: 0.1),
            borderRadius: BorderRadius.circular(10)),
        child: Stack(
          children: [
            // Tambah Checklist button
            Column(
              children: [
                Container(
                  padding:
                  EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                          produk.image,
                          fit: BoxFit.cover,
                          height: 80,
                          width: 80,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: produk.name,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            RichText(
                              text: TextSpan(
                                  text: 'Rp. ${produk.price} ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                  children: [
                                    TextSpan(
                                        text: '/ 1 ${produk.satuan}',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w400,
                                            color: Colors.grey))
                                  ]),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            // RichText(
                            //     text: TextSpan(
                            //         text: 'Stok : ',
                            //         style: TextStyle(
                            //             fontSize: 12,
                            //             fontWeight: FontWeight.w400,
                            //             color: Colors.grey),
                            //         children: [
                            //           TextSpan(
                            //               text: '${produk.stock}',
                            //               style: TextStyle(color: Colors.black))
                            //         ])),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}
