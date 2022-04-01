import 'package:flutter/material.dart';
import 'package:blanjaloka_flutter/widget.dart';

class EditProfil extends StatefulWidget {
  const EditProfil({Key? key}) : super(key: key);

  @override
  _EditProfilState createState() => _EditProfilState();
}

class _EditProfilState extends State<EditProfil> {
  TextEditingController _controller = TextEditingController(text: "Sudjaya");

  TextEditingController _controller2 =
      TextEditingController(text: "www.blanjaloka.co.id/tokosudjaya");

  TextEditingController _controller3 = TextEditingController(text: "");

  bool _isEnable = false;
  bool _isEnable2 = false;
  bool _isEnable3 = false;

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
          "Informasi Toko",
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
                        ImagePedagangWidget(titleImg: "Profil Toko"),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 12,
                            left: 8,
                          ),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Nama Toko",
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
                          child: Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  controller: _controller,
                                  enabled: _isEnable,
                                ),
                              ),
                              TextButton(
                                  onPressed: () {
                                    setState(() {
                                      _isEnable = true;
                                    });
                                  },
                                  child: Text(
                                    "Ubah",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 12,
                            left: 8,
                          ),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Domain Toko",
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
                                    "Ubah",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 0,
                            left: 0,
                          ),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Pedagang2Widget(title2: "Produk Toko"),
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
                          padding: EdgeInsets.symmetric(
                              horizontal: 100, vertical: 12),
                          child: Text(
                            "Simpan",
                            style: TextStyle(fontSize: 20),
                          )),
                      onPressed: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => EnterPassword()),);
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
