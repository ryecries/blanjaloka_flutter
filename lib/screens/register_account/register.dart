import 'package:blanjaloka_flutter/screens/register_account/otp.dart';
import 'package:blanjaloka_flutter/size_config.dart';
import 'package:blanjaloka_flutter/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'enterpassword.dart';

class RegisterAcc extends StatefulWidget {
  const RegisterAcc({Key? key}) : super(key: key);

  @override
  _RegisterAccState createState() => _RegisterAccState();
}

class _RegisterAccState extends State<RegisterAcc> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: Text(
          "Daftar Akun",
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
                                "Daftar Akun Toko Blanjaloka",
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
                                    'Lengkapi data dibawah untuk mendaftar Akun Toko Blanjaloka')),
                          ),
                        ]),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 8,
                            left: 8,
                          ),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Nama Lengkap",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 2),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: 'Masukkan Nama Lengkap Anda',
                              hintStyle: TextStyle(fontSize: 14),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 24,
                            left: 8,
                          ),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Nomor Telepon",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 2),
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: 'Contoh : 0812*********',
                              hintStyle: TextStyle(fontSize: 14),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 24,
                            left: 8,
                          ),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Alamat Email",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 2),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: 'Contoh : Emailanda@gmail.com',
                              hintStyle: TextStyle(fontSize: 14),
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
        child: PrimaryButton(
            buttontxt: "Lanjut",
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EnterPassword()));
            }),
      ),
    );
  }
}
