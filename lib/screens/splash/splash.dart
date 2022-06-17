import 'package:blanjaloka_flutter/screens/home/home.dart';
import 'package:blanjaloka_flutter/screens/onboarding/on_boarding_page.dart';
import 'package:blanjaloka_flutter/size_config.dart';
import 'package:flutter/material.dart';



class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => OnBoardingPage()));
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 80),
              child: Container(
                width: getProportionateScreenWidth(240),
                height: getProportionateScreenHeight(240),
                child: Image.asset('assets/images/logo.png'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
