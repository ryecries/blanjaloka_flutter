import 'package:blanjaloka_flutter/constant.dart';
import 'package:blanjaloka_flutter/models/notifikasi.dart';
import 'package:flutter/material.dart';

class Notifikasi extends StatefulWidget {
  const Notifikasi({Key? key}) : super(key: key);

  @override
  State<Notifikasi> createState() => _NotificationState();
}

class _NotificationState extends State<Notifikasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text('Notifikasi',
            style: TextStyle(
                fontSize: 18,
                color: Colors.black87,
                fontWeight: FontWeight.bold)),
      ),
      body: ListView.separated(
        padding: EdgeInsets.only(top: 10),
        physics: ClampingScrollPhysics(),
        itemCount: notifikasiData.length,
        itemBuilder: (context, index) {
          return Container(
            child: ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    notifikasiData[index].titleMsg,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    notifikasiData[index].date,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                    ),
                  )
                ],
              ),
              subtitle: Text(
                notifikasiData[index].subtitleMsg,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 13,
                ),
              ),
              onTap: () {},
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
      ),
    );
  }
}
