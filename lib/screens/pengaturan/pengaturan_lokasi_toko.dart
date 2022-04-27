import 'package:blanjaloka_flutter/constant.dart';
import 'package:flutter/material.dart';

class PengaturanLokasiToko extends StatefulWidget {
  const PengaturanLokasiToko({Key? key}) : super(key: key);

  @override
  State<PengaturanLokasiToko> createState() => _PengaturanLokasiTokoState();
}

class _PengaturanLokasiTokoState extends State<PengaturanLokasiToko> {
  //data dummy
  TextEditingController _controller0 =
      TextEditingController(text: "DKI Jakarta");
  TextEditingController _controller1 =
      TextEditingController(text: "Jakarta Selatan");
  TextEditingController _controller2 =
      TextEditingController(text: "Pasar Cipete Selatan");
  TextEditingController _controller3 =
      TextEditingController(text: "Jl. Antasari, Jakarta Selatan");
  TextEditingController _controller4 =
      TextEditingController(text: "Lantai 2, Blok B2");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 1,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.grey),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "Lokasi Toko",
          style: TextStyle(color: Colors.black87, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    child: Expanded(
                        child: ListView(
                      children: [
                        Column(
                          children: [
                            Container(
                                padding: EdgeInsets.only(
                                    left: 20, right: 20, top: 20),
                                child: TextFormField(
                                  controller: _controller0,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                      label: Text(
                                        'Provinsi',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            color: Colors.black54),
                                      ),
                                      hintText: 'provinsi',
                                      suffixIcon:
                                          Icon(Icons.keyboard_arrow_down)),
                                  onSaved: (value) {},
                                )),
                            Container(
                                padding: EdgeInsets.only(
                                    left: 20, right: 20, top: 10),
                                child: TextFormField(
                                  controller: _controller1,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                      label: Text(
                                        'Kota',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            color: Colors.black54),
                                      ),
                                      hintText: 'Kota',
                                      suffixIcon:
                                          Icon(Icons.keyboard_arrow_down)),
                                  onSaved: (value) {},
                                )),
                            Container(
                                padding: EdgeInsets.only(
                                    left: 20, right: 20, top: 10),
                                child: TextFormField(
                                  controller: _controller2,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                      label: Text(
                                        'Pasar',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14,
                                            color: Colors.black54),
                                      ),
                                      hintText: 'Pasar',
                                      suffixIcon:
                                          Icon(Icons.keyboard_arrow_down)),
                                  onSaved: (value) {},
                                )),
                            Container(
                                padding: EdgeInsets.only(
                                    left: 20, right: 20, top: 10),
                                child: TextFormField(
                                  controller: _controller3,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    label: Text(
                                      'Alamat Toko',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.black54),
                                    ),
                                    hintText: 'Alamat Toko',
                                  ),
                                  onSaved: (value) {},
                                )),
                            Container(
                                padding: EdgeInsets.only(
                                    left: 20, right: 20, top: 10),
                                child: TextFormField(
                                  controller: _controller4,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                    label: Text(
                                      'Patokan',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.black54),
                                    ),
                                    hintText: 'Patokan',
                                  ),
                                  onSaved: (value) {},
                                )),
                          ],
                        )
                      ],
                    )),
                  )
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                    bottom: 25,
                  ),
                  width: double.infinity,
                  child: ElevatedButton(
                    child: Container(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        child: Text(
                          "Simpan",
                          style: TextStyle(fontSize: 20),
                        )),
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => EnterPassword()),);
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
    );
  }
}
