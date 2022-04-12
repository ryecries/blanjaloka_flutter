import 'package:blanjaloka_flutter/screens/ubah_password.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
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
          "Atur Ulang Kata Sandi",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
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
            child: Stack(children: [
              ListView(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 8,
                        ),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Atur Ulang Kata Sandi",
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
                          right: 8,
                          bottom: 10,
                          top: 10,
                        ),
                        child: Text(
                            'Masukkan e-mail atau nomor HP yang terdaftar. Kami akan mengirimkan kode verifikasi untuk atur ulnag kata sandi'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 2),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'Nomor HP atau Email',
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          top: 10,
                          left: 8,
                          right: 8,
                          bottom: 25,
                        ),
                        width: double.infinity,
                        child: ElevatedButton(
                          child: Container(
                              padding: EdgeInsets.symmetric(vertical: 12),
                              child: Text(
                                "Kirim",
                                style: TextStyle(fontSize: 20),
                              )),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => UbahPassword()),
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
                    ],
                  ),
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
}
