import 'package:blanjaloka_flutter/screens/login.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class UbahPassword extends StatelessWidget {
  const UbahPassword({Key? key}) : super(key: key);

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
          "Perbarui Kata Sandi",
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
                          top: 4,
                          left: 8,
                        ),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Kata Sandi Baru',
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
                        child: Text(
                            'Buat kata sandi baru untuk akun anda dengan email citiasiainc@gmail.com'),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 8,
                          left: 8,
                        ),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Kata Sandi Baru",
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
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'Masukkan Kata Sandi Baru Anda',
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 8,
                          left: 8,
                        ),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Ulangi Kata Sandi Baru",
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
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: 'Ulangi Kata Sandi Baru Anda',
                          )
                        )
                      )
                    ]
                  )
                ]
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                    bottom: 25,
                  ),
                  width: double.infinity,
                  child: ElevatedButton(
                    child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 90, vertical: 12),
                        child: Text(
                          "Lanjut",
                          style: TextStyle(fontSize: 20),
                        )),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Login()),
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
            ]),
          ),
        ),
      ),
    );
  }
}
