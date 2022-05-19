import 'package:blanjaloka_flutter/constant.dart';
import 'package:blanjaloka_flutter/models/riwayat_transaksi.dart';
import 'package:blanjaloka_flutter/widgets/bar_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../chat/adminchat.dart';

class Transaction extends StatefulWidget {
  const Transaction({Key? key}) : super(key: key);

  @override
  _TransactionState createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  final filterProduk = [
    'Semua Tanggal',
    '1 Minggu terakhir',
    '1 Bulan Terakhir',
    '3 Bulan Terakhir',
    'Pilih Tanggal'
  ];
  List<String> categories = ['Semua', 'Pending', 'Selesai', 'Dibatalkan'];
  int selectedIndex = 0;
  String? value;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            "Transaksi",
            style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
                fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AdminChat()),);
            },
            icon: SvgPicture.asset('assets/icons/icon_chat.svg'),
            color: Colors.black87,
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/icons/icon_notification.svg'),
            color: Colors.black87,
          ),
          SizedBox(width: 15)
        ],
      ),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Row(
              children: [
                Column(
                  children: [
                    Text('Pendapatan Kamu',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        )),
                    Text('Rp 450.000',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ))
                  ],
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: Colors.grey, width: 0.5)),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                        borderRadius: BorderRadius.circular(25),
                        alignment: Alignment.center,
                        hint: Text('Filter',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                        value: value,
                        icon: Icon(Icons.keyboard_arrow_down_rounded,
                            color: Colors.black),
                        items: filterProduk.map(buildMenuItem).toList(),
                        onChanged: (value) =>
                            setState(() => this.value = value)),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: MediaQuery.of(context).size.height / 3,
              child: BarChart(),
            ),
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Divider(height: 10, thickness: 5)),
          Container(
            margin: EdgeInsets.only(left: 20, bottom: 10),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Riwayat Transaksi',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                )),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 35,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) => buildTextKategori(index),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: transaksi.length,
              itemBuilder: (context, index){
              return buildRiwayatTransaksi(index);
            }),
          )
        ],
      )),
    );
  }

  Widget buildRiwayatTransaksi(int index) {
    return Container(
          decoration: BoxDecoration(
              border:
                  Border(bottom: BorderSide(width: 0.5, color: Colors.grey))),
          margin: EdgeInsets.only(left: 20, top: 20, right: 20),
          padding: EdgeInsets.only(bottom: 10),
          child: Row(
            children: [
              Container(
                  height: 53,
                  width: 53,
                  child: CircleAvatar(
                      backgroundImage: AssetImage(transaksi[index].profilPict))),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        transaksi[index].nama,
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                      Row(
                        children: [
                          Text('ID # ${transaksi[index].id}',
                              style: TextStyle(
                                  fontSize: 12, color: Colors.grey)),
                          Container(
                            padding: EdgeInsets.only(bottom: 8),
                            child: Text(' . ',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold)),
                          ),
                          Text(
                            transaksi[index].status,
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: transaksi[index].iconColor),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Icon(
                        transaksi[index].iconData,
                        size: 16,
                        color: transaksi[index].iconColor,
                      ),
                      Text(
                        ' Rp ${transaksi[index].price.toString()}',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: transaksi[index].iconColor),
                      ),
                    ],
                  ),
                  Text(transaksi[index].date,
                      style: TextStyle(fontSize: 12, color: Colors.grey)),
                ],
              )
            ],
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

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(fontWeight: FontWeight.w500, color: Colors.black),
        ),
      );
}
