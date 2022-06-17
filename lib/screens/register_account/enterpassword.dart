import 'package:blanjaloka_flutter/constant.dart';
import 'package:blanjaloka_flutter/screens/register_merchant/tokoregister.dart';
import 'package:flutter/material.dart';

import '../../size_config.dart';
import '../../widgets/primary_button.dart';

class EnterPassword extends StatefulWidget {
  const EnterPassword({Key? key}) : super(key: key);

  @override
  _EnterPasswordState createState() => _EnterPasswordState();
}

class _EnterPasswordState extends State<EnterPassword> {
  bool _passwordVisible = false;
  @override
  void initState() {
    super.initState();
    _passwordVisible = false;
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
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        height: getProportionateScreenHeight(100),
        color: Colors.white,
        child: PrimaryButton(
            buttontxt: "Lanjut",
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => TokoReg()));
            }),
      ),
    );
  }
}
