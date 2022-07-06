import 'package:blanjaloka_flutter/screens/register_account/enterpassword.dart';
import 'package:blanjaloka_flutter/size_config.dart';
import 'package:blanjaloka_flutter/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class RegisterAcc extends StatefulWidget {
  const RegisterAcc({Key? key}) : super(key: key);

  @override
  _RegisterAccState createState() => _RegisterAccState();
}

class _RegisterAccState extends State<RegisterAcc> {
  String _nama = "";
  String _noHp = "";
  String _email = "";

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
          "Daftar Akun",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20, top: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //========================================================
                //Heading text
                //========================================================

                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Daftar Akun Toko Blanjaloka",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Lengkapi data dibawah untuk mendaftar Akun Toko Blanjaloka',
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    )),

                //========================================================
                //end Heading
                //========================================================

                //========================================================
                //form
                //========================================================

                SizedBox(height: getProportionateScreenHeight(32)),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Nama Lengkap",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Masukkan Nama Lengkap Anda',
                    hintStyle: TextStyle(fontSize: 14),
                  ),
                  onChanged: (value) {
                    _nama = value;
                  },
                ),
                SizedBox(height: getProportionateScreenHeight(4)),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Silahkan gunakan nama sesuai dengan KTP anda",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                    ),
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(24)),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Nomor Telepon",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Contoh : 0812*********',
                    hintStyle: TextStyle(fontSize: 14),
                  ),
                  onChanged: (value) {
                    _noHp = value;
                  },
                ),
                SizedBox(height: getProportionateScreenHeight(24)),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Alamat Email",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    hintText: 'Contoh : Emailanda@gmail.com',
                    hintStyle: TextStyle(fontSize: 14),
                  ),
                  onChanged: (value) {
                    _email = value;
                  },
                ),

                //========================================================
                //end form
                //========================================================
              ],
            ),
          ),
        ),
      ),

      //========================================================
      //bottom button
      //========================================================
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(bottom: 16),
        height: getProportionateScreenHeight(100),
        child: Center(
          child: PrimaryButton(
              buttontxt: "Lanjut",
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => EnterPassword(
                            nama: _nama, email: _email, noHp: _noHp)));
              }),
        ),
      ),
    );
  }
}
