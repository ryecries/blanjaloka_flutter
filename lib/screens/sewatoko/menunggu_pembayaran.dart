import 'package:blanjaloka_flutter/screens/other/others.dart';
import 'package:blanjaloka_flutter/screens/sewatoko/pilih_pembayaran.dart';
import 'package:blanjaloka_flutter/screens/sewatoko/pilih_sistem_pembayaran.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../constant.dart';
import '../../widgets/primary_button.dart';

class MenungguPembayaran extends StatefulWidget {
  String img, text;
  MenungguPembayaran({Key? key, required this.img, required this.text}) : super(key: key);

  @override
  _MenungguPembayaranState createState() => _MenungguPembayaranState();
}

class _MenungguPembayaranState extends State<MenungguPembayaran> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "Menunggu Pembayaran",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: SafeArea(
          child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Divider(height: 10, thickness: 2),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Batas Pembayaran :'),
                                Text('25 Sep 2021, 11:27',
                                      style: TextStyle(fontWeight: FontWeight.bold),),
                              ],
                            ),
                            Spacer(),
                            Container(child: TweenAnimationBuilder(
                                tween: Tween(begin: 59.0, end: 0),
                                duration: Duration(seconds: 60),
                                builder: (_, num value, child) => Text("0:${value.toInt()}",
                                    style: TextStyle(color: Color(0xFFE45200), fontWeight: FontWeight.bold, fontSize: 15)))
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(height: 10, thickness: 2),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              widget.img,
                              height: 50,
                              width: 50,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Text(
                                widget.text,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('No Rekening :'),
                                Text('7088801278950045',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Spacer(),
                            TextButton(
                              child: Text('Salin',style: TextStyle(fontWeight: FontWeight.bold,color: bPrimaryColor),),
                              onPressed: () {
                                Clipboard.setData(ClipboardData(text: '7088801278950045')).then((result) {
                                  final snackBar = SnackBar(
                                    content: Text('Text Tersalin'),
                                  );
                                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                });
                                },
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Total Pembayaran :'),
                                Text('Rp. 540.000',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(height: 10, thickness: 2),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
