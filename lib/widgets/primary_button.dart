import 'package:flutter/material.dart';

import '../constant.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton(
      {Key? key, required this.buttontxt, required this.onPressed})
      : super(key: key);
  final String buttontxt;
  final onPressed;


  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
        width: double.infinity,
        child: ElevatedButton(
          child: Container(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Text(
                buttontxt,
                style: TextStyle(fontSize: 20),
              )),
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            primary: bPrimaryColor,
            onPrimary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
      ),
    );
  }
}
