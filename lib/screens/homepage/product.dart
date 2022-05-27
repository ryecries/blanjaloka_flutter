import 'dart:convert';

import 'package:blanjaloka_flutter/constant.dart';
import 'package:blanjaloka_flutter/models/riwayat_transaksi.dart';
import 'package:blanjaloka_flutter/screens/addproduk/tambah_produk.dart';
import 'package:blanjaloka_flutter/screens/chat/adminchat.dart';
import 'package:blanjaloka_flutter/screens/chat/notification.dart';
import 'package:blanjaloka_flutter/screens/order_detail.dart';
import 'package:blanjaloka_flutter/widgets/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;

import '../../models/produk.dart';
import '../addproduk/ubah_produk.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  Future<List<Produk>> produkFuture = getProduk();

  static Future<List<Produk>> getProduk() async {
    const url = 'https://625f9a6753a42eaa07f775a7.mockapi.io/fake_api/products';
    final response = await http.get(Uri.parse(url));

    final body = json.decode(response.body);
    return body.map<Produk>(Produk.fromJson).toList();
  }

  String query = '';
  final filterProduk = ['Semua Produk', 'Produk Nabati', 'Produk Hewani'];
  String? value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            "Produk",
            style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
                fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TambahProduk()),
              );
            },
            icon: SvgPicture.asset('assets/icons/icon_add.svg'),
            color: Colors.black87,
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AdminChat()),
              );
            },
            icon: SvgPicture.asset('assets/icons/icon_chat.svg'),
            color: Colors.black87,
          ),
          IconButton(
            onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Notifikasi()),
            );
            },
            icon: SvgPicture.asset('assets/icons/icon_notification.svg'),
            color: Colors.black87,
          ),
          SizedBox(width: 15)
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: [
                    buildSearch(),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: MediaQuery.of(context).size.width * .50,
                        margin: EdgeInsets.symmetric(vertical: 15),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(color: Colors.grey, width: 0.5)),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                              borderRadius: BorderRadius.circular(25),
                              alignment: Alignment.center,
                              hint: Text('Filter Produk',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black45)),
                              value: value,
                              icon: Icon(Icons.keyboard_arrow_down_rounded,
                                  color: Colors.black45),
                              items: filterProduk.map(buildMenuItem).toList(),
                              onChanged: (value) =>
                                  setState(() => this.value = value)),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Ada ${transaksi.length} produk yang dijual.',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 15),
                      ),
                    ),
                  ],
                )),
            Divider(thickness: 2, height: 2),
            Container(
              height: MediaQuery.of(context).size.height / 1.69,
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
            )
          ],
        ),
      )),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black45),
        ),
      );

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
                                RichText(
                                    text: TextSpan(
                                        text: 'Stok : ',
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: Colors.grey),
                                        children: [
                                      TextSpan(
                                          text: '${produk.stock}',
                                          style: TextStyle(color: Colors.black))
                                    ]))
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        bottom: 25,
                      ),
                      width: double.infinity,
                      child: ElevatedButton(
                        child: Container(
                            padding: EdgeInsets.symmetric(vertical: 12),
                            child: Text(
                              "Ubah Produk",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            )),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UbahProduk()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0.5,
                          primary: Colors.white,
                          onPrimary: Color(0xFF00838F),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: Color(0xFF00838F),
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        'assets/icons/icon_delete.svg',
                        height: 20,
                      )),
                )
              ],
            ),
          );
        },
      );
}
