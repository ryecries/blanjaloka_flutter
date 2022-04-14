import 'package:blanjaloka_flutter/constant.dart';
import 'package:flutter/material.dart';

class CardRadio extends StatelessWidget {
  const CardRadio({
    Key? key,
    this.bestChoose,
    required this.harga,
    required this.desc,
    required this.label,
    required this.padding,
    required this.groupValue,
    required this.value,
    required this.onChanged,
    required this.borderActive,
  }) : super(key: key);

  final Color borderActive;
  final String label;
  final String? bestChoose;
  final String desc;
  final String harga;
  final EdgeInsets padding;
  final int groupValue;
  final int value;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    final colorBest = bestChoose == '' ? Colors.white : Color(0xFFebf5f6);
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          border: Border.all(
              width: borderActive == bPrimaryColor ? 1.5 : 0.2,
              color: borderActive),
          borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        splashColor: bPrimaryColor,
        borderRadius: BorderRadius.circular(10),
        onTap: () {
          if (value != groupValue) {
            onChanged(value);
          }
        },
        child: Column(
          children: [
            Row(
              children: [
                Radio<int>(
                  activeColor: bPrimaryColor,
                  groupValue: groupValue,
                  value: value,
                  onChanged: (newValue) {
                    onChanged(newValue!);
                  },
                ),
                Text(label,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: colorBest,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text(
                    bestChoose!,
                    style: TextStyle(
        color: bPrimaryColor, fontSize: 10, fontWeight: FontWeight.w600),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 48, bottom: 10),
              child: Text(desc),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Divider(
                height: 10,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: const EdgeInsets.only(right: 20, bottom: 10, top: 10),
                child: Text(
                  harga,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: bPrimaryColor),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
