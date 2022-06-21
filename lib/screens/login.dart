import 'dart:convert';

import 'package:blanjaloka_flutter/constant.dart';
import 'package:blanjaloka_flutter/screens/reset_password.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:blanjaloka_flutter/utils/progressHUD.dart';
import 'package:blanjaloka_flutter/models/login_model.dart';

import 'package:blanjaloka_flutter/utils/shared_service.dart';
import 'package:blanjaloka_flutter/provider/api_service.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool hidePassword = true;
  bool isApiCallProcess = false;
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  LoginRequestModel loginRequestModel;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    loginRequestModel = new LoginRequestModel();
  }

  @override
  Widget build(BuildContext context) {
    return ProgressHUD(
      child: _uiSetup(context),
      inAsyncCall: isApiCallProcess,
      opacity: 0.3,
    );
  }

  @override
  Widget _uiSetup(BuildContext context) {
    return  Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: Text("Masuk",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black),),
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
                      key: globalFormKey,
                      child: Column(
                        children: [
                          Column(
                              children : [
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
                                      ),),
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
                              ]
                          ),

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
                                ),),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                            child: TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              onSaved: (input) =>
                              loginRequestModel.email = input,
                              validator: (input) => !input.contains('@')
                                  ? "Email Id should be valid"
                                  : null,
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
                                ),),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                            child: TextFormField(
                              keyboardType: TextInputType.text,
                              onSaved: (input) =>
                              loginRequestModel.password = input,
                              validator: (input) => input.length < 3
                                  ? "Password should be more than 3 characters"
                                  : null,
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
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                            child: TextButton (
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
                          padding: EdgeInsets.symmetric(vertical: 12),
                          child: Text("Masuk",style: TextStyle(fontSize: 20),)),
                      onPressed: () {
                        if (validateAndSave()) {
                          print(loginRequestModel.toJson());
                          setState(() {
                            isApiCallProcess = true;
                          });
                          APIService apiService = new APIService();
                          apiService.login(loginRequestModel).then((value) {
                            if(value !=null){
                              print("the response is "+value.token);
                              setState(() {
                                isApiCallProcess=false;

                              });
                              if(value.token.isNotEmpty){
                                final snackBar=SnackBar(
                                  content:Text("Login Successful"),
                                  backgroundColor: Colors.green,
                                );
                                scaffoldKey.currentState.showSnackBar(snackBar);
                                SharedService.setLoginDetails(value);
                                Navigator.of(context).pushReplacementNamed("/home");
                              }else{
                                final snackBar=SnackBar(
                                  content:Text(value.error),
                                  backgroundColor: Colors.red,
                                );
                                scaffoldKey.currentState.showSnackBar(snackBar);
                              }
                            }
                          });
                          //
                          // APIService apiService = new APIService();
                          // apiService.login(loginRequestModel).then((value) {
                          //   if (value != null) {
                          //     setState(() {
                          //       isApiCallProcess = false;
                          //     });
                          //
                          //     if (value.token.isNotEmpty) {
                          //       final snackBar = SnackBar(
                          //           content: Text("Login Successful"));
                          //       scaffoldKey.currentState
                          //           .showSnackBar(snackBar);
                          //     } else {
                          //       final snackBar =
                          //       SnackBar(content: Text(value.error));
                          //       scaffoldKey.currentState
                          //           .showSnackBar(snackBar);
                          //     }
                          //   }
                          // });
                        }
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

            ),

          ),

        ),

      ),

    );
  }
  bool validateAndSave() {
    final form = globalFormKey.currentState;
    if (form.validate()) {
      form.save();
      return true;
    }
    return false;
  }
}