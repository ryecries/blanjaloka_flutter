import 'dart:convert';

import 'package:blanjaloka_flutter/constant.dart';
import 'package:blanjaloka_flutter/nav.dart';
import 'package:blanjaloka_flutter/screens/pengaturan/reset_password.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:blanjaloka_flutter/widgets/dialogs.dart';


import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}


class _LoginState extends State<Login> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var txtEditEmail = TextEditingController();
  var txtEditPwd = TextEditingController();
  bool hidePassword = true;


  void _validateInputs() {
    if (_formKey.currentState!.validate()) {
      //If all data are correct then save data to out variables
      _formKey.currentState!.save();
      doLogin(txtEditEmail.text, txtEditPwd.text);
    }
  }

  doLogin(email, password) async {
    final GlobalKey<State> _keyLoader = GlobalKey<State>();
    Dialogs.loading(context, _keyLoader, "Proses ...");

    try {
      final response = await http.post(
          Uri.parse("https://blanjaloka.id/blanjaloka/api2/public/customer/login"),
          headers: {'Content-Type': 'application/json; charset=UTF-8'},
          body: jsonEncode({
            "email_customer": email,
            "password": password,
          }));

      final output = jsonDecode(response.body);
      if (response.statusCode == 200) {
        Navigator.of(_keyLoader.currentContext!, rootNavigator: false).pop();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text(
                output['message'],
                style: const TextStyle(fontSize: 16),
              )),
        );

        if (output['success'] == true) {
          saveSession(email);
        }
        //debugPrint(output['message']);
      } else {
        Navigator.of(_keyLoader.currentContext!, rootNavigator: false).pop();
        //debugPrint(output['message']);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content: Text(
                output.toString(),
                style: const TextStyle(fontSize: 16),
              )),
        );
      }
    } catch (e) {
      Navigator.of(_keyLoader.currentContext!, rootNavigator: false).pop();
      Dialogs.popUp(context, '$e');
      debugPrint('$e');
    }
  }

  saveSession(String email) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    await pref.setString("email", email);
    await pref.setBool("is_login", true);

    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) => const Nav(),
      ),
          (route) => false,
    );
  }

  void ceckLogin() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var islogin = pref.getBool("is_login");
    if (islogin != null && islogin) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => const Nav(),
        ),
            (route) => false,
      );
    }
  }

  @override
  void initState() {
    ceckLogin();
    super.initState();
  }

  @override
  dispose() {
    super.dispose();
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
                    Form(
                      key: _formKey,
                      child: Column(
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
                                "Email/Nomor Telepon",
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
                              keyboardType: TextInputType.emailAddress,
                              autofocus: false,
                              validator: (email) => email != null && !EmailValidator.validate(email)
                                  ? 'Masukkan email yang valid'
                                  : null,
                              controller: txtEditEmail,
                              onSaved: (String? val) {
                                txtEditEmail.text = val!;
                              },
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
                              keyboardType: TextInputType.text,
                              autofocus: false,
                              validator: (String? arg) {
                                if (arg == null || arg.isEmpty) {
                                  return 'Password harus diisi';
                                } else {
                                  return null;
                                }
                              },
                              controller: txtEditPwd,
                              onSaved: (String? val) {
                                txtEditPwd.text = val!;
                              },
                              obscureText: hidePassword,
                              decoration: InputDecoration(
                                hintText: 'Masukkan Kata Sandi Anda',
                                // Here is key idea
                                suffixIcon: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      hidePassword = !hidePassword;
                                    });
                                  },
                                  color: Theme.of(context)
                                      .primaryColorDark
                                      .withOpacity(0.4),
                                  icon: Icon(hidePassword
                                      ? Icons.visibility_off
                                      : Icons.visibility),
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
                    ),
                  ],
                ),
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
            _validateInputs();
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