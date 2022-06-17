import 'package:blanjaloka_flutter/nav.dart';
import 'package:blanjaloka_flutter/screens/register_merchant/pedagang.dart';
import 'package:blanjaloka_flutter/screens/register_merchant/register_info_toko.dart';
import 'package:blanjaloka_flutter/screens/register_merchant/rekening.dart';
import 'package:blanjaloka_flutter/size_config.dart';
import 'package:flutter/material.dart';

import '../../widgets/primary_button.dart';

class TokoReg extends StatefulWidget {
  const TokoReg({Key? key}) : super(key: key);

  @override
  _TokoRegState createState() => _TokoRegState();
}

class _TokoRegState extends State<TokoReg> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            "Pendaftaran Toko Blanjaloka",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ),
        centerTitle: false,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('This is more menu')));
                },
                child: Icon(
                  Icons.more_vert,
                  color: Colors.black,
                ),
              )),
        ],
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
                        Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 4,
                              left: 8,
                            ),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Lengkapi Data Pendaftaran",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 8,
                              bottom: 20,
                            ),
                            child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                    'Jika data sudah lengkap, mohon kirim data pendaftaran agar bisa diperiksa oleh tim kami.')),
                          ),
                        ]),

                        // identitas pedagang dll. isi dibawah
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 8,
                          ),
                          child: Container(
                            height: 56,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom:
                                    BorderSide(width: 1.0, color: Colors.grey),
                              ),
                              color: Colors.white,
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Pedagang()),
                                );
                              },
                              child: Row(
                                children: [
                                  // Checkbox(
                                  //   checkColor: Colors.white,
                                  //   fillColor: MaterialStateProperty.resolveWith(getColor),
                                  //   value: isChecked,
                                  //   shape: CircleBorder(),
                                  //   onChanged: (bool? value) {
                                  //     setState(() {
                                  //       isChecked = value!;
                                  //     });
                                  //   },
                                  // ),
                                  Expanded(
                                      flex: 10,
                                      child: Text(
                                        'Identitas Pedagang',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  Expanded(
                                      flex: 2,
                                      child: Icon(Icons.arrow_forward_ios)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 8,
                          ),
                          child: Container(
                            height: 56,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom:
                                    BorderSide(width: 1.0, color: Colors.grey),
                              ),
                              color: Colors.white,
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RegisterInfoToko()),
                                );
                              },
                              child: Row(
                                children: [
                                  // Checkbox(
                                  //   checkColor: Colors.white,
                                  //   fillColor: MaterialStateProperty.resolveWith(getColor),
                                  //   value: isChecked,
                                  //   shape: CircleBorder(),
                                  //   onChanged: (bool? value) {
                                  //     setState(() {
                                  //       isChecked = value!;
                                  //     });
                                  //   },
                                  // ),
                                  Expanded(
                                      flex: 10,
                                      child: Text(
                                        'Informasi Toko',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  Expanded(
                                      flex: 2,
                                      child: Icon(Icons.arrow_forward_ios)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 8,
                          ),
                          child: Container(
                            height: 56,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom:
                                    BorderSide(width: 1.0, color: Colors.grey),
                              ),
                              color: Colors.white,
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => InfoRekening()),
                                );
                              },
                              child: Row(
                                children: [
                                  // Checkbox(
                                  //   checkColor: Colors.white,
                                  //   fillColor: MaterialStateProperty.resolveWith(getColor),
                                  //   value: isChecked,
                                  //   shape: CircleBorder(),
                                  //   onChanged: (bool? value) {
                                  //     setState(() {
                                  //       isChecked = value!;
                                  //     });
                                  //   },
                                  // ),
                                  Expanded(
                                      flex: 10,
                                      child: Text(
                                        'Informasi Rekening',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  Expanded(
                                      flex: 2,
                                      child: Icon(Icons.arrow_forward_ios)),
                                ],
                              ),
                            ),
                          ),
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
        color: Colors.white,
        child: PrimaryButton(
            buttontxt: "Kirim Data",
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Nav()));
            }),
      ),
    );
  }
}
