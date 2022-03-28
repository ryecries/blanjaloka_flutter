import 'package:blanjaloka_flutter/screens/pedagang.dart';
import 'package:blanjaloka_flutter/screens/register_info_toko.dart';
import 'package:flutter/material.dart';


class TokoReg extends StatefulWidget {
  const TokoReg({Key? key}) : super(key: key);

  @override
  _TokoRegState createState() => _TokoRegState();
}

class _TokoRegState extends State<TokoReg> {
  bool isChecked = false;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text("Pendaftaran Toko Blanjaloka",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
        ),
        centerTitle: false,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This is more menu')));},
                child: Icon(
                    Icons.more_vert,
                  color: Colors.black,
                ),
              )
          ),
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
                        Padding(padding: const EdgeInsets.only(
                            left: 8,
                        ),
                          child: Container(

                            height: 56,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(width: 1.0, color: Colors.grey),
                              ),
                              color: Colors.white,
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Pedagang()),
                                );
                              },
                              child: Row(
                                children: [
                                  // Checkbox(
                                  //   checkColor: Colors.white,
                                  //   fillColor: MaterialStateProperty.resolveWith(getColor),
                                  //   value: isChecked,
                                  //   shape: CircleBorder(),
                                  //   onChanged: (bool? value) {
                                  //     setState(() {
                                  //       isChecked = value!;
                                  //     });
                                  //   },
                                  // ),
                                  Expanded(
                                      flex: 10,
                                      child: Text(
                                        'Identitas Pedagang',
                                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                      )),
                                  Expanded(flex: 2, child: Icon(Icons.arrow_forward_ios)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(padding: const EdgeInsets.only(
                          left: 8,
                        ),
                          child: Container(

                            height: 56,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(width: 1.0, color: Colors.grey),
                              ),
                              color: Colors.white,
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => RegisterInfoToko()),
                                );
                              },
                              child: Row(
                                children: [
                                  // Checkbox(
                                  //   checkColor: Colors.white,
                                  //   fillColor: MaterialStateProperty.resolveWith(getColor),
                                  //   value: isChecked,
                                  //   shape: CircleBorder(),
                                  //   onChanged: (bool? value) {
                                  //     setState(() {
                                  //       isChecked = value!;
                                  //     });
                                  //   },
                                  // ),
                                  Expanded(
                                      flex: 10,
                                      child: Text(
                                        'Informasi Toko',
                                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                      )),
                                  Expanded(flex: 2, child: Icon(Icons.arrow_forward_ios)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(padding: const EdgeInsets.only(
                          left: 8,
                        ),
                          child: Container(

                            height: 56,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(width: 1.0, color: Colors.grey),
                              ),
                              color: Colors.white,
                            ),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Pedagang()),
                                );
                              },
                              child: Row(
                                children: [
                                  // Checkbox(
                                  //   checkColor: Colors.white,
                                  //   fillColor: MaterialStateProperty.resolveWith(getColor),
                                  //   value: isChecked,
                                  //   shape: CircleBorder(),
                                  //   onChanged: (bool? value) {
                                  //     setState(() {
                                  //       isChecked = value!;
                                  //     });
                                  //   },
                                  // ),
                                  Expanded(
                                      flex: 10,
                                      child: Text(
                                        'Informasi Rekening',
                                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                      )),
                                  Expanded(flex: 2, child: Icon(Icons.arrow_forward_ios)),
                                ],
                              ),
                            ),
                          ),
                        ),
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
                          padding: EdgeInsets.symmetric(horizontal: 90,vertical: 12),
                          child: Text("Kirim Data",style: TextStyle(fontSize: 20),)),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Pedagang()),);
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
