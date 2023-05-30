import 'package:flutter/material.dart';

class MyTitleText extends StatelessWidget {

  String title;
  Color color;
  TextAlign? textAlign;
  MyTitleText({required this.title,required this.color,this.textAlign});

  @override
  Widget build(BuildContext context) {
    return  Text(
      title,
    style: TextStyle(
    color: color,
    fontSize: 17,
    fontWeight: FontWeight.bold,
    ),
      textAlign: textAlign,
    );
  }
}
