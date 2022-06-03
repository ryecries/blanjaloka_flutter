import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PusatBantuan extends StatelessWidget {
  const PusatBantuan({Key? key}) : super(key: key);

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
            "Pusat Bantuan",
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset("assets/images/pusat_bantuan.png"),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
                              child: RichText(
                                text: TextSpan(
                                  text: 'Bagaimana kami bisa membantu?',
                                  style: GoogleFonts.poppins(fontWeight: FontWeight.w600, color: Colors.black, fontSize: 16),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 4, bottom: 8),
                              child: RichText(
                                text: TextSpan(
                                  text: 'Hubungi kami melalui kontak dibawah ini jika kamu mengalami masalah pada aplikasi',
                                  style: GoogleFonts.poppins(fontWeight: FontWeight.w400, color: Colors.grey, fontSize: 12),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Card(
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Container(
                                  width: MediaQuery.of(context).size.width * 0.25,
                                  height: 95,
                                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                  // decoration: BoxDecoration(border: Border.all(width: 0.1), borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Container(
                                          width: 30,
                                            child: Image.asset("assets/images/call_us.png")),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 5),
                                        child: RichText(
                                          text: TextSpan(
                                            text: 'Call Us',
                                            style: GoogleFonts.poppins(fontWeight: FontWeight.w500, color: Colors.black),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Spacer(),
                            InkWell(
                              onTap: () {},
                              child: Card(
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Container(
                                  width: MediaQuery.of(context).size.width * 0.25,
                                  height: 95,
                                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                  // decoration: BoxDecoration(border: Border.all(width: 0.1), borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Container(
                                            width: 30,
                                            child: Image.asset("assets/images/chat_us.png")),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 5),
                                        child: RichText(
                                          text: TextSpan(
                                            text: 'Chat Us',
                                            style: GoogleFonts.poppins(fontWeight: FontWeight.w500, color: Colors.black),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Spacer(),
                            InkWell(
                              onTap: () {},
                              child: Card(
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Container(
                                  width: MediaQuery.of(context).size.width * 0.25,
                                  height: 95,
                                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                                  // decoration: BoxDecoration(border: Border.all(width: 0.1), borderRadius: BorderRadius.circular(10)),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Container(
                                            width: 30,
                                            child: Image.asset("assets/images/email_us.png")),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 5),
                                        child: RichText(
                                          text: TextSpan(
                                            text: 'Email Us',
                                            style: GoogleFonts.poppins(fontWeight: FontWeight.w500, color: Colors.black),
                                          ),
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
                      SizedBox(
                        height: 15,
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
