import 'package:blanjaloka_flutter/screens/editinformasitoko.dart';
import 'package:blanjaloka_flutter/screens/editprofilakun.dart';
import 'package:blanjaloka_flutter/screens/promo_produk.dart';
import 'package:blanjaloka_flutter/screens/promo_toko.dart';
import 'package:blanjaloka_flutter/screens/rekening.dart';
import 'package:blanjaloka_flutter/screens/sewatoko/detail_produk.dart';
import 'package:blanjaloka_flutter/screens/sewatoko/pilih_sewa.dart';
import 'package:blanjaloka_flutter/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.nunitoSansTextTheme(
          Theme.of(context).textTheme,
        ),
        appBarTheme: Theme.of(context)
            .appBarTheme
            .copyWith(systemOverlayStyle: SystemUiOverlayStyle.dark),
      ),
      home: promoproduk(),
    );
  }
}
