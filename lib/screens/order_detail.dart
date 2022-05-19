import 'package:flutter/material.dart';

class OrderDetail extends StatelessWidget {
  const OrderDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
        title: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            "Detail Pesanan",
            style: TextStyle(fontSize: 18, color: Colors.black87, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: ListView(
                children: [
                  // Tambah Checklist button
                  Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(border: Border.all(width: 0.1), borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 10),
                              child: RichText(
                                text: TextSpan(
                                    text: 'Status Pesanan :',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400, color: Colors.grey),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 4,bottom: 8),
                              child: RichText(
                                text: TextSpan(
                                    text: 'Sudah Dibayar',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600, color: Colors.black),

                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 10),
                              child: RichText(
                                text: TextSpan(
                                  text: 'Nomor Pesanan :',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400, color: Colors.grey),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 4,bottom: 8),
                              child: RichText(
                                text: TextSpan(
                                  text: '1621098',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600, color: Colors.black),

                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 10),
                              child: RichText(
                                text: TextSpan(
                                  text: 'Tanggal Pesanan :',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400, color: Colors.grey),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 4,bottom: 8),
                              child: RichText(
                                text: TextSpan(
                                  text: '14 Sep 2021, 9:27',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600, color: Colors.black),

                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(border: Border.all(width: 0.1), borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 10),
                              child: RichText(
                                text: TextSpan(
                                    text: 'Pembeli : ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400, color: Colors.grey),
                                    children: [TextSpan(
                                        text: 'Joko Santoso', style: TextStyle(
                                        fontWeight: FontWeight.w600, color: Colors.black)
                                    )]
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 4),
                              child: RichText(
                                text: TextSpan(
                                  text: 'Pesanan : ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400, color: Colors.grey),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image(
                                    image: AssetImage('assets/images/pesanan.png'),
                                    fit: BoxFit.cover,
                                    height: 80,
                                    width: 80,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      RichText(
                                        text: TextSpan(
                                            text: 'Roti Tawar Gandum',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500, color: Colors.black)
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      RichText(
                                        text: TextSpan(
                                            text: 'Rp 15.000',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600, color: Colors.black),
                                            children: [TextSpan(
                                                text: ' / 1 kg', style: TextStyle(
                                                fontWeight: FontWeight.w400, color: Colors.grey)
                                            )]
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      RichText(
                                        text: TextSpan(
                                            text: 'Jumlah : 2 produk',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400, color: Colors.grey)
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image(
                                    image: AssetImage('assets/images/pesanan1.png'),
                                    fit: BoxFit.cover,
                                    height: 80,
                                    width: 80,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      RichText(
                                        text: TextSpan(
                                            text: 'Kopi Aceh Asli 250gr',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w500, color: Colors.black)
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      RichText(
                                        text: TextSpan(
                                            text: 'Rp 20.000',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600, color: Colors.black),
                                            children: [TextSpan(
                                                text: ' / 1 kg', style: TextStyle(
                                                fontWeight: FontWeight.w400, color: Colors.grey)
                                            )]
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      RichText(
                                        text: TextSpan(
                                            text: 'Jumlah : 1 produk',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w400, color: Colors.grey)
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 12),
                              child: RichText(
                                text: TextSpan(
                                  text: 'Metode Pengiriman :',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400, color: Colors.grey),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 4,bottom: 8),
                              child: RichText(
                                text: TextSpan(
                                  text: 'Instant - Driver Becak Blanjaloka',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600, color: Colors.black),

                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 8),
                              child: RichText(
                                text: TextSpan(
                                  text: 'No Resi :',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400, color: Colors.grey),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4),
                              child: RichText(
                                text: TextSpan(
                                  text: 'Belum di input',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600, color: Colors.grey),

                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(border: Border.all(width: 0.1), borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 10),
                              child: RichText(
                                text: TextSpan(
                                  text: 'Alamat Pengiriman :',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400, color: Colors.grey),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 4,bottom: 8),
                              child: RichText(
                                text: TextSpan(
                                  text: 'Kantor - Citiasia (0812345678901)\nJl. Kemang Utara, No.76, RT.001/RW.003, \nKel. Mampang Prapatan, Kec. Pela Mampang, \nJakarta Selatan, DKI Jakarta, 12560',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600, color: Colors.black),

                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(border: Border.all(width: 0.1), borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 10),
                              child: Row(
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: 'Metode Pembayaran :',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400, color: Colors.grey),
                                    ),
                                  ),
                                  Spacer(),
                                  RichText(
                                    text: TextSpan(
                                      text: 'BCA Virtual Account',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600, color: Colors.black),

                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 10),
                              child: Row(
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: 'Total Pesanan :',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400, color: Colors.grey),
                                    ),
                                  ),
                                  Spacer(),
                                  RichText(
                                    text: TextSpan(
                                      text: 'Rp 30.000',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600, color: Colors.black),

                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 10),
                              child: Row(
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: 'Voucher :',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400, color: Colors.grey),
                                    ),
                                  ),
                                  Spacer(),
                                  RichText(
                                    text: TextSpan(
                                      text: '-',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600, color: Colors.black),

                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 10),
                              child: Row(
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: 'Biaya Pengiriman :',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400, color: Colors.grey),
                                    ),
                                  ),
                                  Spacer(),
                                  RichText(
                                    text: TextSpan(
                                      text: 'Rp. 12.000',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600, color: Colors.black),

                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 10),
                              child: Row(
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: 'Total Pembayaran :',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400, color: Colors.grey),
                                    ),
                                  ),
                                  Spacer(),
                                  RichText(
                                    text: TextSpan(
                                      text: 'Rp. 52.000',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600, color: Colors.black),

                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
