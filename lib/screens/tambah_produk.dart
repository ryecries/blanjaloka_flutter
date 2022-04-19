import 'package:blanjaloka_flutter/nav.dart';
import 'package:flutter/material.dart';

import '../widget.dart';
import '../widgets/primary_button.dart';

class TambahProduk extends StatefulWidget {
  const TambahProduk({Key? key}) : super(key: key);

  @override
  State<TambahProduk> createState() => _TambahProdukState();
}

class _TambahProdukState extends State<TambahProduk> {
  bool _enable = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: Text("Tambah Produk",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black),),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            child: Stack(
              children: [
                ListView(
                  children: [
                    Column(
                      children: [
                        ImageProdukWidget(titleImgs: "Foto Produk"),
                        // identitas pedagang dll. isi dibawah
                        Padding(padding: const EdgeInsets.only(top: 12)),
                        PedagangWidget(
                          title: "Nama Produk yang dijual",
                          hint: "Nama Produk",
                        ),
                        PedagangWidget(
                          title: "Kategori Produk",
                          hint: "Kategori Produk",
                        ),
                        PedagangWidget(
                          title: "Harga Produk",
                          hint: "Rp",
                        ),
                        PedagangWidget(
                          title: "Jumlah Satuan",
                          hint: "Jumlah Satuan",
                        ),
                        PedagangWidget(
                          title: "Stok Tersedia",
                          hint: "Stok Tersedia",
                        ),
                        PedagangWidget(
                          title: "Minimal Pemesanan",
                          hint: "Minimal Pemesanan",
                        ),
                        PedagangWidget(
                          title: "Deskripsi Produk",
                          hint: "Deskripsi Produk",
                        ),
                        SizedBox(height: 30,),
                        Row(
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
                                  Text("Jika status aktif, maka produkmu dapat dicari pembeli",style: TextStyle(fontSize: 12,color: Colors.grey.shade600),),
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
                        SizedBox(height: 80,)
                      ],
                    ),
                  ],
                ),

                PrimaryButton(buttontxt: 'Selesai', onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Nav()),
                  );})
              ],

            ),

          ),

        ),

      ),

    );
  }
}
