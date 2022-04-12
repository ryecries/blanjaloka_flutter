import 'package:blanjaloka_flutter/constant.dart';
import 'package:flutter/material.dart';

class LabeledRadio extends StatelessWidget {
  const LabeledRadio({
    Key? key,
    required this.label,
    required this.padding,
    required this.groupValue,
    required this.value,
    required this.onChanged,
    required this.img,
  }) : super(key: key);

  final String img;
  final String label;
  final EdgeInsets padding;
  final int groupValue;
  final int value;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20, 5, 20, 5),
      decoration: BoxDecoration(
          border: Border.all(width: 0.2),
          borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        splashColor: bPrimaryColor,
        borderRadius: BorderRadius.circular(10),
        onTap: () {
          if (value != groupValue) {
            onChanged(value);
          }
        },
        child: Padding(
          padding: padding,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                img,
                height: 50,
                width: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(label),
              ),
              Spacer(),
              Radio<int>(
                activeColor: bPrimaryColor,
                groupValue: groupValue,
                value: value,
                onChanged: (newValue) {
                  onChanged(newValue!);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
