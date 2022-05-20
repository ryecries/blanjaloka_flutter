import 'package:blanjaloka_flutter/constant.dart';
import 'package:blanjaloka_flutter/screens/chat/adminchat.dart';
import 'package:blanjaloka_flutter/screens/chat/notification.dart';
import 'package:blanjaloka_flutter/widgets/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  List<String> categories = [
    'Pesanan Baru',
    'Pesanan Diproses',
    'Pesanan Dikirim',
    'Pesanan Selesai',
    'Pesanan Dibatalkan'
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            "Pesanan",
            style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
                fontWeight: FontWeight.bold),
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
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            height: 35,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) => buildTextKategori(index),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: ListView.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(4),
                    splashColor: bPrimaryColor,
                    onTap: () {},
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                left: 10, top: 15, right: 10, bottom: 10),
                            child: Row(
                              children: [
                                Text('Nomor Pesanan : ',
                                    style: TextStyle(fontSize: 13)),
                                Text('1234567',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13)),
                                Spacer(),
                                Container(
                                  padding: EdgeInsets.only(
                                      left: 10, top: 5, right: 10, bottom: 5),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFfdf1eb),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    'Belum Dibayar',
                                    style: TextStyle(
                                        color: Color(0xFFe45200),
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Divider(thickness: 1),
                          Container(
                            margin:
                                EdgeInsets.only(right: 15, left: 15, top: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text('Tanggal Pesanan : ',
                                        style: TextStyle(fontSize: 13)),
                                    Text('16 Sep 2022',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13))
                                  ],
                                ),
                                SizedBox(height: 10),
                                Row(
                                  children: [
                                    Text('Pembeli : ',
                                        style: TextStyle(fontSize: 13)),
                                    Text('Joko Santoso',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 13))
                                  ],
                                ),
                                SizedBox(height: 10),
                                Text('Pesanan : ',
                                    style: TextStyle(fontSize: 13)),
                                SizedBox(height: 5),
                                Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10.0),
                                      child: Image(
                                        image: AssetImage(
                                            'assets/images/pesanan.png'),
                                        fit: BoxFit.cover,
                                        height: 80,
                                        width: 80,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            height: 10,
                                          ),
                                          RichText(
                                            text: TextSpan(
                                                text: 'Roti Tawar Gandum',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 13,
                                                  color: Colors.black,
                                                )),
                                          ),
                                          SizedBox(height: 5),
                                          RichText(
                                            text: TextSpan(
                                                text: 'Rp 15.000',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 13,
                                                  color: Colors.black,
                                                ),
                                                children: [
                                                  TextSpan(
                                                      text: ' / 1 kg',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 13,
                                                        color: Colors.grey,
                                                      ))
                                                ]),
                                          ),
                                          SizedBox(height: 5),
                                          RichText(
                                            text: TextSpan(
                                                text: 'Jumlah : ',
                                                style: TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w400,
                                                  color: Colors.grey,
                                                ),
                                                children: [
                                                  TextSpan(
                                                      text: ' 1 ',
                                                      style: TextStyle(
                                                        fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Colors.grey,
                                                      ))
                                                ]),
                                          ),
                                          SizedBox(height: 10),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 3),
                                Text('1+ Produk Lainnya',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    )),
                                SizedBox(height: 10),
                                RichText(
                                  text: TextSpan(
                                    text: 'Metode Pengiriman :',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 5),
                                RichText(
                                  text: TextSpan(
                                    text: 'Instant - Gojek',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10),
                                Divider(thickness: 1),
                                SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Total Pembayaran : ',
                                        style: TextStyle(fontSize: 13)),
                                    Text('Rp 102.000',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                        ))
                                  ],
                                ),
                                SizedBox(height: 10),
                                Container(
                                  margin: const EdgeInsets.only(bottom: 10),
                                  width: double.infinity,
                                  child: ElevatedButton(
                                    child: Container(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 12),
                                        child: Text(
                                          'Proses Pesanan',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )),
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      primary: bPrimaryColor,
                                      onPrimary: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }

  Widget buildTextKategori(int index) => GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          margin: EdgeInsets.only(right: 5),
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              color:
                  selectedIndex == index ? bPrimaryColor : Colors.transparent,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: Colors.grey, width: 0.5)),
          child: Center(
            child: Text(
              categories[index],
              style: TextStyle(
                color: selectedIndex == index ? Colors.white : Colors.grey,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      );
}
