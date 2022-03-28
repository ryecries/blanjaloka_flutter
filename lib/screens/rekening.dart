import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class rekening extends StatefulWidget {
  const rekening({Key? key}) : super(key: key);

  @override
  State<rekening> createState() => _rekeningState();
}

class _rekeningState extends State<rekening> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          title: Text(
        "Informasi Rekening",
        textAlign: TextAlign.left,
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      )),
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
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: 8,
                      left: 18,
                    ),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Nama Pemilik Rekening",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                      padding:
                          EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.grey, width: 1)),
                      child: Container(
                        width: double.infinity,
                        height: 40,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: TextField(
                            decoration: new InputDecoration.collapsed(
                                hintText: "Masukkan Nama Pemilik Rekening"),
                          ),
                        ),
                      )),
                  Padding(
                    padding: EdgeInsets.only(top: 8, left: 18),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Nomor Rekening",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 4,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey, width: 1)),
                    child: Container(
                      width: double.infinity,
                      height: 40,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: TextField(
                          decoration: new InputDecoration.collapsed(
                              hintText: "Masukkan Nomor Rekening"),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8, left: 18),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Nama Bank",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 4,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey, width: 1)),
                    child: Container(
                      width: double.infinity,
                      height: 40,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: TextField(
                          decoration: new InputDecoration.collapsed(
                              hintText: "Masukkan Nama Bank"),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
