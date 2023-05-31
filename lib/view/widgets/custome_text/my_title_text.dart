import 'package:flutter/material.dart';

class MyTitleText extends StatelessWidget {

  String title;
  Color color;
  TextAlign? textAlign;
  double fontSize;
  MyTitleText({required this.title,required this.color,this.textAlign,required,required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return  Text(
      title,
    style: TextStyle(
    color: color,
    fontSize: fontSize,
    fontWeight: FontWeight.bold,
    ),
      textAlign: textAlign,
    );
  }
}
