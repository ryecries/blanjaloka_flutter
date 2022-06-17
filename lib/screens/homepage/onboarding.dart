import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constant.dart';

class onboarding extends StatefulWidget {
  const onboarding({Key? key}) : super(key: key);

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  int currentPage = 0;
  List<Map<String, dynamic>> splashData = [
    {
      "text": "Kelola penjualanmu dengan lebih mudah dan praktis",
      "image": "assets/images/ip.png",
    },
    {
      "text": "Atur setiap produkmu sesuai dengan ketersediaan",
      "image": "assets/images/ipII.png",
    },
    {
      "text": "Pantau transaksi perjalananmu setiap hari",
      "image": "assets/images/ipIII.png",
    },
    {
      "text": "Jualan lebih mudah dengan aplikasi Toko Blanjaloka",
      "image": "assets/images/ipIV.png",
    }
  ];

  Object? get index => null;
  late PageController _pageController;

  @override
  void initState() {
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
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
              _pageController.nextPage(
                  duration: Duration(milliseconds: 300), curve: Curves.ease);
            },
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  "Lewati",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF00838f)),
                )),
          )
        ],
      ),
      body: SafeArea(
          child: Container(
        color: Colors.white,
        child: SizedBox(
          child: Column(
            children: <Widget>[
              Expanded(
                  flex: 7,
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
                        itemBuilder: ((context, index) => splashcontent(
                              image: splashData[index]["image"],
                              text: splashData[index]["text"],
                            ))),
                  )),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      currentPage == splashData.length - 1
                          ? Padding(
                              padding: const EdgeInsets.all(0),
                              child: Container(
                                margin: EdgeInsets.only(
                                    left: 8, right: 8, bottom: 38),
                                width: double.infinity,
                                child: ElevatedButton(
                                    onPressed: () {
                                      // Navigator.push(context, MaterialPageRoute(builder: context) => login)
                                    },
                                    style: ElevatedButton.styleFrom(
                                        primary: Color(0xFF00838f),
                                        onPrimary: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10.0))),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 12, horizontal: 90),
                                      child: Text(
                                        "Mulai Sekarang",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )),
                              ),
                            )
                          : Container(
                              width: double.infinity,
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                      padding: EdgeInsets.symmetric(
                                        vertical: 18,
                                      ),
                                      child: Stack(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: List.generate(
                                                splashData.length,
                                                (index) => Padding(
                                                      padding: EdgeInsets.only(
                                                          bottom: 0, top: 8),
                                                      child: buildDot(
                                                          index: index),
                                                    )),
                                          ),
                                          InkWell(
                                            child: Row(
                                              children: [
                                                Column(
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 310, bottom: 0),
                                                      child: SizedBox(
                                                        height: 50,
                                                        child: ElevatedButton(
                                                            onPressed: () {
                                                              _pageController.nextPage(
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          300),
                                                                  curve: Curves
                                                                      .ease);
                                                            },
                                                            style: ElevatedButton
                                                                .styleFrom(
                                                                    primary:
                                                                        bPrimaryColor,
                                                                    shape:
                                                                        CircleBorder()),
                                                            child: Icon(
                                                              Icons
                                                                  .arrow_forward,
                                                              color:
                                                                  Colors.white,
                                                            )),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      )),
                                ],
                              )),
                    ],
                  ))
            ],
          ),
        ),
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

class splashcontent extends StatelessWidget {
  final String text;

  final String image;

  const splashcontent({Key? key, required this.text, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          textAlign: TextAlign.center,
        ),
        Image.asset(
          image,
          width: 252,
        )
      ],
    );
  }
}
