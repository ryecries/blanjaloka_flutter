import 'package:blanjaloka_flutter/constant.dart';
import 'package:blanjaloka_flutter/nav.dart';
import 'package:blanjaloka_flutter/screens/login/login.dart';
import 'package:blanjaloka_flutter/screens/register_merchant/tokoregister.dart';
import 'package:blanjaloka_flutter/screens/splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';


Widget _defaultHome = Splash();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: bPrimaryColor,
            ),
      ),
      home: TokoReg(),
      // routes: <String, WidgetBuilder>{
      //   '/home': (BuildContext context) => Nav(),
      //   '/login': (BuildContext context) => Login(),
      // },
    );
  }
}
