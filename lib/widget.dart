import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class ImagePedagangWidget extends StatelessWidget {
  ImagePedagangWidget({Key? key, this.titleImg}) : super(key: key);
  File? image;
  final String? titleImg;

  Future getImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? imagePicked = await _picker.pickImage(source: ImageSource.gallery);
    image = File(imagePicked!.path);
    // setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        image != null
            ? Padding(
                padding: const EdgeInsets.only(left: 5),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.file(
                      image!,
                      fit: BoxFit.cover,
                      height: 80,
                      width: 80,
                    )),
              )
            : Container(
                padding: const EdgeInsets.only(left: 8),
                child: Icon(
                  Icons.add_a_photo_outlined,
                  size: 60.0,
                ),
              ),
        Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Text(
            titleImg ?? "(Title)",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Spacer(),
        Container(
          padding: const EdgeInsets.only(right: 8),
          child: ElevatedButton(
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white), shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0), side: BorderSide(color: Color(0xFF3c8187))))),
              // TextButton.styleFrom(backgroundColor: bPrimaryColor),
              onPressed: () async {
                await getImage();
              },
              child: Text(
                "Ambil Foto",
                style: TextStyle(color: Color(0xFF3c8187), fontWeight: FontWeight.bold),
              )),
        )
      ],
    );
  }
}

class PedagangWidget extends StatelessWidget {
  final String? title;
  final String? hint;

  PedagangWidget({this.title, this.hint});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 12,
            left: 8,
          ),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              title ?? "(Unnamed)",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          child: TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(hintText: hint ?? "(Unnamed)"),
          ),
        )
      ],
    );
  }
}

class Pedagang2Widget extends StatelessWidget {
  final String? title2;
  final String? hint2;

  Pedagang2Widget({this.title2, this.hint2});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 12,
            left: 8,
          ),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              title2 ?? "(Unnamed)",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
          child: TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(hintText: hint2 ?? "(Unnamed)", suffixIcon: Icon(Icons.keyboard_arrow_down)),
          ),
        )
      ],
    );

  }
}
