import 'package:blanjaloka_flutter/constant.dart';
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
        children: [buildSearch()],
      )),
    );
  }

  Widget buildSearch() => SearchWidget(
      text: query, hintText: 'Cari Produk Di Sini', onChanged: searchProduk);

  void searchProduk(String query) {
    setState(() {
      this.query = query;
    });
  }
}
