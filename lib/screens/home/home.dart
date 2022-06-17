import 'package:blanjaloka_flutter/constant.dart';
import 'package:blanjaloka_flutter/screens/login/login.dart';
import 'package:blanjaloka_flutter/screens/register_account/register.dart';
import 'package:blanjaloka_flutter/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: Colors.transparent),
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Image.asset(
          'assets/images/logo.png',
          fit: BoxFit.contain,
          height: getProportionateScreenHeight(60),
          width: getProportionateScreenWidth(153),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: RawMaterialButton(
              onPressed: () {},
              elevation: 0,
              fillColor: Colors.white,
              constraints: BoxConstraints(minWidth: 0),
              child: Icon(
                Icons.question_mark,
                size: getProportionateScreenHeight(22),
                color: Color(0xff2b2b2b),
              ),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              padding: EdgeInsets.all(4),
              shape: CircleBorder(
                  side: BorderSide(
                color: Color(0xff404040),
                width: 2,
              )),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
          margin:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: getProportionateScreenHeight(80)),
              Container(
                child: Image.asset(
                  "assets/images/reglog.png",
                  height: getProportionateScreenHeight(250),
                  width: getProportionateScreenWidth(233),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(64)),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Halo Pedagang Blanjaloka!',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: getProportionateScreenHeight(18),
                  ),
                ),
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Jual dan kelola daganganmu lebih mudah dengan aplikasi Toko Blanjaloka.',
                    style: TextStyle(
                      color: Color(0xFF757575),
                      fontSize: getProportionateScreenHeight(14),
                    ),
                  )),
              SizedBox(height: getProportionateScreenHeight(32)),
              Container(
                margin:
                    EdgeInsets.only(bottom: getProportionateScreenHeight(10)),
                child: ElevatedButton(
                  child: Container(
                      height: getProportionateScreenHeight(50),
                      child: Center(
                        child: Text(
                          "Masuk",
                          style: TextStyle(
                              fontSize: getProportionateScreenHeight(20)),
                        ),
                      )),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    elevation: 0.5,
                    primary: bPrimaryColor,
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              Container(
                height: getProportionateScreenHeight(20),
                child: Row(
                  children: [
                    Expanded(child: Divider(thickness: 1)),
                    Text(
                      '  Atau  ',
                      style:
                          TextStyle(fontSize: getProportionateScreenHeight(18)),
                    ),
                    Expanded(child: Divider(thickness: 1))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: getProportionateScreenHeight(10)),
                child: ElevatedButton(
                  child: Container(
                      height: getProportionateScreenHeight(50),
                      child: Center(
                        child: Text(
                          "Daftar Akun",
                          style: TextStyle(
                              fontSize: getProportionateScreenHeight(20)),
                        ),
                      )),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterAcc()),
                    );
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'All right reserved by Blanjaloka',
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: getProportionateScreenHeight(12)),
          ),
        ],
      ),
    );
  }
}
