import 'package:blanjaloka_flutter/constant.dart';
import 'package:blanjaloka_flutter/nav.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../pengaturan/reset_password.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _passwordVisible = false;
  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  var emailController = TextEditingController();
  var passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
          "Masuk",
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
                                'Masuk Akun Toko Blanjaloka',
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
                                    'Masukkan Email atau Nomor Telepon dan Kata Sandi Anda yang sudah terdaftar')),
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
                              "Email / Nomor Telepon",
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
                            controller: emailController,
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(),
                              hintText: 'Masukkan Email/No Telepon Anda',
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
                              "Kata Sandi",
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
                            controller: passController,
                            keyboardType: TextInputType.text,
                            obscureText: !_passwordVisible,
                            decoration: InputDecoration(
                              hintText: 'Masukkan Kata Sandi Anda',
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
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 2),
                          child: TextButton(
                            child: Text("Lupa Password?"),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ResetPassword()),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        margin: const EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: 20,
        ),
        width: double.infinity,
        child: ElevatedButton(
          child: Container(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Text(
                "Masuk",
                style: TextStyle(fontSize: 20),
              )),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Nav()),
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
    );
  }
}
