import 'package:blanjaloka_flutter/screens/produk/product.dart';
import 'package:blanjaloka_flutter/widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PromoToko extends StatefulWidget {
  const PromoToko({Key? key}) : super(key: key);

  @override
  State<PromoToko> createState() => _PromoTokoState();
}

class _PromoTokoState extends State<PromoToko> {
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
          "Promo Toko",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Row(children: [
            Container(
                margin: EdgeInsets.all(15),
                width: 180,
                height: 210,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 6,
                          offset: Offset(1, 1))
                    ]),
                child: Image(image: AssetImage("assets/images/cod.png"))),
            Padding(
              padding: EdgeInsets.only(left: 2),
              child: Text(
                "data",
                textAlign: TextAlign.left,
              ),
            ),
          ])
        ],
      ),
    );
  }
}
