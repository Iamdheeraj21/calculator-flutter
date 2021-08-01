import 'package:flutter/material.dart';

class cal_button extends StatelessWidget {
  final String text;
  final int fillColor;
  final int textColor;
  final double textSize;
  const cal_button({
    Key? key,
    required this.text,
    required this.fillColor,
    this.textColor = 0xFFFFFFFF,
    this.textSize = 24,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 65,
      height: 65,
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        child: Text(
          text,
          style: TextStyle(fontSize: textSize),
        ),
        onPressed: () {},
        color: fillColor != null ? Color(fillColor) : null,
        textColor: Color(textColor),
      ),
    );
  }
}
