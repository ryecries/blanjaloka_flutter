import 'package:blanjaloka_flutter/widget.dart';
import 'package:flutter/material.dart';


class promoproduk extends StatefulWidget {
  const promoproduk({Key? key}) : super(key: key);

  @override
  State<promoproduk> createState() => _promoprodukState();
}

class _promoprodukState extends State<promoproduk> {
  TextEditingController _controller = TextEditingController(text: "");

  TextEditingController _controller2 = TextEditingController(text: "0");

  TextEditingController _controller3 = TextEditingController(text: "");

  bool _isEnable = false;
  bool _isEnable2 = false;

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
          "Promo Produk",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: SafeArea(
          child: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.white),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Stack(
            children: [
              ListView(
                children: [
                  Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 2, left: 8)),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          "Produk",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 2),
                        child: Row(
                          children: [
                            Image(
                                image:
                                    AssetImage("assets/images/upload_foto.png"))
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 12,
                          left: 8,
                        ),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Nominal Diskon",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 2),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                controller: _controller2,
                                enabled: _isEnable2,
                              ),
                            ),
                            TextButton(
                                onPressed: () {
                                  setState(() {
                                    _isEnable2 = true;
                                  });
                                },
                                child: Text(
                                  "%",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 12, left: 8),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Kuota Diskon",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 2),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                controller: _controller2,
                                enabled: _isEnable2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 12, left: 8),
                      ),
                      Pedagang2Widget(
                        title2: "Tanggal Mulai Promo",
                        hint2: "Pilih Tanggal",
                      ),
                      Padding(padding: EdgeInsets.only(top: 12, left: 8)),
                      Pedagang2Widget(
                        title2: "Tanggal Berakhir Promo",
                        hint2: "Pilih Tanggal",
                      )
                    ],
                  )
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
                        padding:
                            EdgeInsets.symmetric(horizontal: 80, vertical: 10),
                        child: Text(
                          "Simpan Promo",
                          style: TextStyle(fontSize: 20),
                        )),
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => EnterPassword()),);
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 209, 209, 209),
                      onPrimary: Color.fromARGB(255, 121, 120, 120),
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
      )),
    );
  }
}
