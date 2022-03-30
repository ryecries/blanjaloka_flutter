import 'package:blanjaloka_flutter/screens/reset_password.dart';
import 'package:blanjaloka_flutter/screens/tokoregister.dart';
import 'package:blanjaloka_flutter/screens/ubah_password.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class ValidasiUbahPassword extends StatefulWidget {
  const ValidasiUbahPassword({Key? key}) : super(key: key);

  @override
  State<ValidasiUbahPassword> createState() => _UbahPasswordState();
}

class _UbahPasswordState extends State<ValidasiUbahPassword> {
  bool _passwordVisible = false;
  @override
  void initState() {
    _passwordVisible = false;
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
          "Masukkan Kata Sandi",
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
                          bottom: 20,
                        ),
                        child: Text(
                            'Untuk mengamankan akunmu, silahkan verifikasi identitas dengan memasukkan kata sandi.'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 2),
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          obscureText: !_passwordVisible,
                          decoration: InputDecoration(
                            hintText: 'Kata sandi Saat Ini',
                            // Here is key idea
                            suffixIcon: IconButton(
                              icon: Icon(
                                _passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Theme.of(context).primaryColorDark,
                              ),
                              onPressed: () {
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          top: 10,
                          left: 8,
                          right: 8,
                          bottom: 10,
                        ),
                        width: double.infinity,
                        child: ElevatedButton(
                          child: Container(
                              padding: EdgeInsets.symmetric(vertical: 12),
                              child: Text(
                                "Lanjut",
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
                      Container(
                        child: TextButton(
                          child: Text("Lupa Kata Sandi?"),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ResetPassword(),
                                ));
                          },
                        ),
                      )
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
