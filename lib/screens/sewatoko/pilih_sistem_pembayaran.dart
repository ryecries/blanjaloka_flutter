import 'package:flutter/material.dart';

import '../../constant.dart';

class PilihSistemPembayaran extends StatelessWidget {
  const PilihSistemPembayaran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: InkWell(
              child: Column(
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
                      "Pilih Sistem Pembayaran",
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  padding: EdgeInsets.only(top: 10, bottom: 15),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1.0, color: Colors.grey),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Sekali bayar',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Text('Rp 540.000')
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  padding: EdgeInsets.only(top: 10, bottom: 15),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1.0, color: Colors.grey),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '3X Bayar',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Text('Rp 180.000/Bln')
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  padding: EdgeInsets.only(top: 10, bottom: 15),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1.0, color: Colors.grey),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '6X Bayar',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Text('Rp 100.000/Bln')
                    ],
                  ),
                ),
              )
            ],
          )),
        ),
      ],
    );
  }
}
