import 'package:blanjaloka_flutter/constant.dart';
import 'package:blanjaloka_flutter/widgets/primary_button.dart';
import 'package:blanjaloka_flutter/widgets/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
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
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/icon_add.svg'),
            color: Colors.black87,
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/icon_chat.svg'),
            color: Colors.black87,
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/icon_notification.svg'),
            color: Colors.black87,
          ),
          SizedBox(width: 15)
        ],
      ),
      body: SafeArea(
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
                      'Belum ada produk yang dijual.',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                    ),
                  ),
                ],
              )),
          Divider(thickness: 2, height: 2),
          Container(
            height: MediaQuery.of(context).size.height / 1.75,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(image: AssetImage('assets/images/no_product.png')),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    'Belum ada produk yang ditambahkan, yuk tambah produk pertamamu',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
              ],
            ),
          )
        ],
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
}