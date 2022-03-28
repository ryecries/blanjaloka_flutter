import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'enterpassword.dart';

class TokoReg extends StatefulWidget {
  const TokoReg({Key? key}) : super(key: key);

  @override
  _TokoRegState createState() => _TokoRegState();
}

class _TokoRegState extends State<TokoReg> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: Text("Pendaftaran Toko Blanjaloka",
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
                    Column(
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
                                    "Lengkapi Data Pendaftaran",
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
                                        'Jika data sudah lengkap, mohon kirim data pendaftaran agar bisa diperiksa oleh tim kami.')),
                              ),
                            ]
                        ),

                        // identitas pedagang dll. isi dibawah

                      ],
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
                          padding: EdgeInsets.symmetric(horizontal: 120,vertical: 12),
                          child: Text("Lanjut",style: TextStyle(fontSize: 20),)),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => EnterPassword()),);
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF00838F),
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
}
