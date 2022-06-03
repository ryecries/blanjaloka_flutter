import 'package:blanjaloka_flutter/constant.dart';
import 'package:blanjaloka_flutter/widgets/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class UlasanPage extends StatefulWidget {
  const UlasanPage({Key? key}) : super(key: key);

  @override
  State<UlasanPage> createState() => _UlasanPageState();
}

class _UlasanPageState extends State<UlasanPage> {
  String query = '';
  String _filterUlasan = '1 Minggu Terakhir';
  String _filterRating = 'Semua Rating';

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
          "Ulasan Pembeli",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              searchBar(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      _periodeUlasan();
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 35,
                      width: MediaQuery.of(context).size.width / 2.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey, width: 0.5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            _filterUlasan,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_rounded,
                            size: 18,
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      _urutkanRating();
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 35,
                      width: MediaQuery.of(context).size.width / 3,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey, width: 0.5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            _filterRating,
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_rounded,
                            size: 18,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    margin: EdgeInsets.only(top: 10),
                    height: MediaQuery.of(context).size.height / 4.5,
                    decoration: BoxDecoration(
                      border: Border.all(width: 0.1),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Column(
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 30,
                                    width: 30,
                                    margin: EdgeInsets.only(right: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25.0),
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/profil_photo_1.png'),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Text(
                                      'Puan Putri',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '27 Sep 2021',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 13,
                                    ),
                                  )
                                ],
                              ),
                              Divider(thickness: 1)
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              margin: EdgeInsets.only(right: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                image: DecorationImage(
                                  image: AssetImage('assets/images/tomat.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Column(
                              children: [
                                Text('Jahe Sehat 1kg',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                RatingStars(
                                  valueLabelVisibility: false,
                                  value: 3.5,
                                  starColor: Colors.orange,
                                  starSize: 18,
                                ),
                              ],
                            )
                          ],
                        ),
                        Container(
                            margin: EdgeInsets.only(top: 10),
                            child: Text(
                              'Pengiriman cepat, pedagang ramah dan packing yang bersih dan aman.',
                              style: TextStyle(color: Colors.grey),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ))
                      ],
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget searchBar() => SearchWidget(
        text: query,
        onChanged: searchUlasan,
        hintText: 'Cari Ulasan di sini',
      );

  void searchUlasan(String query) {
    setState(() {
      this.query = query;
    });
  }

  void _periodeUlasan() {
    showModalBottomSheet(
        isScrollControlled: true,
        enableDrag: false,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        context: context,
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                child: Row(
                  children: [
                    IconButton(
                      splashRadius: 20,
                      splashColor: bPrimaryColor,
                      icon: Icon(
                        Icons.close,
                        color: Colors.black54,
                      ),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                    Text(
                      'Pilih Periode Ulasan',
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: () {
                          _selectedUlasanItem('1 Minggu Terakhir');
                        },
                        child: Container(
                          width: 300,
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: Container(
                            child: Text(
                              '1 Minggu Terakhir',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Divider(thickness: 1),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: () {
                          _selectedUlasanItem('1 Bulan Terakhir');
                        },
                        child: Container(
                          width: 300,
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: Container(
                            child: Text(
                              '1 Bulan Terakhir',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Divider(thickness: 1),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: () {
                          _selectedUlasanItem('1 Tahun Terakhir');
                        },
                        child: Container(
                          width: 300,
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: Container(
                            child: Text(
                              '1 Tahun Terakhir',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Divider(thickness: 1),
                  ],
                ),
              )
            ],
          );
        });
  }

  void _urutkanRating() {
    showModalBottomSheet(
        isScrollControlled: true,
        enableDrag: false,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        context: context,
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                child: Row(
                  children: [
                    IconButton(
                      splashRadius: 20,
                      splashColor: bPrimaryColor,
                      icon: Icon(
                        Icons.close,
                        color: Colors.black54,
                      ),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                    Text(
                      'Urutkan Rating Berdasarkan',
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: () {
                          _selectedRatingItem('Semua Rating');
                        },
                        child: Container(
                          width: 300,
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: Container(
                            child: Text(
                              'Semua Rating',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Divider(thickness: 1),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: () {
                          _selectedRatingItem('Rating Tertinggi');
                        },
                        child: Container(
                          width: 300,
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: Container(
                            child: Text(
                              'Rating Tertinggi',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Divider(thickness: 1),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: () {
                          _selectedRatingItem('Rating Terendah');
                        },
                        child: Container(
                          width: 300,
                          margin: EdgeInsets.symmetric(vertical: 10),
                          child: Container(
                            child: Text(
                              'Rating Terendah',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Divider(thickness: 1),
                  ],
                ),
              )
            ],
          );
        });
  }

  void _selectedUlasanItem(String name) {
    Navigator.pop(context);
    setState(() {
      _filterUlasan = name;
    });
  }

  void _selectedRatingItem(String name) {
    Navigator.pop(context);
    setState(() {
      _filterRating = name;
    });
  }
}
