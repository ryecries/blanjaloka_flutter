import 'package:blanjaloka_flutter/nav.dart';
import 'package:blanjaloka_flutter/screens/home/home.dart';
import 'package:blanjaloka_flutter/size_config.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constant.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}


class _OnBoardingPageState extends State<OnBoardingPage> {
  int currentPage = 0;
  List<Map<String, dynamic>> splashData = [
    {
      "text": "Kelola penjualanmu dengan lebih mudah dan praktis",
      "image": "assets/images/onboarding_1.png",
    },
    {
      "text": "Atur setiap produkmu sesuai dengan ketersediaan",
      "image": "assets/images/onboarding_2.png",
    },
    {
      "text": "Pantau transaksi perjalananmu setiap hari",
      "image": "assets/images/onboarding_3.png",
    },
    {
      "text": "Jualan lebih mudah dengan aplikasi Toko Blanjaloka",
      "image": "assets/images/onboarding_4.png",
    }
  ];

  Object? get index => null;
  late PageController _pageController;
  void ceckLogin() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var islogin = pref.getBool("is_login");
    if (islogin != null && islogin) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => const Nav(),
        ),
            (route) => false,
      );
    }
  }

  @override
  void initState() {
    ceckLogin();
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            _pageController.previousPage(
                duration: Duration(milliseconds: 300), curve: Curves.ease);
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Lewati",
                  style: TextStyle(
                      fontSize: getProportionateScreenHeight(18),
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF00838f)),
                )),
          )
        ],
      ),
      body: SafeArea(
          child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  child: PageView.builder(
                      controller: _pageController,
                      onPageChanged: (value) {
                        setState(() {
                          currentPage = value;
                        });
                      },
                      itemCount: splashData.length,
                      itemBuilder: ((context, index) => SplashContent(
                            image: splashData[index]["image"],
                            text: splashData[index]["text"],
                          ))),
                ),
              ),
              currentPage == splashData.length - 1
                  ? Container(
                      margin: EdgeInsets.only(
                        left: 20,
                        right: 20,
                        bottom: getProportionateScreenHeight(10),
                      ),
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xFF00838f),
                            onPrimary: Colors.white,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0))),
                        child: Container(
                          height: getProportionateScreenHeight(50),
                          child: Center(
                            child: Text(
                              "Mulai Sekarang",
                              style: TextStyle(
                                  fontSize: getProportionateScreenHeight(20),
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    )
                  : Container(
                      height: getProportionateScreenHeight(110),
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                            splashData.length,
                            (index) => Padding(
                                  padding: EdgeInsets.only(bottom: 0, top: 8),
                                  child: buildDot(index: index),
                                )),
                      )),
            ],
          ),
          currentPage == splashData.length - 1
              ? Container()
              : Positioned(
                  right: 20,
                  bottom: 20,
                  child: InkWell(
                    child: Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: getProportionateScreenHeight(50),
                              child: ElevatedButton(
                                  onPressed: () {
                                    _pageController.nextPage(
                                        duration: Duration(milliseconds: 300),
                                        curve: Curves.ease);
                                  },
                                  style: ElevatedButton.styleFrom(
                                      primary: bPrimaryColor,
                                      shape: CircleBorder()),
                                  child: Icon(
                                    Icons.arrow_forward,
                                    color: Colors.white,
                                  )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
        ],
      )),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kThemeAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 5,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
          color: currentPage == index ? bPrimaryColor : Color(0xFF00838f),
          borderRadius: BorderRadius.circular(3)),
    );
  }
}

class SplashContent extends StatelessWidget {
  final String text;

  final String image;

  const SplashContent({Key? key, required this.text, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            text,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: getProportionateScreenHeight(22)),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: getProportionateScreenHeight(30)),
        Image.asset(
          image,
          width: getProportionateScreenWidth(228),
          height: getProportionateScreenHeight(498),
        )
      ],
    );
  }
}
