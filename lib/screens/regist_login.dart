import 'package:blanjaloka_flutter/screens/register.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'login.dart';


class RegistLogin extends StatefulWidget {
  const RegistLogin({Key? key}) : super(key: key);

  @override
  _RegistLoginState createState() => _RegistLoginState();
}

class _RegistLoginState extends State<RegistLogin> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Image.asset('assets/images/logo.png',fit: BoxFit.contain,
          height: 60,
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: RawMaterialButton(
              onPressed: () {},
              elevation: 0,
              fillColor: Colors.white,
              constraints: BoxConstraints(
                minWidth: 0
              ),
              child: Icon(
                Icons.question_mark,
                size: 22.0,
                color: Color(0xff2b2b2b),
              ),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              padding: EdgeInsets.all(4),
              shape: CircleBorder(
                side: BorderSide(
                  color: Color(0xff404040),
                  width: 2,
                )
              ),
            ),
          )
        ],
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
                        Column(
                            children : [
                              Container(
                                width: double.infinity,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 70),
                                    child: Image.asset("assets/images/reglog.png"),
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 4,
                                  left: 8,
                                ),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Halo Pedagang Blanjaloka!',
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
                                        'Jual dan kelola daganganmu lebih mudah dengan aplikasi Toko Blanjaloka.',
                                      style: TextStyle(color: Color(0xFF757575)),)),
                              ),
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
                                  padding: EdgeInsets.symmetric(vertical: 12),
                                  child: Text("Masuk",style: TextStyle(fontSize: 20),)),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Login()),);
                              },
                              style: ElevatedButton.styleFrom(
                                elevation: 0.5,
                                primary: Color(0xFF00838F),
                                onPrimary: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ),
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
                                  child: Text("Daftar Akun",style: TextStyle(fontSize: 20),)),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterAcc()),);
                              },
                              style: ElevatedButton.styleFrom(
                                elevation: 0.5,
                                primary: Colors.white,
                                onPrimary: Color(0xFF00838F),
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    color: Color(0xFF00838F),
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                //button

              ],

            ),

          ),

        ),

      ),

    );
  }
}
