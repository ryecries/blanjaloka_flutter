import 'package:blanjaloka_flutter/screens/home/home.dart';
import 'package:blanjaloka_flutter/screens/login/login.dart';
import 'package:blanjaloka_flutter/screens/pengaturan/pengaturan.dart';
import 'package:blanjaloka_flutter/screens/pengaturan/pusat_bantuan.dart';
import 'package:blanjaloka_flutter/screens/promo/promo_produk.dart';
import 'package:blanjaloka_flutter/screens/ulasan/ulasan.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:blanjaloka_flutter/screens/sewatoko/pilih_sewa.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



import 'package:shared_preferences/shared_preferences.dart';
import '../../widget.dart';
import '../chat/adminchat.dart';
import '../chat/notification.dart';


class Others extends StatefulWidget {
  const Others({Key? key}) : super(key: key);

  @override
  _OthersState createState() => _OthersState();
}

class _OthersState extends State<Others> {
  bool _enable = false;

  String email = "";
  getPref() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    var islogin = pref.getBool("is_login");
    if (islogin != null && islogin == true) {
      setState(() {
        email = pref.getString("email")!;
      });
    } else {
      Navigator.of(context, rootNavigator: true).pop();
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => const Login(),
        ),
            (route) => false,
      );
    }
  }

  logOut() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      preferences.remove("is_login");
      preferences.remove("email");
    });

    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) =>  HomePage(),
      ),
          (route) => false,
    );

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
          content: Text(
            "Berhasil logout",
            style: TextStyle(fontSize: 16),
          )),
    );
  }

  @override
  void initState() {
    getPref();
    super.initState();
  }

  @override
  dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent
    ));
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Text(
            "Lainnya",
            style: TextStyle(fontSize: 20,color: Colors.black87, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AdminChat()),
              );
            },
            icon: SvgPicture.asset('assets/icons/icon_chat.svg'),
            color: Colors.black87,
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Notifikasi()),
              );
            },
            icon: SvgPicture.asset('assets/icons/icon_notification.svg'),
            color: Colors.black87,
          ),
          SizedBox(width: 15)
        ],
      ),

      body: Stack(
        children: [
          Container(
            height: (MediaQuery.of(context).size.height) / 3,
            width: (MediaQuery.of(context).size.width),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/containershape.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            child: SafeArea(
              child: Column(
                children: [
                  Expanded(
                      child: ListView(
                        children: [
                          Container(
                            height: 220,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8,right: 24,left: 24),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: CircleAvatar(
                                          backgroundImage: NetworkImage('https://randomuser.me/api/portraits/men/9.jpg'),
                                          maxRadius: 32,
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.symmetric(
                                            horizontal: 8,
                                            vertical: 8,
                                          ),
                                          color: Colors.transparent,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text("Toko Sudjaya", style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold),),
                                              SizedBox(height: 4,),
                                              Text("102 Pengikut",style: TextStyle(fontSize: 12,color: Colors.grey.shade600),),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: 16,),
                                      Expanded(
                                        child: Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            margin: EdgeInsets.symmetric(
                                              horizontal: 8,
                                              vertical: 8,
                                            ),
                                            color: Colors.transparent,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: <Widget>[
                                                Text("Aktif Sampai", style: TextStyle(fontSize: 12,color: Colors.grey.shade600),),
                                                SizedBox(height: 4,),
                                                Text("102 Pengikut",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      // SizedBox(width: 16,),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                        height: 110,
                                        width: 330,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(12),
                                          boxShadow: [
                                            BoxShadow(
                                              offset: Offset(0, 1),
                                              blurRadius: 2,
                                              color: Colors.black.withOpacity(0.2),
                                            ),
                                          ],
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 16),
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 160,
                                                margin: EdgeInsets.symmetric(
                                                  horizontal: 8,
                                                  vertical: 8,
                                                ),
                                                color: Colors.transparent,
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Text("Status Toko", style: TextStyle(fontSize: 14,color: Colors.black,fontWeight: FontWeight.bold),),
                                                    SizedBox(height: 4,),
                                                    Text("Aktifkan jika kamu ingin menerima pesanan",style: TextStyle(fontSize: 12,color: Colors.grey.shade600),),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Align(
                                                  alignment: Alignment.topRight,
                                                  child: Container(
                                                      margin: EdgeInsets.symmetric(
                                                        vertical: 8,
                                                      ),
                                                      color: Colors.transparent,
                                                      child: Row(
                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                        children: [
                                                          Text('Tutup ', style: TextStyle(
                                                              color: Colors.black,fontWeight: FontWeight.bold,
                                                              fontSize: 14.0
                                                          ),),
                                                          CustomSwitch(
                                                            value: _enable,
                                                            onChanged: (bool val){
                                                              setState(() {
                                                                _enable = val;
                                                              });
                                                            },
                                                          ),
                                                        ],
                                                      )
                                                  ),
                                                ),
                                              ),
                                              // SizedBox(width: 16,),
                                            ],
                                          ),
                                        )
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            color: Colors.white,
                            child: Column(
                              children: [

                                Padding(
                                  padding: const EdgeInsets.only(left: 20, right: 20),
                                  child: Container(
                                    height: 56,
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom:
                                        BorderSide(width: 1.0, color: Colors.grey),
                                      ),
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => PilihSewa()),
                                        );
                                      },
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 36,
                                            height: 36,
                                            child: IconButton(
                                              onPressed: () {},
                                              icon: SvgPicture.asset('assets/icons/icon_sewa_toko.svg'),
                                              iconSize: 50,
                                              color: Colors.black87,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 8),
                                            child: Text(
                                              'Masa Sewa Toko',
                                              style: TextStyle(
                                                  fontSize: 14,fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Spacer(),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: Icon(
                                              Icons.arrow_forward_ios,
                                              size: 14,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20, right: 20),
                                  child: Container(
                                    height: 56,
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom:
                                        BorderSide(width: 1.0, color: Colors.grey),
                                      ),
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => PagePromoToko()),
                                        );
                                      },
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 36,
                                            height: 36,
                                            child: IconButton(
                                              onPressed: () {},
                                              icon: SvgPicture.asset('assets/icons/icon_promo_toko.svg'),
                                              iconSize: 50,
                                              color: Colors.black87,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 8),
                                            child: Text(
                                              'Promo Toko',
                                              style: TextStyle(
                                                  fontSize: 14,fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Spacer(),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: Icon(
                                              Icons.arrow_forward_ios,
                                              size: 14,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 20),
                                  child: Container(
                                    height: 56,
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom:
                                        BorderSide(width: 1.0, color: Colors.grey),
                                      ),
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => UlasanPage()),
                                        );
                                      },
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 36,
                                            height: 36,
                                            child: IconButton(
                                              onPressed: () {},
                                              icon: SvgPicture.asset('assets/icons/icon_ulasan_pembeli.svg'),
                                              iconSize: 50,
                                              color: Colors.black87,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 8),
                                            child: Text(
                                              'Ulasan Pembeli',
                                              style: TextStyle(
                                                  fontSize: 14,fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Spacer(),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: Icon(
                                              Icons.arrow_forward_ios,
                                              size: 14,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 20, right: 20),
                                  child: Container(
                                    height: 56,
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom:
                                        BorderSide(width: 1.0, color: Colors.grey),
                                      ),
                                    ),
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => PusatBantuan()),
                                        );
                                      },
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 36,
                                            height: 36,
                                            child: IconButton(
                                              onPressed: () {},
                                              icon: SvgPicture.asset('assets/icons/icon_pusat_bantuan.svg'),
                                              iconSize: 50,
                                              color: Colors.black87,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 8),
                                            child: Text(
                                              'Pusat Bantuan',
                                              style: TextStyle(
                                                  fontSize: 14,fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Spacer(),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: Icon(
                                              Icons.arrow_forward_ios,
                                              size: 14,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 20, right: 20),
                                  child: Container(
                                    height: 56,
                                    child: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => Pengaturan()),
                                        );
                                      },
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 36,
                                            height: 36,
                                            child: IconButton(
                                              onPressed: () {
                                                logOut();
                                              },
                                              icon: SvgPicture.asset('assets/icons/icon_pengaturan.svg'),
                                              iconSize: 50,
                                              color: Colors.black87,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 8),
                                            child: Text(
                                              'Pengaturan',
                                              style: TextStyle(
                                                  fontSize: 14,fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Spacer(),
                                          Align(
                                            alignment: Alignment.centerRight,
                                            child: Icon(
                                              Icons.arrow_forward_ios,
                                              size: 14,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10,bottom: 10),
                            color: Colors.white,
                            height: 180,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20, right: 20),
                                  child: Container(
                                    height: 56,
                                    child: InkWell(
                                      onTap: () {
                                        logOut();
                                        // SharedService.logout().then((_) {
                                        // Navigator.of(context).pushReplacementNamed("/login");
                                        // }
                                        // );
                                      },
                                      child: Row(
                                        children: [
                                          Container(
                                            width: 36,
                                            height: 36,
                                            child: IconButton(
                                              onPressed: (){
                                                logOut();
                                              },
                                              icon: SvgPicture.asset('assets/icons/icon_keluar.svg'),
                                              iconSize: 50,
                                              color: Colors.black87,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 8),
                                            child: Text(
                                              'Keluar',
                                              style: TextStyle(
                                                  fontSize: 14,fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                        ],
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}