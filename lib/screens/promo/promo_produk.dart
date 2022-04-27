import 'package:blanjaloka_flutter/constant.dart';
import 'package:blanjaloka_flutter/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class PagePromoToko extends StatefulWidget {
  const PagePromoToko({Key? key}) : super(key: key);

  @override
  State<PagePromoToko> createState() => _PagePromoTokoState();
}

class _PagePromoTokoState extends State<PagePromoToko> {
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
        elevation: 0.5,
        title: Text(
          "Promo Produk",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: SafeArea(
          child: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Produk',
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: InkWell(
                        borderRadius: BorderRadius.circular(4),
                        splashColor: bPrimaryColor,
                        onTap: () {},
                        child: Image(
                            image:
                                AssetImage('assets/images/upload_foto_wide.png')),
                      )),
                  SizedBox(height: 10),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Nominal Diskon",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                hintText: '0',
                                suffixIcon: Icon(
                                  Icons.percent,
                                  size: 16,
                                )),
                          ),
                        ]),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Kuota Diskon",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: '0',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Text(
                              'Maksimal. 999',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey),
                            ),
                          )
                        ]),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        border: Border(
                      bottom: BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Tanggal Mulai Promo",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        InkWell(
                          splashColor: bPrimaryColor,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 2),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Pilih Tanggal",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    SizedBox(height: 45),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 15),
                                      child: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          size: 16,
                                          color: Colors.grey),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          onTap: () {},
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, bottom: 70),
                    decoration: BoxDecoration(
                        border: Border(
                      bottom: BorderSide(
                        color: Colors.grey,
                        width: 1.0,
                      ),
                    )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Tanggal Berakhir Promo",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                        InkWell(
                          splashColor: bPrimaryColor,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: double.infinity,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 2),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Pilih Tanggal",
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    SizedBox(height: 45),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 15),
                                      child: Icon(
                                          Icons.keyboard_arrow_down_rounded,
                                          size: 16,
                                          color: Colors.grey),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          onTap: () {},
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          PrimaryButton(buttontxt: 'Simpan Promo', onPressed: () {})
        ],
      )),
    );
  }
}
