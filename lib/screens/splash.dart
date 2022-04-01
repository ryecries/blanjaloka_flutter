import 'package:blanjaloka_flutter/screens/regist_login.dart';
import 'package:flutter/material.dart';



class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async{
    await Future.delayed(Duration(milliseconds: 1500), (){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> RegistLogin()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(
                  bottom: 80
              ),
              child: Container(
                width: 240,
                height: 240,
                child: Image.asset('assets/images/logo.png',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
