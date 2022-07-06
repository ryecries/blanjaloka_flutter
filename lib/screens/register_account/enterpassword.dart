import 'dart:convert';

import 'package:blanjaloka_flutter/provider/api_service.dart';
import 'package:blanjaloka_flutter/provider/global.dart';
import 'package:blanjaloka_flutter/screens/register_merchant/tokoregister.dart';
import 'package:blanjaloka_flutter/size_config.dart';
import 'package:blanjaloka_flutter/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class EnterPassword extends StatefulWidget {
  final String nama;
  final String noHp;
  final String email;

  const EnterPassword(
      {Key? key, required this.nama, required this.noHp, required this.email})
      : super(key: key);

  @override
  _EnterPasswordState createState() => _EnterPasswordState();
}

class _EnterPasswordState extends State<EnterPassword> {
  bool _passwordVisible = false;
  String _kataSandi = "";
  String _cekKataSandi = "";

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  createAccountPressed() async {
    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(widget.email);
    if (emailValid) {
      http.Response response = await APIService.register(
          widget.nama, widget.email, _kataSandi, widget.noHp);
      Map responseMap = jsonDecode(response.body);
      if (response.statusCode == 200) {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => const TokoReg(),
            ));
      } else {
        errorSnackBar(context, responseMap.values.first[0]);
      }
    } else {
      errorSnackBar(context, 'email not valid');
    }
  }

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
          "Buat Kata Sandi",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
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
                                'Buat Kata Sandi Anda',
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
                                    'Kata Sandi dibutuhkan untuk masuk akun anda')),
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
                            onChanged: (value) {
                              _kataSandi = value;
                            },
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
                          padding: const EdgeInsets.only(
                            top: 24,
                            left: 8,
                          ),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Ulangi Kata Sandi",
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
                            onChanged: (value) {
                              _cekKataSandi = value;
                            },
                            keyboardType: TextInputType.text,
                            obscureText: !_passwordVisible,
                            decoration: InputDecoration(
                              hintText: 'Ulangi Kata Sandi Anda',
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
        margin: EdgeInsets.only(bottom: 16),
        height: getProportionateScreenHeight(100),
        child: Center(
          child: PrimaryButton(
              buttontxt: "Lanjut",
              onPressed: () {
                createAccountPressed();
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => TokoReg()));
              }),
        ),
      ),
    );
  }
}
