import 'package:flutter/material.dart';

class MyTitleText extends StatelessWidget {
  String title;
  Color color;
  TextAlign? textAlign;
  double? fontSize;
  TextDirection? textDirection;
  FontWeight? fontWeight;

  MyTitleText({
    required this.title,
    required this.color,
    this.textAlign,
    this.fontSize,
    this.textDirection,
    this.fontWeight
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        // overflow: TextOverflow.visible
      ),
      textDirection: textDirection,
      textAlign: textAlign,
    );
  }
}
