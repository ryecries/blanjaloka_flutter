import 'package:blanjaloka_flutter/constant.dart';
import 'package:flutter/material.dart';

import 'enterpassword.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;
  FocusNode? pin5FocusNode;
  FocusNode? pin6FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
    pin5FocusNode = FocusNode();
    pin6FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
    pin5FocusNode!.dispose();
    pin6FocusNode!.dispose();
  }

  void nextField(String value, FocusNode? focusNode) {
    if (value.length == 1) {
      focusNode!.requestFocus();
    }
  }

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
          "Verifikasi Pendaftaran",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: SafeArea(
          child: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.white),
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Stack(
              children: [
                ListView(
                  children: [
                    Column(
                      children: [
                        Container(
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Masukkan Kode Verifikasi",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                  'Kode telah dikirim ke nomor 082144567789')),
                        )
                      ],
                    ),
                    Form(
                        child: Column(
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 40,
                              child: TextFormField(
                                autofocus: true,
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                onChanged: (value) {
                                  nextField(value, pin2FocusNode);
                                },
                              ),
                            ),
                            SizedBox(
                              width: 40,
                              child: TextFormField(
                                focusNode: pin2FocusNode,
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                onChanged: (value) {
                                  nextField(value, pin3FocusNode);
                                },
                              ),
                            ),
                            SizedBox(
                              width: 40,
                              child: TextFormField(
                                focusNode: pin3FocusNode,
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                onChanged: (value) {
                                  nextField(value, pin4FocusNode);
                                },
                              ),
                            ),
                            SizedBox(
                              width: 40,
                              child: TextFormField(
                                focusNode: pin4FocusNode,
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                onChanged: (value) {
                                  nextField(value, pin5FocusNode);
                                },
                              ),
                            ),
                            SizedBox(
                              width: 40,
                              child: TextFormField(
                                focusNode: pin5FocusNode,
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                onChanged: (value) {
                                  nextField(value, pin6FocusNode);
                                },
                              ),
                            ),
                            SizedBox(
                              width: 40,
                              child: TextFormField(
                                focusNode: pin6FocusNode,
                                style: TextStyle(
                                    fontSize: 24, fontWeight: FontWeight.bold),
                                keyboardType: TextInputType.number,
                                textAlign: TextAlign.center,
                                onChanged: (value) {
                                  if (value.length == 1) {
                                    pin6FocusNode!.unfocus();
                                    // Then you need to check is the code is correct or not
                                  }
                                },
                              ),
                            ),
                          ],
                        )
                      ],
                    )),
                    SizedBox(height: 10),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TweenAnimationBuilder(
                              tween: Tween(begin: 59.0, end: 0),
                              duration: Duration(seconds: 60),
                              builder: (_, num value, child) => Text(
                                  "0:${value.toInt()}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15)))
                        ],
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 100),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Tidak menerima kode? "),
                        GestureDetector(
                          onTap: () {
                            // OTP code resend
                          },
                          child: Text(
                            "Minta Lagi",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: const EdgeInsets.only(
                      left: 8,
                      right: 8,
                      bottom: 25,
                    ),
                    width: double.infinity,
                    child: ElevatedButton(
                      child: Container(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          child: Text(
                            "Verifikasi",
                            style: TextStyle(fontSize: 20),
                          )),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EnterPassword()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: bPrimaryColor,
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )),
      )),
    );
  }
}
