import 'package:blanjaloka_flutter/screens/pengaturan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


import '../../widget.dart';
import '../editinformasitoko.dart';
import '../editprofilakun.dart';

class Others extends StatefulWidget {
  const Others({Key? key}) : super(key: key);

  @override
  _OthersState createState() => _OthersState();
}

class _OthersState extends State<Others> {
  bool _enable = false;

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
          Padding(
            padding: const EdgeInsets.only(left: 2),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.chat_outlined),color: Colors.black87,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications),color: Colors.black87,
            ),
          ),
        ],
      ),

      body: Container(
        height: (MediaQuery.of(context).size.height),
        width: (MediaQuery.of(context).size.width),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/containershape.png'),
            fit: BoxFit.fill,
          ),
        ),
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
                                                children: [
                                                  SizedBox(width: 22.0,),
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
                                          builder: (context) => EditProfil()),
                                    );
                                  },
                                  child: Row(
                                    children: [
                                      Expanded(
                                          flex: 1,
                                          child: Icon(
                                            Icons.shopping_bag,
                                            size: 24,
                                            color: Colors.black,
                                          )),
                                      Expanded(
                                          flex: 10,
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 12),
                                            child: Text(
                                              'Masa Sewa Toko',
                                              style: TextStyle(
                                                  fontSize: 14,fontWeight: FontWeight.bold),
                                            ),
                                          )),
                                      Expanded(
                                          flex: 1,
                                          child: Icon(
                                            Icons.arrow_forward_ios,
                                            size: 14,
                                            color: Colors.grey,
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            ),Padding(
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
                                          builder: (context) => EditProfil()),
                                    );
                                  },
                                  child: Row(
                                    children: [
                                      Expanded(
                                          flex: 1,
                                          child: Icon(
                                            Icons.airplane_ticket_rounded,
                                            size: 24,
                                            color: Colors.black,
                                          )),
                                      Expanded(
                                          flex: 10,
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 12),
                                            child: Text(
                                              'Promo Toko',
                                              style: TextStyle(
                                                  fontSize: 14,fontWeight: FontWeight.bold),
                                            ),
                                          )),
                                      Expanded(
                                          flex: 1,
                                          child: Icon(
                                            Icons.arrow_forward_ios,
                                            size: 14,
                                            color: Colors.grey,
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            ),Padding(
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
                                          builder: (context) => EditProfil()),
                                    );
                                  },
                                  child: Row(
                                    children: [
                                      Expanded(
                                          flex: 1,
                                          child: Icon(
                                            Icons.star_rate_rounded,
                                            size: 24,
                                            color: Colors.black,
                                          )),
                                      Expanded(
                                          flex: 10,
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 12),
                                            child: Text(
                                              'Ulasan Pembeli',
                                              style: TextStyle(
                                                  fontSize: 14,fontWeight: FontWeight.bold),
                                            ),
                                          )),
                                      Expanded(
                                          flex: 1,
                                          child: Icon(
                                            Icons.arrow_forward_ios,
                                            size: 14,
                                            color: Colors.grey,
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            ),Padding(
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
                                          builder: (context) => EditProfil()),
                                    );
                                  },
                                  child: Row(
                                    children: [
                                      Expanded(
                                          flex: 1,
                                          child: Icon(
                                            Icons.call,
                                            size: 24,
                                            color: Colors.black,
                                          )),
                                      Expanded(
                                          flex: 10,
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 12),
                                            child: Text(
                                              'Pusat Bantuan',
                                              style: TextStyle(
                                                  fontSize: 14,fontWeight: FontWeight.bold),
                                            ),
                                          )),
                                      Expanded(
                                          flex: 1,
                                          child: Icon(
                                            Icons.arrow_forward_ios,
                                            size: 14,
                                            color: Colors.grey,
                                          )),
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
                                      Expanded(
                                          flex: 1,
                                          child: Icon(
                                            Icons.settings,
                                            size: 24,
                                            color: Colors.black,
                                          )),
                                      Expanded(
                                          flex: 10,
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 12),
                                            child: Text(
                                              'Pengaturan',
                                              style: TextStyle(
                                                  fontSize: 14,fontWeight: FontWeight.bold),
                                            ),
                                          )),
                                      Expanded(
                                          flex: 1,
                                          child: Icon(Icons.arrow_forward_ios,
                                              size: 14, color: Colors.grey)),
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
                                    // Navigator.push(
                                    //   context,
                                    //   MaterialPageRoute(
                                    //       builder: (context) => Pedagang()),
                                    // );
                                  },
                                  child: Row(
                                    children: [
                                      Expanded(
                                          flex: 1,
                                          child: Icon(
                                            Icons.logout,
                                            size: 24,
                                            color: Colors.black,
                                          )),
                                      Expanded(
                                          flex: 8,
                                          child: Text(
                                            'Keluar',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold),
                                          )),
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
    );
  }
}
