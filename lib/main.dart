import 'package:blanjaloka_flutter/constant.dart';
import 'package:blanjaloka_flutter/nav.dart';
import 'package:blanjaloka_flutter/screens/login.dart';
import 'package:blanjaloka_flutter/screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:blanjaloka_flutter/utils/shared_service.dart';

Widget _defaultHome=Splash();
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  bool _isLoggedIn=await SharedService.isLoggedIn();
  if(_isLoggedIn){
    _defaultHome=Nav();
  }
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
      home: _defaultHome,
      routes: <String,WidgetBuilder>{
        '/home':(BuildContext context)=>Nav(),
        '/login':(BuildContext context)=>Login(),
      },
    );
  }
}
