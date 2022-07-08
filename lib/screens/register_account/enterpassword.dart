import 'dart:convert';

import 'package:blanjaloka_flutter/provider/global.dart';
import 'package:blanjaloka_flutter/provider/service.dart';
import 'package:blanjaloka_flutter/screens/register_merchant/tokoregister.dart';
import 'package:blanjaloka_flutter/size_config.dart';
import 'package:blanjaloka_flutter/widgets/dialogs.dart';
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
  String _validasiKataSandi = "";
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
  }

  createAccountPressed() async {
    final GlobalKey<State> _keyLoader = GlobalKey<State>();
    Dialogs.loading(context, _keyLoader, "Proses ...");
    try {
      bool emailValid = RegExp(
              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
          .hasMatch(widget.email);
      if (emailValid) {
        http.Response response = await APIService.register(
          widget.nama,
          widget.email,
          _validasiKataSandi,
          widget.noHp,
        );
        Map responseMap = jsonDecode(response.body);
        if (response.statusCode == 200) {
          Navigator.of(_keyLoader.currentContext!, rootNavigator: false).pop();
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                content: Text(
              responseMap['message'],
              style: const TextStyle(fontSize: 16),
            )),
          );
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => const TokoReg(),
              ));
        } else {
          Navigator.of(_keyLoader.currentContext!, rootNavigator: false).pop();
          errorSnackBar(context, responseMap.values.first[0]);
        }
      } else {
        errorSnackBar(context, 'email not valid');
      }
    } catch (e) {
      Navigator.of(_keyLoader.currentContext!, rootNavigator: false).pop();
      Dialogs.popUp(context, '$e');
      debugPrint('$e');
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
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: ListView(
            children: [
              Column(
                children: [
                  //========================================================
                  //Heading
                  //========================================================
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Buat Kata Sandi Anda',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: getProportionateScreenHeight(18),
                      ),
                    ),
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Kata Sandi dibutuhkan untuk masuk akun anda',
                        style: TextStyle(
                          fontSize: getProportionateScreenHeight(14),
                        ),
                      )),

                  //========================================================
                  //End of Heading
                  //========================================================

                  //========================================================
                  //Form
                  //========================================================

                  Form(
                      key: _formKey,
                      child: Column(children: [
                        SizedBox(height: getProportionateScreenHeight(32)),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Kata Sandi",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: getProportionateScreenHeight(12),
                            ),
                          ),
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Kata Sandi Tidak Boleh Kosong';
                            }
                            if (value.length < 7) {
                              return 'Kata Sandi Minimal 8 Karakter atau Lebih';
                            }
                            return null;
                          },
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
                        SizedBox(height: getProportionateScreenHeight(24)),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Ulangi Kata Sandi",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        TextFormField(
                          validator: (value) {
                            if (value != _kataSandi) {
                              return 'Kata Sandi Harus Sama';
                            }
                            return null;
                          },
                          onChanged: (value) {
                            _validasiKataSandi = value;
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
                      ]))

                  //========================================================
                  //End of Form
                  //========================================================
                ],
              ),
            ],
          ),
        ),
      ),

      //========================================================
      //Button
      //========================================================

      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 16),
        height: getProportionateScreenHeight(100),
        child: Center(
          child: PrimaryButton(
              buttontxt: "Lanjut",
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  createAccountPressed();
                }
              }),
        ),
      ),
    );
  }
}
